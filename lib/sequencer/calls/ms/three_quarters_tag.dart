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

class ThreeQuartersTag extends Action with IsLeft {

  @override var level = LevelData.MS;
  @override var helplink = 'ms/fraction_tag';
  ThreeQuartersTag(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    //  All the 4-dancer formations are in Taminations
    if (ctx.actives.length < 8 && !ctx.isAsym()) {
      ctx.adjustToFormation(Formation('Two-Faced Line RH'),rotate: 90, maxError: 6.1);
      print(ctx.dancers.show());
      ctx.applyCalls('$left 3/4 Tag the Line');
    }
    else if (ctx.isTidal())
      ctx.applyCalls('$left Quarter Tag','Extend','Extend');
    else if (!ctx.isLines())
      throw CallError('Dancers must be in lines');
    else if (isLeft)
      ctx.applyCalls('Face In','Centers Step to a Left-Hand Wave','Extend','Extend');
    else if (ctx.isAsym())
      ctx.applyCalls('Face In','Centers Step to a Wave','Extend','Extend');
    else
      super.performCall(ctx);
  }

  @override
  Path performOne(DancerModel d, CallContext ctx) {
    var d2 = (ctx.dancerInBack(d) ?? ctx.dancerInFront(d))
        .throwIfNull(CallError('Error calculating movement for dancer $d'));
    var dist = d.distanceTo(d2)/2.0;
    var tagtype = ctx.dancersToRight(d).length + (d.isFacingOut ? 4  : 0);
    switch (tagtype) {
      case 0 : return QuarterLeft.skew(dist-3, 1.0) + Forward_2;
      case 1 : return QuarterLeft.skew(dist-2,1.0) + Forward +
          ExtendRight.scale(2.0,1.0).changeBeats(2.0);
      case 2 : return LeadRight.skew(dist-2,0.0) + Forward_3;
      case 3 : return LeadRight.skew(dist-2,0.0) + Forward_2;
      case 4 : return QuarterLeft.skew(1-dist,1.0) + Forward_2;
      case 5 : return QuarterLeft.skew(1-dist,1.0) + Forward_3;
      case 6 : return LeadRight.skew(2-dist,0.0) + Forward +
          ExtendRight.scale(2.0,2.0).changeBeats(2.0);
      case 7 : return LeadRight.skew(2-dist,0.0) + Forward_2;
      default: return Path();     // should never happen
    }
  }

}