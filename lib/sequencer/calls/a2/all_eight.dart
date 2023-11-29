/*
 *     Copyright 2021 Brad Christie
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

class AllEight extends Action {

  @override final level = LevelData.A2;
  @override var help =
      'If the current formation is a Thar '
  ' and the call applies to 4 dancers in a line or wave'
  ' the sequencer will compute the call for each group of 4.'
  ' Examples are All 8 Swing Thru and All 8 Crossfire.'
  ' Otherwise the sequencer will look up the call'
  ' from the All 8 animations.';
  @override var helplink = 'a2/all_4_all_8';
  AllEight(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    final all8call = name.replaceAll('All (8|Eight)'.ri, '').trim();
    if (ctx.isThar()) {
      final xDancers = ctx.dancers.where((d) => d.isOnXAxis).toList();
      final yDancers = ctx.dancers.where((d) => d.isOnYAxis).toList();
      ctx.subContext(xDancers, (xctx) =>
          xctx.applyCalls(all8call)
      );
      ctx.subContext(yDancers, (yctx) =>
          yctx.applyCalls(all8call)
      );
    } else if (ctx.isSquare()) {
      //  Might be able to do the All 8 call
      //  the same way as it's done without All 8
      try {
        ctx.applyCalls(all8call);
      } on CallError {
        throw CallError('Unable to do $name from this formation.');
      }
    } else
      throw CallError('All 8 calls must start from a Thar or Static Square');
  }

}