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

class Tag extends TaggingCall with IsLeft {

  Tag(super.name);

  @override
  void performTag(CallContext ctx) {
    ctx.applyCalls('$left Half Tag');
  }
}


class TagTheLine extends Action with IsLeft {

  @override var level = LevelData.MS;
  @override var help = '''[Left] [fraction] Tag the Line
Works with one or two Lines of 4.  A tidal formation is two Lines of 4.
For larger lines, use
Line of (6 or 8) [Left] [Half] Tag the Line
''';
  @override var helplink = 'ms/tag';

  TagTheLine(super.name);

  @override
   void performCall(CallContext ctx, [int i = 0]) {
    ctx.applyCalls('$left 34 Tag');
    ctx.contractPaths();
    ctx.applyCalls('extend');
  }

}

class BigLineTagTheLine extends Action {

  @override var level = LevelData.MS;
  @override var help = TagTheLine('').help;
  var isLeft;
  var _isHalfTag;

  static final Formation ColumnsOf3 =
  Formation('Columns of 3', dancers:[
      Dancer.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
      Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
      Dancer.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
  ]);


  BigLineTagTheLine(super.name) : isLeft=name.contains('Left');

  @override
  void performCall(CallContext ctx) {
    ctx.activesContext((ctx2) {
      _isHalfTag = norm.contains('12');
      final length = norm.contains('6') ? '6' : '8';
      if (length == '6' && ctx2.dancers.length > 6)
        ctx2.applyCalls('Wave of 6 $name');
      else {
        super.performCall(ctx2);
        if (ctx2.dancers.length == 66 && _isHalfTag) {
          ctx2.animateToEnd();
          var ctx3 = CallContext.fromFormation(ColumnsOf3);
          var mapping = ctx2.matchFormations(ctx3,sexy:false,fuzzy:true,rotate:180,
              handholds:false, maxError : 3.0, delta: 0.3, maxAngle: 0.5);
          if (mapping != null)
            ctx2.adjustToFormationMatch(mapping.match);
        }
      }
    });
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    Path p1, p2, p3;
    //  Compute first move - moving forward and turning left/right
    var skewAmount = _isHalfTag ? 1.0 : 0.5;
    if (isLeft) {
      if (d.isCenterRight)
        p1 = QuarterRight.skew(-skewAmount, 0);
      else
        p1 = QuarterLeft.skew(skewAmount, 0);
    } else {
      if (d.isCenterRight)
        p1 = QuarterRight.skew(skewAmount, 0);
      else
        p1 = QuarterLeft.skew(-skewAmount, 0);
    }
    //  Compute 2nd move - forward half or full tag amount
    var numOutside = d.isCenterRight
        ? ctx.dancersToLeft(d).length
        : ctx.dancersToRight(d).length;
    var howMuch = d.location.length + (_isHalfTag
        ? numOutside * 2 - ctx.dancers.length/2 + 1
        : numOutside);
    p2 = Forward.scale(howMuch,1.0).changeBeats(howMuch);
    //  Compute 3rd move - adjust to single column (full tag only)
    if (_isHalfTag)
      p3 = Path();
    else if (isLeft)
      p3 = ExtendLeft.scale(.5,.5);
    else
      p3 = ExtendRight.scale(.5,.5);
    //  Put it all together
    return p1 + p2 + p3;
  }

}