/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

class ZigZag extends Action {

  @override final level = LevelData.A2;
  ZigZag(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var move = 'Stand';
    if (d.data.leader && name.matches('zigz[ai]g'.ri))
      move = 'Quarter Right';
    if (d.data.leader && name.matches('zagz[ai]g'.ri))
      move = 'Quarter Left';
    if (d.data.trailer && name.matches('z[ai]gzig'.r))
      move = 'Quarter Right';
    if (d.data.trailer && name.matches('z[ai]gzag'.r))
      move = 'Quarter Left';
    return TamUtils.getMove(move);
  }

}