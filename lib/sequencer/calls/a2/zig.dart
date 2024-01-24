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

import '../../../moves.dart';
import '../common.dart';

//  This is for the one-word calls Zig and Zag
//  Zig-Zag etc are handled in another class
class Zig extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/zig_and_zag';
  Zig(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    if (ctx.dancers.none((d) => d.data.leader))
      throw CallError('No leaders in this formation');
    super.performCall(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var move = Stand;
    if (d.data.leader && name == 'Zig')
      move = QuarterRight;
    if (d.data.leader && name == 'Zag')
      move = QuarterLeft;
    return move;
  }

}