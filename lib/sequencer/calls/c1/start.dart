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

class Start extends Action {

  @override final level = LevelData.C1;
  @override var help = 'Start is used as "(some dancers) Start (call)"\n'
      'The designated dancers do Part 1 of the call, then all the'
      ' dancers finish the call';
  @override var helplink = 'c1/start';
  Start(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    final finishCall = name.replaceFirst('^start\\s+'.ri, '');
    if (finishCall.isBlank)
      throw CallError('Start what?');

    //  Special case - Heads or Sides "Start" from a static square
    //  - they move in and everyone does the call
    if (ctx.isSquare() && ctx.dancers.every((d) =>
                  d.isFacingIn && ctx.isInCouple(d))) {
      ctx.subContext(ctx.actives, (ctx2) {
        ctx2.applyCalls('Step');
      });
      for (var d in ctx.dancers)
        d.data.active = true;
      ctx.extendPaths();
      ctx.applyCalls(finishCall);

    } else {

      //  There has to be a subset of dancers selected to Start
      if (ctx.actives.length >= ctx.dancers.length)
        throw CallError('Who is supposed to start?');

      ctx.applyCalls('Do the First Part $finishCall');

      //  Extend paths of all dancers so others don' start
      //  until the selected dancers have finished the 1st part
      ctx.extendPaths();
      ctx.matchStandardFormation();
      //  Now everyone is active
      for (var d in ctx.dancers)
        d.data.active = true;
      //  And finish the call
      ctx.applyCalls('Finish $finishCall');
    }
  }

}