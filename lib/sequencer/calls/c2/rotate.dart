/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

class Rotate extends Action {

  @override final level = LevelData.C2;
  @override var helplink = 'c2/rotate';
  Rotate(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    final isReverse = name.contains('Reverse');
    if (!ctx.isLines() || !ctx.dancers.every((d) => ctx.isInCouple(d)))
      throw CallError('Unable to Rotate from this formation');
    final leaders = ctx.dancers.where((d) => d.data.leader).toList();
    final trailers = ctx.dancers.where((d) => d.data.trailer).toList();
    if (leaders.isNotEmpty) {
      ctx.subContext(leaders, (ctx2) {
        ctx2.applyCalls('Half ${isReverse ? 'Reverse' : ''} Wheel Around');
      });
    }
    if (trailers.isNotEmpty) {
      ctx.subContext(trailers, (ctx2) {
        ctx2.applyCalls('Half ${isReverse ? '' : 'Reverse'} Wheel Around');
      });
    }
    final norm = TamUtils.normalizeCall(name);
    if (norm.endsWith('14'))
      ctx.applyCalls('Couples Hinge');
    else if (norm.endsWith('12'))
      ctx.applyCalls('Couples Hinge','Couples Hinge');
    else if (norm.endsWith('34'))
      ctx.applyCalls('Couples Hinge','Couples Hinge','Couples Hinge');
    else
      throw CallError('Rotate how much?');
  }

}