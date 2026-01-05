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

class PartnerTag extends Action with CallWithParts, ActivesOnly {

  @override int numberOfParts = 2;
  @override final level = LevelData.A1;
  @override var helplink = 'a1/partner_tag';
  @override var help = '''Partner Tag is a two-part call:
  1.  Quarter In
  2.  Pass Thru''';
  PartnerTag(super.name);


  @override
  void performPart1(CallContext ctx) {
    ctx.applyCalls('Quarter In');
  }

  @override
  void performPart2(CallContext ctx) {
    ctx.applyCalls('Pass Thru');
  }

}