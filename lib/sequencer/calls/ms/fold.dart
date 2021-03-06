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

class Fold extends Action {

  @override
  var level = LevelData.MS;
  Fold() : super('Fold');

  //  We need to work with all the dancers, not just actives
  //  because partners of the folders need to adjust
  //  so we get a standard formation that can be used for more calls
  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    for (var d in ctx.actives) {
      //  Find dancer to fold in front of
      //  Usually it's the partner
      var d2 = d.data.partner.throwIfNull(CallError('Dancer ${d.number} has nobody to Fold in front'));
      if (d2.data.active || d2.data.partner != d)
        throw CallError('Dancer ${d.number} has nobody to Fold in front');
      var m = d2.isRightOf(d) ? 'Fold Right' : 'Fold Left';
      var dist = d.distanceTo(d2);
      var dxscale = 0.75;
      var dyoffset = 1.0;
      if (ctx.isTidal())
        dyoffset = 1.5;
      else if (d.data.end)
        dyoffset = 2.0 - dist;
      else if (d.data.center)
        dyoffset = 2.0;
      if (d2.isLeftOf(d))
        dyoffset = -dyoffset;
      d.path = TamUtils.getMove(m,
          scale:[dxscale,1.0].v,
          skew:[0.0,dyoffset].v);

      //  Also set path for partner
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
          scale:[1.0,dist*myScale].v);
    }
  }

}