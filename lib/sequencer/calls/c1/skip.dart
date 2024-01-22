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

import '../coded_call.dart';
import '../common.dart';

class Skip extends Action {

  @override final level = LevelData.C1;
  @override var help = 'You can skip any one part of a Call with Parts '
      'with Skip the nth Part.\n'
  'Also accepted is Skip the Last <n> Parts.';
  @override var helplink = 'c1/replace';
  Skip(String name) : super(name);

  @override
  void addToStack(CallContext ctx) {
    var callWithParts = ctx.findImplementor<CallWithParts>(startFrom:ctx.callstack.last);
    var whoSkip = CodedCall.specifier.ri.firstMatch(name);
    var matchN = 'last(\\d)part'.ri.firstMatch(norm);
    if (matchN != null) {
      var n = matchN.group(1)!.i;
      for (var i=0; i<n; i++)
        callWithParts.replacePart[callWithParts.numberOfParts-i] = (ctx) { };
    } else {
      final partName = name.replaceFirst('.*(skip|delete)( the)?'.ri, '').trim();
      final partNumber = CallWithParts.partNumberFromCall(callWithParts, partName);
      if (partNumber == 0)
        throw CallError('Unable to figure out what to Skip');
      if (whoSkip == null)
        callWithParts.replacePart[partNumber] = (_) { };
      else {
        var savePart = callWithParts.performPart(partNumber);
        callWithParts.replacePart[partNumber] = (ctx2) {
          ctx2.applySpecifier(whoSkip[0]!,negate: true);
          savePart(ctx);
        };
      }
    }
  }

}