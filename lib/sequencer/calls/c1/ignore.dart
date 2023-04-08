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

import '../coded_call.dart';
import '../common.dart';

class Ignore extends Action {

  @override final level = LevelData.C1;
  @override var help = 'Ignore (dancers) means the designated dancers do not'
      ' move while all other dancers do their part of the call.';
  @override var helplink = 'c1/ignore';
  Ignore(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    //  Who should we ignore?
    final regex = 'ignore (?:the )?((?:${CodedCall.specifier} )+)(?:and )?(?:for a )?(.+)'.ri;
    final match = regex.firstMatch(name);
    if (match == null)
      throw CallError('Error parsing Ignore');
    final who = match.group(1)!;
    final call = match.group(2)!;
    ctx.subContext(ctx.dancers, (ctx2) {
      //  Remember the dancers that we will ignore
      ctx2.interpretCall(who,noAction: true);
      ctx2.performCall();
      final ignoreDancers = ctx2.actives;
      //  Do the call
      for (final d in ctx2.dancers)
        d.data.active = true;
      ctx2.applyCalls(call);
      //  Now erase the action of the ignored dancers
      ctx2.dancers.where((d) => ignoreDancers.contains(d))
          .forEach((d) { d.path = Path(); });
    });

  }

}