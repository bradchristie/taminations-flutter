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

import '../../../moves.g.dart';
import '../common.dart';

class Dosado extends Action {

  @override var helplink = 'b1/dosado';
  Dosado(String name) : super(name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var d2 = ctx.dancerFacing(d) ??
        thrower(CallError('Dancer $d has no one to Dosado with.' ));
    var dist = d.distanceTo(d2!);
    var moves = name.toLowerCase().startsWith('left' )
        ? [ ExtendLeft, ExtendRight, RetreatRight, RetreatLeft ]
        : [ ExtendRight, ExtendLeft, RetreatLeft, RetreatRight ];
    return moves[0].scale(dist/2.0,0.5).changeBeats(dist/2.0) +
           moves[1].scale(1.0,0.5) +
           moves[2].scale(1.0,0.5) +
           moves[3].scale(1.0,0.5);
  }

}