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

class Roll extends Action {

  @override
  var level = LevelData.PLUS;
  Roll(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    if (ctx.callstack.indexOf(this) <= 0)
      throw CallError('"and Roll" must follow another call.');
    await super.perform(ctx);
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    final roll = ctx.roll(d);
    final move = {
      Rolling.LEFT : 'Quarter Left',
      Rolling.RIGHT : 'Quarter Right',
      Rolling.NONE : 'Stand'
    }[roll]!;
    return TamUtils.getMove(move);
  }

}