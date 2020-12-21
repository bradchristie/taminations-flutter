/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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
import 'package:provider/provider.dart' as pp;

import '../button.dart';
import '../color.dart';
import 'sequencer_model.dart';

class SequencerCallsFrame extends fm.StatefulWidget {
  @override
  _SequencerCallsFrameState createState() => _SequencerCallsFrameState();
}

class _SequencerCallsFrameState extends fm.State<SequencerCallsFrame> {

  fm.TextEditingController textFieldController;
  var focusNode = fm.FocusNode();

  @override
  void initState() {
    super.initState();
    textFieldController = fm.TextEditingController();
    focusNode.requestFocus();
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  void _sendOneCall(SequencerModel model) {
    var value = textFieldController.value.text;
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

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<SequencerModel>(
       builder: (context, model, child) {
         return fm.Column(
           children: [
             fm.Container(
               color: Color.WHITE,
               child: fm.TextField(
                 key: fm.Key('Sequencer Input'),
                // autofocus: true,
                 focusNode: focusNode,
                 controller: textFieldController,
                 decoration: fm.InputDecoration(
                     hintText: 'Enter calls',
                     errorStyle:fm.TextStyle(fontSize: 20),
                     errorMaxLines: 10,
                     errorText: model.errorString.isEmpty ? null : model.errorString),
                 enableSuggestions: false,
                 style: fm.TextStyle(fontSize: 24),
                 //  Code to run when user presses Enter
                 onSubmitted: (value) {
                   _sendOneCall(model);
                 },
               ),
             ),
             fm.Expanded(
                 child: fm.ListView.builder(
                   itemCount: model.calls.length,
                   itemBuilder: itemBuilder,
                 )
             ),
          //   if (model.errorString.isNotEmpty)
             fm.Container(
               color: Color.FLOOR,
               child: fm.Row(
                 children: [
                   fm.Expanded(
                       child: Button('Undo',onPressed: () {
                         setState(() {
                           model.undoLastCall();
                         });
                       })
                   ),
                   fm.Expanded(
                       child: Button('Reset',onPressed: () {
                         setState(() {
                           model.reset();
                         });
                       })
                   ),
                   fm.Expanded(
                       child: Button('Copy',onPressed: () {
                         model.copy();
                         fm.ScaffoldMessenger.of(context).showSnackBar(fm.SnackBar(
                             backgroundColor: Color.BLUE,
                             duration: Duration(seconds: 2),
                             content: fm.Text('Calls Copied.',style: fm.TextStyle(fontSize: 20))
                         ));
                       })
                   ),
                   fm.Expanded(
                       child: Button('Paste',onPressed: () {
                         setState(() {
                           model.paste();
                         });
                       })
                   ),
                 ],
               ),
             ),
             //  For testing - a very tiny spot to tap
             //  since the tester cannot simulate keyboard Enter
               fm.Container(
                 key: fm.Key('Submit Call'),
                 child: fm.GestureDetector(
                   child: fm.Text(' ',style: fm.TextStyle(fontSize:1),),
                   onTap: () { _sendOneCall(model); },
                 ),
               ),
           ],
         );
       },
    );
  }

  //  Builder for one item of the list
  //  TODO combine with calls_frame into one widget class?
  fm.Widget itemBuilder(fm.BuildContext context, int index) {
    return pp.Consumer<SequencerModel>(
        builder: (context, model, child) {
          return fm.Container(
            decoration: fm.BoxDecoration(
                border: fm.Border(top: fm.BorderSide(width: 1, color: Color.BLACK))),
            child: fm.Material(
              color: model.calls[index].level?.color ?? Color.WHITE,
              //  TODO no tap on comments
              child: fm.InkWell(
                  highlightColor: model.calls[index].level?.color?.darker() ?? Color.WHITE,
                  onTap: () {
                    model.animateAtCall(index);
                  },
                  child: fm.Row(
                    children: [
                      fm.Flexible(
                        child: fm.Container(
                            alignment: fm.Alignment.centerLeft,
                            padding: fm.EdgeInsets.only(left: 20.0),
                            child: AutoSizeText(
                                model.calls[index].name, style: fm.TextStyle(fontSize: 20))
                        ),
                      ),
                      fm.Container(
                          alignment: fm.Alignment.topRight,
                          padding: fm.EdgeInsets.only(top:2,right:2),
                          child: fm.Text(model.calls[index].level?.name ?? '')
                      )
                    ],
                  )
              ),
            ),
          );
        });
  }

}
