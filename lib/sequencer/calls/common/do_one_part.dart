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

class DoOnePart extends Action {

  DoOnePart(super.name);

  @override
  void performCall(CallContext ctx) {
    final callName = name.replaceFirst('do the .* part (of)?'.ri, '').trim();
    final partName = name.replaceFirst(' part .*'.ri, '');
    ctx.subContext(ctx.dancers, (ctx2) {
      ctx2.analyze();
      if (!ctx2.matchCodedCall(callName))
        throw CallError('Unable to find $callName as a Call with Parts');
      if (ctx2.callstack.last is CallWithParts) {
        final call = ctx2.callstack.last as CallWithParts;
        final partNumber = CallWithParts.partNumberFromCall(call, partName);
        if (partNumber == 0)
          throw CallError('Unable to figure out what Part to do');
        call.performPart(partNumber)(ctx2);
      }
      else
        throw CallError('Can only Do a Part of a call with Parts');
    });
  }

}