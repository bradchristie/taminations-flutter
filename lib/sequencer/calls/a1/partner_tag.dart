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

class PartnerTag extends Action {

  @override final level = LevelData.A1;
  @override var helplink = 'a1/partner_tag';
  PartnerTag() : super('Partner Tag');

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    //  Generally Partner Tag is with partner, but there can be exceptions
    final d2 = [d.data.partner, ctx.dancerToRight(d), ctx.dancerToLeft(d)]
    .where((it) => it != null && it.isActive).firstOrNull
     .throwIfNull(CallError('Dancer $d cannnot Partner Tag'));
    final dist = d.distanceTo(d2);
    if (d2.isRightOf(d))
      return LeadRight.scale(0.5,dist/2) +
             ExtendRight.scale(dist/2,0.5);
    else
      return QuarterLeft.skew(-0.5,dist/2) +
             ExtendRight.scale(dist/2,0.5);
  }

}