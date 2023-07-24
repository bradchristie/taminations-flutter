/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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
import '../common/reverse.dart';
import '../common/single.dart';
import '../../../moves.dart';

class Rotate extends Action with IsReverse, IsSingle {

  @override var level = LevelData.C1;
  @override var help = 'Only C-1 and C-2 Rotate is currently implemented. '
      'You can modify with both Reverse and Single.';
  @override var helplink = 'c1/rotate';

  Rotate(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    if (!norm.matches('(14|12|34)'.r))
      throw CallError('All Rotates must end with a fraction');
    if (ctx.isSquare() || ctx.outer(4).containsAll(ctx.actives))
      perform_C1(ctx);
    else if (ctx.isLines())
      perform_C2(ctx);
    else
      perform_C3B(ctx);
  }

  void perform_C1(CallContext ctx) {
    if (isSingle) {
      if (ctx.actives.any((d) => !ctx.isInCouple(d) && !ctx.isInWave(d)))
        throw CallError('Dancers must be couples.');
      for (var d in ctx.actives) {
        if (d.isFacingOut)
          d.path += isReverse ? QuarterRight : QuarterLeft;
        else if (d.isFacingIn)
          d.path += isReverse ? QuarterLeft : QuarterRight;
        else
          throw CallError('Cannot Rotate from this formation.');
      }

    } else {
      if (ctx.actives.any((d) => !ctx.isInCouple(d)))
        throw CallError('Dancers must be couples.');
      if (ctx.actives.first.isFacingOut)
        ctx.applyCalls('Half $reverse Wheel Around');
      else if (ctx.actives.first.isFacingIn)
        ctx.applyCalls('Half ${isReverse ? '' : 'Reverse'} Wheel Around');
      else
        throw CallError('Cannot Rotate from this formation.');
    }
    ctx.applyCalls('Counter Rotate');
    if (!norm.endsWith('14'))
      ctx.applyCalls('Counter Rotate');
    if (norm.endsWith('34'))
      ctx.applyCalls('Counter Rotate');
    ctx.contractPaths();
    ctx.checkCenters(force: true);
  }

  void perform_C2(CallContext ctx) {
    final leaders = ctx.dancers.where((d) => d.data.leader).toList();
    final trailers = ctx.dancers.where((d) => d.data.trailer).toList();
    if (!ctx.isLines() || (!isSingle && !ctx.dancers.every((d) => ctx.isInCouple(d))))
      throw CallError('Unable to Rotate from this formation');
    if (leaders.isNotEmpty) {
      ctx.subContext(leaders, (ctx2) {
        if (isSingle)
          ctx2.applyCalls(isReverse ? 'Face Left' : 'Face Right');
        else
          ctx2.applyCalls('Half $reverse Wheel Around');
      });
    }
    if (trailers.isNotEmpty) {
      ctx.subContext(trailers, (ctx2) {
        if (isSingle)
          ctx2.applyCalls(isReverse ? 'Face Right' : 'Face Left');
        else
        ctx2.applyCalls('Half ${isReverse ? '' : 'Reverse'} Wheel Around');
      });
    }
    final norm = normalizeCall(name);
    final oneRotate = isSingle ? 'Split Counter Rotate' : 'Couples Hinge';
    ctx.applyCalls(oneRotate);
    if (!norm.endsWith('14'))
      ctx.applyCalls(oneRotate);
    if (norm.endsWith('34'))
      ctx.applyCalls(oneRotate);
  }

  void perform_C3B(CallContext ctx) {
    throw CallError('Rotate from this formation not yet supported.');
  }

}