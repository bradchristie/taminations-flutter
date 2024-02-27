/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

class CourtesyTurn extends Action {

  @override var help = 'At levels below Plus, Courtesy Turn is limited'
  ' to a boy turning a girl';
  @override var helplink = 'b1/courtesy_turn';

  CourtesyTurn(super.name);

  @override
  void performCall(CallContext ctx) {
    for (var d in ctx.actives) {
      if (d.gender == Gender.BOY && !d.data.beau ||
          d.gender == Gender.GIRL && !d.data.belle) {
        ctx.level = LevelData.PLUS;
      }
    }
    try {
      ctx.applyCalls('Wheel Around');
    } on CallError catch(e) {
      throw CallError(e.description.replaceAll('Wheel Around', 'Courtesy Turn'));
    }
  }

}