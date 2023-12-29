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

//  This is a class for 3- or  4-dancer calls that don't have specific code
//  to deal with asymmetric formations.
//  Classes that inherit from this will generally not have their
//  own methods for performing calls with 6 or 8 dancers.
//  The formation is split and the call performed on each side.
abstract class SplitCall extends ActivesOnlyAction {

  SplitCall(super.name);

  @override
  void perform(CallContext ctx) {
    var splitAmount = ctx.dancers.length ~/ 2;
    if (ctx.dancers.length > 4) {
      try {
        ctx.applyCalls('Near $splitAmount $name While Far $splitAmount $name');
      } on CallError {
        try {
          ctx.applyCalls('Left $splitAmount $name While Right $splitAmount $name');
        } on CallError {
          throw FormationNotFoundError(name);
        }
      }
    } else
      super.perform(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    throw FormationNotFoundError(name);
  }

}