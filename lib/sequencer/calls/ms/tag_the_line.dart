/*

  Taminations Square Dance Animations
  Copyright (C) 2022 Brad Christie

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

class TagTheLine extends Action {

  @override var level = LevelData.MS;
  @override var help = '''[Left] [fraction] Tag the Line
Works with one or two Lines of 4.  A tidal formation is two Lines of 4.
For larger lines, use
Line of (6 or 8) [Left] [Half] Tag the Line
''';
  @override var helplink = 'ms/tag';
  TagTheLine(name) : super(name);

  @override
   void perform(CallContext ctx, [int i = 0]) {
    final left = name.startsWith('Left') ? 'Left' : '';
    ctx.applyCalls('$left 34tag');
    ctx.contractPaths();
    ctx.applyCalls('extend');
  }

}

class BigLineTagTheLine extends ActivesOnlyAction {

  @override var level = LevelData.MS;
  @override var help = TagTheLine('').help;
  var isLeft;

  BigLineTagTheLine(String name) : isLeft=name.contains('Left'), super(name) ;

  @override
  void perform(CallContext ctx) {
    final left = isLeft ? 'Left' : '';
    final length = norm.contains('6') ? '6' : '8';
    if (length == '6' && ctx.dancers.length > 6)
      ctx.applyCalls('Wave of 6 $name');
    else {
      super.perform(ctx);
      if (norm.contains('12'))
        ctx.applyCalls('_Finish Line of $length $left Half Tag');
      else
        ctx.applyCalls('_Finish Line of $length $left Tag the Line');
    }
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    if (isLeft) {
      if (d.isCenterRight)
        return TamUtils.getMove('Quarter Right', skew: [-0.5, 0.0].v);
      else
        return TamUtils.getMove('Quarter Left', skew: [0.5, 0.0].v);
    } else {
      if (d.isCenterRight)
        return TamUtils.getMove('Quarter Right', skew: [0.5, 0.0].v);
      else
        return TamUtils.getMove('Quarter Left', skew: [-0.5, 0.0].v);
    }
  }

}