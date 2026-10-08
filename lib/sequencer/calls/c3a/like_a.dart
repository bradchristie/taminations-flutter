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

import '../common.dart';

class Like_a extends Action {

  @override final level = LevelData.C3A;
  @override String help = '''Like a <call> performs the last part of <call>.
  Common uses are Like a Couple Up, Like a Recoil, and Like a Travel Thru.''';

  Like_a(super.name);

  @override
  void performCall(CallContext ctx) {
    var call = ctx.findImplementor<CallWithParts>(startFrom: this)
        ?? thrower<CallWithParts>(CallError('Unable to find call with parts for Like a'));
    for (var part=1; part<=call.numberOfParts-1; part++) {
      call.skipPart(part);
    }
  }

}