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

import '../common.dart';

class QuarterTag extends Action with ActivesOnly {

  @override
  var level = LevelData.MS;
  @override var helplink = 'ms/fraction_tag';
  QuarterTag(String name) : super(name);

  bool _centersHoldLeftHands(CallContext ctx) =>
      ctx.actives.where((d) => d.data.center)
          .every((d) => ctx.dancerToLeft(d)?.data.center ?? false);

  bool _centersHoldRightHands(CallContext ctx) =>
      ctx.actives.where((d) => d.data.center)
          .every((d) => ctx.dancerToRight(d)?.data.center ?? false);

  @override
   void perform(CallContext ctx, [int i = 0]) {
    var dir = name.startsWith('Left') ? 'Left' : '';
    if (ctx.isTidal())
      ctx.applyCalls('Center 4 Face Out While Outer 4 Face In','Facing Dancers $dir Touch');
    else {
      if (_centersHoldLeftHands(ctx) && dir == '' ||
          _centersHoldRightHands(ctx) && dir == 'Left')
        ctx.applyCalls('Center 4 Hinge and Spread While Ends Face In');
      else
        ctx.applyCalls('Centers $dir Hinge While Ends Face In');
    }
  }

}

