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

class GrandSquare extends Action {

  @override var help = '''You can do a fraction of Grand Square with
  Grand Square <nn> Steps.  One common use is 6 Steps, which gives normal lines.''';
  @override var helplink = 'b1/grand_square';
  GrandSquare(super.name);

  @override void performCall(CallContext ctx) {
    if (norm.startsWith('headface'.ri))
      ctx.applyCalls('Heads Face In');
    else if (norm.startsWith('sideface'.ri))
      ctx.applyCalls('Sides Face In');
    var startSteps = ctx.dancers.first.beats;
    ctx.applyCalls('Grand Square');
    if (name.contains('Steps')) {
      var steps = name.replaceFirst('((Heads?|Sides?) Face )?Grand Square'.ri, '')
          .replaceFirst('Steps'.ri,'').trim().d;
      for (var d in ctx.dancers) {
        d.path = d.path.clip(startSteps + steps);
      }
    }
  }

}