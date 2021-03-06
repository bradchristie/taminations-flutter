/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart';
import 'package:provider/provider.dart' as pp;
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:speech_to_text/speech_to_text_provider.dart';

import '../button.dart';
import '../color.dart';
import '../common.dart';
import 'abbreviations_model.dart';
import 'sequencer_model.dart';

class SequenceFrame extends fm.StatefulWidget {
  @override
  _SequenceFrameState createState() => _SequenceFrameState();
}

class _SequenceFrameState extends fm.State<SequenceFrame> {

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<SequencerModel>(
         builder: (context, model, child) {

           return fm.LayoutBuilder(
             builder: (context,constraints) => fm.Column(
               children: [
                 SequencerEditLine(),
                 fm.Expanded(
                     child: ScrollablePositionedList.builder(
                       itemScrollController: itemScrollController,
                       itemPositionsListener: itemPositionsListener,
                       itemCount: model.calls.length,
                       itemBuilder: itemBuilder,
                     )
                 ),
                 fm.Text(model.errorString,key: fm.Key('Error text'),style: fm.TextStyle(fontSize: 0.01))
               ],
             ),
           );
         },
    );
  }

  //  Builder for one item of the list
  fm.Widget itemBuilder(fm.BuildContext context, int index) {
    return pp.Consumer<SequencerModel>(
        builder: (context, model, child) {
          final currentCall = model.currentCall;
          SequencerCall? call;
          try {
            call = model.calls[index];
          } on Error { call = null; };
          if (currentCall == index) {
            later(() {
              itemScrollController.scrollTo(
                  index: max(index-5, 0),
                  duration: Duration(seconds: 1),
                  curve: fm.Curves.easeInOutCubic);
            });
          }
          return fm.Container(
            decoration: fm.BoxDecoration(
                border: fm.Border(top: fm.BorderSide(width: 1, color: Color.BLACK))),
            child: fm.Material(
              color: (index == currentCall)
                  ? Color.YELLOW
                  : (call?.level?.color ?? Color.WHITE),
              child:
                  model.isComment(call?.name ?? '#')
                      ? _OneLine(call?.name ?? '','')
                      : fm.InkWell(
                      highlightColor: call?.level?.color.darker() ?? Color.WHITE,
                      onTap: () {
                        model.animateAtCall(index);
                      },
                      child: _OneLine(call?.name ?? '',call?.level?.name ?? ''))
            )
          );
        });
  }

}

class SequenceEditButtons extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Container(
      color: Color.FLOOR,
      child: fm.Row(
        children: [
          SequencerUndoButton(),
          SequencerResetButton(),
          SequencerCopyButton(),
          SequencerPasteButton()
        ]
      )
    );
  }
}


class SequencerEditLine extends fm.StatefulWidget {
  @override
  _SequencerEditLineState createState() => _SequencerEditLineState();
}

class _SequencerEditLineState extends fm.State<SequencerEditLine> {

  fm.TextEditingController textFieldController = fm.TextEditingController();
  var focusNode = fm.FocusNode();
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener = ItemPositionsListener.create();
  late SpeechToTextProvider speechProvider;

  @override
  void initState() {
    super.initState();
    later(() {
      if (!TamUtils.isTouchDevice())
        focusNode.requestFocus();
      //_checkFocus();
    });
    speechProvider = SpeechToTextProvider(SpeechToText());
  }

  @override
  void dispose() {
    textFieldController.dispose();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    later(() {
      _checkFocus();
    });
    super.didChangeDependencies();
  }

