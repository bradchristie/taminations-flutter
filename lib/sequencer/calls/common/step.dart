/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

class Step extends Action {

  @override LevelData get level => name.contains('Press')
      ? LevelData.C1 : LevelData.B1;
  @override String get help => '$name moves dancers ahead one position.';
  @override String get helplink =>
      name.contains('Press') ? 'c1/press' : super.helplink;

  Step(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var dist = ctx.isLines() && d.data.trailer
        ? d.distanceTo(ctx.dancerInFront(d)!) : 2.0;
    return TamUtils.getMove('Forward')..changeBeats(2.0)..scale(dist, 1.0);
  }

}