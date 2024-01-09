/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

import 'package:taminations/dancer_model.dart';
import 'package:taminations/math/path.dart';
import 'package:taminations/sequencer/calls/coded_call.dart';

import '../call_context.dart';

class Action extends CodedCall {

  Action(String name) : super(name);

  @override
   void performCall(CallContext ctx) {
    perform(ctx);
    for (var d in ctx.dancers) {
      d.path.recalculate();
      d.animateToEnd();
    }
  }

  //  Default method to perform one call
  //  Pass the call on to each active dancer
  //  Then append the returned paths to each dancer
  //  While this does not have any calls, overrides might.
  void perform(CallContext ctx) {
    //  Get all the paths with performOne calls
    for (var d in ctx.actives) {
      var path = performOne(d, ctx);
      d.path += path;
    }
  }

  //  Default method for one dancer to perform one call
  //  Returns an empty path (the dancer just stands there)
  Path performOne(DancerModel d, CallContext ctx) => Path();

}