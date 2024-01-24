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

import '../common.dart';
import '../common/select_location.dart';

//  This is a class for 3- or  4-dancer calls that don't have specific code
//  to deal with asymmetric formations.
//  Classes that inherit from this will generally not have their
//  own methods for performing calls with 6 or 8 dancers.
//  The formation is split and the call performed on each side.
abstract class SplitCall extends Action {

  SplitCall(super.name);

  @override
  void performCall(CallContext ctx) {
    var splitAmount = ctx.dancers.length ~/ 2;
    if (ctx.dancers.length > 4) {
      try {
        //  First try splitting on the horizontal axis into
        //  Near and Far groups.
        //  Use a subcontext so if this fails it doesn't mess up our context
        ctx.subContext(ctx.dancers, (ctx2) {
          ctx2.selectContext(SelectLocation('Near $splitAmount'), (ctx3) {
            ctx3.applyCalls(name);
          });
          ctx2.selectContext(SelectLocation('Far $splitAmount'), (ctx3) {
            ctx3.applyCalls(name);
          });
        });
      } on CallError {
        //  That didn't work, so try splitting on the vertical axis
        //  into Left and Right groups
        try {
          ctx.subContext(ctx.dancers, (ctx2) {
            ctx2.selectContext(SelectLocation('Left $splitAmount'), (ctx3) {
              ctx3.applyCalls(name);
            });
            ctx2.selectContext(SelectLocation('Right $splitAmount'), (ctx3) {
              ctx3.applyCalls(name);
            });
          });
        } on CallError {
          throw FormationNotFoundError(name);
        }
      }
    } else
      super.performCall(ctx);
  }

  //  Derived classes need to implement this method
  //  working with the dancers from each split side
  @override
  Path performOne(DancerModel d, CallContext ctx) {
    throw FormationNotFoundError(name);
  }

}