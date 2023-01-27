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

class Dosado extends Action {

  @override var helplink = 'b1/dosado';
  Dosado(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var d2 = ctx.dancerFacing(d) ??
        thrower(CallError('Dancer $d has no one to Dosado with.' ));
    var dist = d.distanceTo(d2!);
    var dir1 = 'Left' ;
    var dir2 = 'Right' ;
    if (name.toLowerCase().startsWith('left' )) {
      dir1 = 'Right' ;
      dir2 = 'Left' ;
    }
    return TamUtils.getMove('Extend $dir1' ).scale(dist/2.0,0.5).changeBeats(dist/2.0) +
        TamUtils.getMove('Extend $dir2' ).scale(1.0,0.5) +
        TamUtils.getMove('Retreat $dir2' ).scale(1.0,0.5) +
        TamUtils.getMove('Retreat $dir1' ).scale(1.0,0.5);
  }

}