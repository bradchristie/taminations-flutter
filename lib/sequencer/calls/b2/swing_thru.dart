/*
 * *     Copyright 2024 Brad Christie
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

class SwingThru extends Action with ActivesOnly, CallWithParts {

  @override int numberOfParts = 2;
  @override LevelData get level => isGrand ? LevelData.PLUS : LevelData.B2;
  @override var help = '''Swing Thru is a 2-part call:
  1.  Trade with the right hand
  2.  Trade with the left hand''';
  @override var helplink = 'b2/swing_thru';
  bool isGrand;
  bool isLeft;
  SwingThru(String name) :
        isGrand=name.contains('Grand'),
        isLeft=name.contains('Left'),
        super(name);

  List<DancerModel> _dancersWhoCanDoBothParts(CallContext ctx) {
    var whoCan = <DancerModel>[];
    for (var d in ctx.dancers) {
      var dl = ctx.dancerToRight(d);
      var dr = ctx.dancerToLeft(d);
      if (dl != null && ctx.isInWave(d,dl) &&
          dr != null && ctx.isInWave(d,dr))
        whoCan.add(d);
    }
    return whoCan;
  }

  @override
   void performPart1(CallContext ctx) {
    ctx.applyFacingCouplesRule();
    var canDoBoth = _dancersWhoCanDoBothParts(ctx);
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: !isLeft, isGrand: isGrand),(ctx2) {
      for (var d in ctx2.actives.copy()) {
        if (!canDoBoth.contains(d)) {
          var d2 = isLeft
              ? ctx.dancerToLeft(d)
              : ctx.dancerToRight(d);
          if (!canDoBoth.contains(d2))
            d.data.active = false;
        }
      }
      if (ctx2.actives.isEmpty)
        throw CallError('Noone to do part 1 of Swing Thru');
      ctx2.applyCalls('Trade');
    });
  }

  @override
   void performPart2(CallContext ctx) {
    var canDoBoth = _dancersWhoCanDoBothParts(ctx);
    ctx.subContext(ctx.dancersHoldingSameHands(isRight: isLeft, isGrand: isGrand),
            (ctx2) {
        for (var d in ctx2.actives.copy()) {
          if (!canDoBoth.contains(d)) {
          var d2 = isLeft
              ? ctx.dancerToRight(d)
              : ctx.dancerToLeft(d);
          if (!canDoBoth.contains(d2))
            d.data.active = false;
        }
      }
      if (ctx2.actives.isEmpty)
        throw CallError('Noone to do part 2 of Swing Thru');
      ctx2.applyCalls('Trade');
            });
  }

}