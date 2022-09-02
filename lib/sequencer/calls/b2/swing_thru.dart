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

class SwingThru extends ActivesOnlyAction with CallWithParts {

  @override int numberOfParts = 2;
  @override LevelData get level => isGrand ? LevelData.PLUS : LevelData.B2;
  @override var help = '''Swing Thru is a 2-part call:
  1.  Trade with the right hand
  2.  Trade with the left hand''';
  @override var helplink = 'b2/swing_thru';
  bool isGrand;
  bool isLeft;
  List<Dancer>? part1dancers;
  SwingThru(String name) :
        isGrand=name.contains('Grand'),
        isLeft=name.contains('Left'),
        super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    if (ctx.dancers.where((d) => !ctx.isInWave(d)).isNotEmpty) {
      try {
        await ctx.applyCalls('Wave Dancers Nothing While Others Step to a Wave');
      } on CallError catch(_) { }
      ctx.analyze();
    }
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft, isGrand: isGrand),
            (ctx2) async {
              if (ctx2.actives.isEmpty)
                throw CallError('Noone to do part 1 of Swing Thru');
              part1dancers = ctx2.actives;
              await ctx2.applyCalls('Trade');
    });
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.subContext(ctx.dancersHoldingSameHands(isRight: isLeft, isGrand: isGrand),
            (ctx2) async {
              if (ctx2.actives.isEmpty)
                throw CallError('Noone to do part 2 of Swing Thru');
              if (part1dancers != null && !part1dancers!.any((d) => ctx2.actives.contains(d)))
                throw CallError('No dancers doing both parts of Swing Thru');
              await ctx2.applyCalls('Trade');
    });
  }


}