/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

//  This is a class for 4-dancer calls that don't have specific code
//  to deal with asymmetric formations.
//  Classes that inherit from this will generally not have their
//  own methods for performing calls.
//  The formation is split and the call performed on each side.
abstract class FourDancerCall extends ActivesOnlyAction {

  FourDancerCall(super.name);

  @override
  void perform(CallContext ctx) {
    if (ctx.dancers.length == 8) {
      try {
        ctx.applyCalls('Near 4 $name While Far 4 $name');
      } on CallError {
        try {
          ctx.applyCalls('Left 4 $name While Right 4 $name');
        } on CallError {
          throw FormationNotFoundError(name);
        }
      }
    } else
      super.perform(ctx);
      //throw FormationNotFoundError(name);
  }

}