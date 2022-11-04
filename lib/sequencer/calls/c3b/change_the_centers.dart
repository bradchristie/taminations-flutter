/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../common.dart';

//  Also handles Change the Wave
class ChangeTheCenters extends ActivesOnlyAction with CallWithParts {

  @override var level = LevelData.C3B;
  @override var numberOfParts = 4;
  @override var help = '''Change the Centers / Wave is a 4-part call
  1.  Step to a Wave if necessary, and Trade
  2.  Slip
  3.  Centers Cross Run
  4.  Slip (Change the Centers) or Swing (Change the Wave)''';
  @override var helplink = 'c3b/change_the_centers';
  ChangeTheCenters(String name) : super(name);

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