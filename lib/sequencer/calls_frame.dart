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

import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;
import 'package:taminations/sequencer/sequencer_model.dart';

import '../color.dart';

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
             fm.TextField(
               key: fm.Key('Sequencer Input'),
              // autofocus: true,
               focusNode: focusNode,
               controller: textFieldController,
               decoration: fm.InputDecoration.collapsed(
                   hintText: 'Enter calls'),
               enableSuggestions: false,
               style: fm.TextStyle(fontSize: 24),
               //  Code to run when user presses Enter
               onSubmitted: (value) {
                 _sendOneCall(model);
               },
             ),
             fm.Expanded(
                 child: fm.ListView.builder(
                   itemCount: model.callNames.length,
                   itemBuilder: itemBuilder,
                 )
             ),
          //   if (model.errorString.isNotEmpty)
               fm.Align(
                 alignment: fm.Alignment.centerLeft,
                 child: fm.Text(model.errorString,
                     key: fm.Key('Error text'),
                     style: fm.TextStyle(color:Color.RED,fontSize:30)),
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
  fm.Widget itemBuilder(fm.BuildContext context, int index) {
    return pp.Consumer<SequencerModel>(
        builder: (context, model, child) {
          return fm.GestureDetector(
              onTap: () {},
              child: fm.Container(
                  decoration: fm.BoxDecoration(
                    //  Color the item according the the level
                      color: Color.WHITE, // TODO level color
                      border: fm.Border(
                          top: fm.BorderSide(width: 1, color: Color.BLACK))),
                  padding: fm.EdgeInsets.only(left: 20.0, top: 4, bottom: 4),
                  child: fm.Text(
                      model.callNames[index], style: fm.TextStyle(fontSize: 20))
              )
          );
        });
  }

}