  void _checkFocus() {
    final virtualKeyboard = pp.Provider.of<VirtualKeyboardVisible>(context,listen: false);
    if (virtualKeyboard.isVisible) {
      focusNode.requestFocus();
    }
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return  pp.ChangeNotifierProvider.value(
        value: speechProvider,
        child: pp.Consumer4<SequencerModel,
            AbbreviationsModel,
            SpeechToTextProvider,
            VirtualKeyboardVisible>(
    builder: (context, model, abbreviations, speech, virtualKeyboard, child) {

      //  Process any results from the speech recognizer
      if (speech.hasResults) {
        //print('Looking for ${speech.lastResult.recognizedWords}');
        for (var i=0; i<speech.lastResult.alternates.length; i++) {
          //  Look through all the alternatives for one that has
          //  all square dance words
          var call = speech.lastResult.alternates[i].recognizedWords.replaceAll('\\W'.r, ' ');
          var words = call.split('\\s+'.r)
              .map((w) => TamUtils.normalizeCall(w).toLowerCase());
          if (words.every((word) => TamUtils.words.contains(word))) {
            //print('Found call in alternative $i: $call');
            later( () {
              _sendOneCall(model, abbreviations.replaceAbbreviations(call));
            });
            break;
          }
        }
        speech.listen(
            localeId: 'en_US',
            partialResults: false,
            soundLevel: true,
            listenFor: Duration(seconds: 5),
            pauseFor: Duration(seconds: 5)
        );
      }

      return fm.Container(
        color: Color.WHITE,
        padding: fm.EdgeInsets.only(left: 10),
        child: fm.Row(
          children: [

            //   Accept keyboard input if web site
            //  or if user has tapped box on a device
            if (virtualKeyboard.isVisible || !TamUtils.isTouchDevice())
              fm.Expanded(
                child: fm.TextField(
                  key: fm.Key('Sequencer Input'),
                  focusNode: focusNode,
                  controller: textFieldController,
                  decoration: fm.InputDecoration(
                      hintText: 'Enter calls',
                      errorStyle: fm.TextStyle(fontSize: 20),
                      errorMaxLines: 10,
                      errorText: model.errorString.isEmpty ? null : model.errorString),
                  enableSuggestions: false,
                  style: fm.TextStyle(fontSize: 24),
                  //  Code to run when user presses Enter
                  onSubmitted: (value) {
                    _sendOneCall(model, abbreviations.replaceAbbreviations(value));
                  },
                ),
              )

            //  Touch device - don't show keyboard until user
            //  taps the input line
            else
              fm.Expanded(
                  child:fm.Material(
                    color: Color.WHITE,
                    child: fm.InkWell(
                      key: fm.ValueKey('Tap to start Sequence'),
                      child: fm.Text('Tap mic or this space',
                          style: fm.TextStyle(fontSize: 20)),
                      onTap: () {
                        setState(() {
                          virtualKeyboard.isVisible = true;
                          focusNode.requestFocus();
                        });
                      },
                    ),
                  )
              ),

            //  Mic icon for touch devices to do voice input
            if (TamUtils.isTouchDevice())
              fm.TextButton(child: fm.Icon(
                  fm.Icons.mic,
                  color: speechProvider.isListening ? Color.RED : Color.BLACK,
                  size: 32
              ),
                  onPressed: () {
                    speechProvider.initialize().whenComplete(() {
                      if (speechProvider.isAvailable) {
                        setState(() {
                          speechProvider.listen(
                              localeId: 'en_US',
                              partialResults: false,
                              listenFor: Duration(seconds: 5),
                              pauseFor: Duration(seconds: 5)
                          );
                        });
                      }
                    } );
                  }
              ),
            //  For testing - a very tiny spot to tap
            //  since the tester cannot simulate keyboard Enter
            //  Will also use this to pass errors back to the tester
            fm.Container(
              key: fm.Key('Submit Call'),
              child: fm.GestureDetector(
                //  Tester seems to be unable to fetch text if it's a blank string
                //  so add a space
                child: fm.Text(model.errorString.isEmpty ? ' ' : model.errorString[0],
                    key:fm.ValueKey('Test Error Text'),
                    style: fm.TextStyle(color: Color.WHITE, fontSize:1)),
                onTap: () {
                  _sendOneCall(model,
                      abbreviations.replaceAbbreviations(textFieldController.value.text));
                },
              ),
            ),
          ],
        ),
      );
    }
        )
    );
  }

  void _sendOneCall(SequencerModel model, String value) {
    setState(() {
      //  Process the call
      if (value.toLowerCase().trim() == 'undo')
        model.undoLastCall();
      else if (value.toLowerCase().trim() == 'reset')
        model.reset();
      else
        model.loadOneCall(value);
      //  Erase it from the the text field
      textFieldController.clear();
      //  And get the focus back for the next call
      focusNode.requestFocus();
    });
  }

}




class SequencerUndoButton extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    final model = pp.Provider.of<SequencerModel>(context,listen: false);
    return fm.Expanded(
        child: Button('Undo',onPressed: () {
          model.undoLastCall();
        })
    );
  }
}


class SequencerResetButton extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    final model = pp.Provider.of<SequencerModel>(context,listen: false);
    return fm.Expanded(
        child: Button('Reset',onPressed: () {
          model.reset();
        })
    );
  }
}

class SequencerCopyButton extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    final model = pp.Provider.of<SequencerModel>(context,listen: false);
    return fm.Expanded(
        child: Button('Copy',onPressed: () {
          model.copy();
          fm.ScaffoldMessenger.of(context).showSnackBar(fm.SnackBar(
              backgroundColor: Color.BLUE,
              duration: Duration(seconds: 2),
              content: fm.Text('Calls Copied.',style: fm.TextStyle(fontSize: 20))
          ));
        })
    );
  }
}

class SequencerPasteButton extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    final model = pp.Provider.of<SequencerModel>(context,listen: false);
    return fm.Expanded(
        child: Button('Paste',onPressed: () {
            model.paste();
        })
    );
  }
}

class _OneLine extends fm.StatelessWidget {
  final String name;
  final String level;
  _OneLine(this.name,[this.level='']);

  @override
  fm.Widget build(fm.BuildContext context) => fm.Row(
    children: [
      fm.Flexible(
        child: fm.Container(
            alignment: fm.Alignment.centerLeft,
            padding: fm.EdgeInsets.only(left: 20.0),
            child: AutoSizeText(name, style: fm.TextStyle(fontSize: 20))
        ),
      ),
      fm.Container(
          alignment: fm.Alignment.topRight,
          padding: fm.EdgeInsets.only(top:2,right:2),
          child: fm.Text(level)
      )
    ],
  );
}
