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

import 'package:flutter/material.dart' as FM;
import 'package:provider/provider.dart' as PP;
import 'package:taminations/sequencer/sequencer_model.dart';

import '../color.dart';

class SequencerCallsFrame extends FM.StatefulWidget {
  @override
  _SequencerCallsFrameState createState() => _SequencerCallsFrameState();
}

class _SequencerCallsFrameState extends FM.State<SequencerCallsFrame> {

  FM.TextEditingController textFieldController;
  var focusNode = FM.FocusNode();

  void initState() {
    super.initState();
    textFieldController = FM.TextEditingController();
  }

  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  void _sendOneCall(SequencerModel model) {
    var value = textFieldController.value.text;
    setState(() {
      //  Process the call
      if (value.toLowerCase().trim() == "undo")
        model.undoLastCall();
      else if (value.toLowerCase().trim() == "reset")
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
  FM.Widget build(FM.BuildContext context) {
    return PP.Consumer<SequencerModel>(
       builder: (context, model, child) {
         return FM.Column(
           children: [
             FM.TextField(
               key: FM.Key("Sequencer Input"),
               autofocus: true,
               focusNode: focusNode,
               controller: textFieldController,
               decoration: FM.InputDecoration.collapsed(
                   hintText: "Enter calls"),
               enableSuggestions: false,
               style: FM.TextStyle(fontSize: 24),
               //  Code to run when user presses Enter
               onSubmitted: (value) {
                 _sendOneCall(model);
               },
             ),
             FM.Expanded(
                 child: FM.ListView.builder(
                   itemCount: model.callNames.length,
                   itemBuilder: itemBuilder,
                 )
             ),
          //   if (model.errorString.isNotEmpty)
               FM.Align(
                 alignment: FM.Alignment.centerLeft,
                 child: FM.Text(model.errorString,
                     key: FM.Key("Error text"),
                     style: FM.TextStyle(color:Color.RED,fontSize:30)),
               ),
             //  For testing - a very tiny spot to tap
             //  since the tester cannot simulate keyboard Enter
               FM.Container(
                 key: FM.Key("Submit Call"),
                 child: FM.GestureDetector(
                   child: FM.Text(" ",style: FM.TextStyle(fontSize:1),),
                   onTap: () { _sendOneCall(model); },
                 ),
               ),
           ],
         );
       },
    );
  }

  //  Builder for one item of the list
  FM.Widget itemBuilder(FM.BuildContext context, int index) {
    return PP.Consumer<SequencerModel>(
        builder: (context, model, child) {
          return FM.GestureDetector(
              onTap: () {},
              child: FM.Container(
                  decoration: FM.BoxDecoration(
                    //  Color the item according the the level
                      color: Color.WHITE, // TODO level color
                      border: FM.Border(
                          top: FM.BorderSide(width: 1, color: Color.BLACK))),
                  padding: FM.EdgeInsets.only(left: 20.0, top: 4, bottom: 4),
                  child: FM.Text(
                      model.callNames[index], style: FM.TextStyle(fontSize: 20))
              )
          );
        });
  }

}
