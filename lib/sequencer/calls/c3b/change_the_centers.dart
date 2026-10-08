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

//  Also handles Change the Wave
class ChangeTheCenters extends Action with CallWithParts, ActivesOnly {

  @override var level = LevelData.C3B;
  @override var numberOfParts = 4;
  @override var help = '''Change the Centers / Wave is a 4-part call
  1.  Step to a Wave if necessary, and Trade
  2.  Slip
  3.  Centers Cross Run
  4.  Slip (Change the Centers) or Swing (Change the Wave)''';
  @override var helplink = 'c3b/change_the_centers';

  ChangeTheCenters(super.name);

  @override
   void performPart1(CallContext ctx) {
    if (ctx.dancers.where((d) => !ctx.isInWave(d)).isNotEmpty) {
      try {
        ctx.applyCalls('Wave Dancers Nothing While Others Step to a Wave');
      } on CallError catch(_) { }
      ctx.analyze();
    }
    ctx.applyCalls('Trade');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls('Slip');
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.applyCalls('Centers Cross Run');
  }

  @override
   void performPart4(CallContext ctx) {
    if (name.contains('Centers'.ri))
      ctx.applyCalls('Slip');
    else
      ctx.applyCalls('Swing');
  }

}