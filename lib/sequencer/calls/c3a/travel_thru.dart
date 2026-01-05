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

class TravelThru extends Action with CallWithParts, IsLeft {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 2;
  @override var help = '''Travel Thru is a 2-part call:
  1.  Pass Thru
  2.  As Couples Quarter Right''';
  @override var helplink = 'c3a/travel_thru';

  TravelThru(super.name);

  @override
  void performPart1(CallContext ctx) {
    ctx.applyCalls('$left Pass Thru');
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('As Couples Face $whichWay');
  }


}