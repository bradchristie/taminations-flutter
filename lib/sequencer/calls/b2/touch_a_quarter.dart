/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

class TouchAQuarter extends ActivesOnlyAction {

  @override
  var level = LevelData.B2;
  TouchAQuarter(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var d2 = ctx.dancerFacing(d);
    if (d2 == null)
      return ctx.dancerCannotPerform(d,name);
    return TamUtils.getMove('Extend Left',
      scale:[d.distanceTo(d2)/2.0,1.0].v,
        reflect: name.startsWith('Left')) +
    TamUtils.getMove('Hinge Right',
        reflect: name.startsWith('Left'));
  }

}