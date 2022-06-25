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

class StackTheLine extends ActivesOnlyAction with CallWithParts {

  @override var level = LevelData.C2;
  @override var numberOfParts = 2;
  List<Dancer> originalLeads = [];
  final bool isLeft;
  StackTheLine(String name) : isLeft=name.startsWith('Left'), super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    originalLeads = ctx.dancers.where((d) => d.data.leader).toList();
    await ctx.applyCalls('Quarter In');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    final left = isLeft ? 'Right' : 'Left';
    final right = isLeft ? 'Left' : 'Right';
    if (originalLeads.isEmpty)
      throw CallError('Cannot find original leaders for Stack the Line');
    for (var d in ctx.dancers) {
      if (originalLeads.contains(d)) {
        var d2 = ctx.dancerInFront(d) ??
            thrower('Unable to calculate 2nd part of Stack the Line')!;
        if (d.data.beau ^ isLeft)
          d.path += TamUtils.getMove('Forward')
            ..scale(d.distanceTo(d2), 1)
            ..changeBeats(2.0);
        else {
          var d3 = d2.data.partner ??
              thrower('Unable to calculate 2nd part of Stack the Line')!;
          d.path += TamUtils.getMove('Forward') +
              (TamUtils.getMove('Extend $left')
            ..scale(d.distanceTo(d2)-1.0, d2.distanceTo(d3))
            ..changeBeats(2.0));
        }
      } else {
        if (d.data.belle ^ isLeft) {
          var d3 = d.data.partner ??
              thrower('Unable to calculate 2nd part of Stack the Line')!;
          d.path += TamUtils.getMove('Dodge $left')
            ..scale(1.0,d.distanceTo(d3)/2.0)
            ..changeBeats(2.0);
        }
      }
    }
  }

}