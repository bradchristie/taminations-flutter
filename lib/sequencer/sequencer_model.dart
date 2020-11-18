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
import 'package:taminations/dance_animation_painter.dart';
import 'package:taminations/sequencer/call_error.dart';
import '../extensions.dart';
import 'call_context.dart';

class SequencerModel extends FM.ChangeNotifier {

  List<String> callNames = [];
  List<double> callBeats = [];
  String startingFormation = "Static Square";  // TODO get from settings somehow
  String partString = "";
  String errorString = "";
  DanceAnimationPainter animation;


  void reset() {
    animation.doPause();
    callNames = [];
    callBeats = [];
    _startSequence();
    notifyListeners();
  }

  void loadOneCall(String call) {
    errorString = "";
    _interpretOneCall(_replaceAbbreviations(call)).whenComplete(() {
      //  TODO Highlight new call and start its animation
      notifyListeners();
    }).catchError((e) {
      if (e is CallError)
        errorString = e.toString();
      else
        throw e;
    });
  }

  void undoLastCall() {

  }

  Future<void> _interpretOneCall(String call) async {
    if (_isComment(call)) {
      callNames.add(call);
      callBeats.add(0.0);
      return Future<void>.value();
    }
    //  Remove any underscores, which are reserved for internal calls only
    call = call.replaceAll("_", "");
    //  Remove any [user annotations]
    call = call.replaceAll("\\[.*?\\]".r,"");
    var prevbeats = animation.totalBeats;
    var cctx = CallContext.fromDancers(animation.dancers);

    return cctx.interpretCall(call).whenComplete(() {
      cctx.performCall().whenComplete(() {
        cctx.checkForCollisions();
        cctx.extendPaths();
        //  Snap to a standard formation so subsequent calls will work
        //  But not if just one XML call, as it knows how it should end
        //  TODO  if (cctx.callstack.count() > 1 || cctx.callstack[0] is CodedCall)
        //  TODO  cctx.matchStandardFormation()
        if (cctx.isCollision())
          throw CallError("Unable to calculate valid animation.");
        cctx.appendToSource();
        // animation.recalculate()  ???
        var newbeats = animation.totalBeats;
        if (newbeats > prevbeats) {
          //  Call worked, add it to the list
          callNames.add(cctx.callname);
          callBeats.add(newbeats - prevbeats);
        }
      });
    });
  }

  //  Replace any abbreviations with their expanded equivalents
  //  and return the new string
  String _replaceAbbreviations(String text) {
    return text;  // TODO
  }

  bool _isComment(String text) =>
      text.trim().contains("[^\\[a-zA-Z0-9].*".r);

  void _startSequence() {
    _updateParts();
  }

  void _updateParts() {

  }


}