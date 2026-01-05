/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

class HalfSashay extends Action with IsReverse {

  @override var help = 'Any couple can Half Sashay.'
      ' If you want the beau to go in front of the belle, use'
      ' Reverse Half Sashay.';
  @override var helplink = 'b1/sashay';

  HalfSashay(super.name);

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  Figure out who we sashay with
    DancerModel d2;
    if (ctx.actives.contains(d.data.partner) && (d.data.beau || d.data.belle))
      d2 = d.data.partner!;
    else if (ctx.dancerToRight(d)?.data.active ?? false)
      d2 = ctx.dancerToRight(d)!;
    else if (ctx.dancerToLeft(d)?.data.active ?? false)
      d2 = ctx.dancerToLeft(d)!;
    else
      throw CallError('Dancer $d has nobody to Sashay with' );
    var move = BackSashayRight;
    if (isReverse)
      move = d2.isLeftOf(d) ? BackSashayLeft  : SashayRight;
    else if (d2.isLeftOf(d))
      move = SashayLeft;
    return move.scale(1,d.distanceTo(d2)/2);
  }

}