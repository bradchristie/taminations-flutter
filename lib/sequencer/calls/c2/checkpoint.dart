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

class Checkpoint extends Action {

  @override final level = LevelData.C2;
  @override var help = 'Checkpoint (centers call) by (others call)';
  @override var helplink = 'c2/checkpoint';

  Checkpoint(super.name);

  @override
  void performCall(CallContext ctx) {
    //  Parse out the two calls
    final firstCall = name.replaceMatch('Checkpoint (.+) by (.+)'.ri,'\\1');
    final secondCall = name.replaceMatch('Checkpoint (.+) by (.+)'.ri,'\\2');
    if ((firstCall+secondCall).contains('Checkpoint'))
      throw CallError('Checkpoint what?');

    //  Figure out who does the first call
    List<DancerModel> centers;
    if (ctx.groupstr == '2222')
      centers = ctx.groups[1] + ctx.groups[2];
    else if (ctx.groupstr.matches('(242|422|224)'.r))
      centers = ctx.groups[1];
    else
      throw CallError('Not a valid formation for Checkpoint');
    final ctx1 = CallContext.fromContext(ctx,dancers: centers);
    final ctx2 = CallContext.fromContext(ctx,dancers: ctx.dancers - centers);
    //  Do the first call
    ctx1.applyCalls('Concentric $firstCall');
    ctx1.appendToSource();
    //  Slide in the outer 2 if needed
    if (ctx.groups[2].first.location.length > 4.0)
      ctx2.applyCalls('outer 2 slide in');
    //  Do the second call
    ctx2.applyCalls(secondCall);
    ctx2.appendToSource();
  }

}