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

import 'package:taminations/moves.dart';

import '../common.dart';

class Patch extends Action with ActivesOnly, CallWithParts {

  @override var level = LevelData.C3A;
  @override int numberOfParts = 2;
  var origBeaus = <Dancer>[];
  var origBelles = <Dancer>[];

  Patch(super.name);

  @override
  void performPart1(CallContext ctx) {
    //  Remember who to patch
    final who = name.replaceFirst('Patch( the)?'.r,'');
    if (who.isBlank)
      throw CallError('Patch who?');
    final whoctx = CallContext.fromContext(ctx,dancers:ctx.actives);
    if (!who.matches('No\\s*(body|one)'.ri))
      whoctx.applySpecifier(who);
    var whodancers = ctx.dancers.where((d) => whoctx.actives.contains(d)).toList();
    origBeaus = whodancers.where((d) => d.data.beau).toList();
    origBelles = whodancers.where((d) => d.data.belle).toList();
    ctx.applyCalls('Hinge');
  }

  @override
  void performPart2(CallContext ctx) {
    origBeaus.forEach((d) {
      d.path += UmTurnRight;
    });
    origBelles.forEach((d) {
      d.path += UmTurnLeft;
    });
  }

}