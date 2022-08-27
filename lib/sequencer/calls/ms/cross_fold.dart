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

class CrossFold extends Action {

  @override var level = LevelData.MS;
  @override var helplink = 'ms/fold';
  CrossFold() : super('Cross Fold');

  @override
  Future<void> perform(CallContext ctx) async {
    //  Centers and ends cannot both cross fold
    if (ctx.actives.any((d) => d.data.center) &&
        ctx.actives.any((d) => d.data.end))
      throw CallError('Centers and ends cannot both Cross Fold');
    for (var d in ctx.actives) {
      //  Must be in a 4-dancer wave or line
      if (!d.data.center && !d.data.end)
        throw CallError('General line required for Cross Fold');
      //  Center beaus and end belles fold left
      var isRight = d.data.beau ^ d.data.center;
      var m = (isRight) ? 'Fold Right' : 'Fold Left';
      var d2 = d.data.partner.throwIfNull(CallError('No partner for dancer $d'));
      var dist = d.distanceTo(d2);
      var dxscale = 0.75;

      //  The y-distance of Fold is 2.0, here we adjust that value
      //  for various formations.  The dyoffset value computed is
      //  subtracted from the default 2.0 to get the final y offset.
      var dyoffset = 0.0;
      if (ctx.isTidal() && d.data.end)
        dyoffset = -0.5;
      else if (ctx.isTidal() && d.data.center)
        dyoffset = 0.5;
      else if (d.data.end)
        dyoffset = 2.0 - dist*2;  // which wll generally be -2.0
      if (!isRight)
        dyoffset = -dyoffset;
      d.path = TamUtils.getMove(m,
          scale: [dxscale,1.0].v,
          skew: [0.0,dyoffset].v);

      //  Also set path for partner
      //  This is an adjustment to shift the dancers into a standard formation
      var m2 = 'Stand';
      if (d.isRightOf(d2))
        m2 = 'Dodge Right';
      else if (d.isLeftOf(d2))
        m2 = 'Dodge Left';
      var myScale = 0.25;
      if (ctx.isTidal())
        myScale = 0.25;
      else if (d2.data.end)
        myScale = 0.5;
      else if (d2.data.center)
        myScale = 0.0;
      d2.path = TamUtils.getMove(m2,
          scale: [1.0,dist*myScale].v);
    }
  }

}