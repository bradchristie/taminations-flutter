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

class HalfTag extends Action {

  @override
  var level = LevelData.MS;
  HalfTag(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int i = 0]) async {
    var dir = name.startsWith("Left") ? "Left" : "";
    await ctx.applyCalls(["$dir Quarter Tag","Extend"]);
  }

}