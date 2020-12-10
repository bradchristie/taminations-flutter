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

class Loop extends Action {

  @override final level = LevelData.C2;
  Loop(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final dir = when([
      { ()=>name.startsWith('Left') : 'Left' },
      { ()=>name.startsWith('Right') : 'Right' },
      { ()=>name.startsWith('In') : d.isCenterLeft ? 'Left' : 'Right' },
      { ()=>name.startsWith('Out') : d.isCenterLeft ? 'Right' : 'Left' }
    ]);
    final amount = name.last.d;
    return TamUtils.getMove('Run $dir',scale:[1.0,amount].v);
  }

}