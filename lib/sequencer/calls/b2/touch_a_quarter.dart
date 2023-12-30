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

class TouchAQuarter extends Action with ActivesOnly {

  @override var level = LevelData.B2;
  @override var help = 'The sequencer also accepts Touch 1/2 and Touch 3/4';
  @override var helplink = 'b2/touch_a_quarter';
  TouchAQuarter(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    var left = name.startsWith('Left') ? 'Left-Hand' : '';
    ctx.applyCalls('Step to a $left Wave');
    if (norm.endsWith('34'))
      ctx.applyCalls('Cast Off 3/4');
    else if (norm.endsWith('12'))
      ctx.applyCalls('Swing');
    else
      ctx.applyCalls('Hinge');
  }

}