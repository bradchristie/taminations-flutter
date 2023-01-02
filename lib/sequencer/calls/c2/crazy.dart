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

class Crazy extends Action with CallWithParts {

  @override final level = LevelData.C2;
  @override var help = '''Crazy (call) is a 4-part concept:
  1.  Each half does the (generally 4-person) call.
  2.  Center 4 do the call
  3.  Each half does the call
  4.  Center 4 do the call''';
  @override var helplink = 'c2/crazy_concept';
  //  Make any adjustments needed to apply the crazy call to
  //  8 dancers or 4 dancers
  String get crazy4 => crazyCall.matches('counter rotate.*'.ri)
      ? 'Center 4 Box $crazyCall'
      : 'Center 4 $crazyCall';
  String get crazy8 => (crazyCall.matches('counter rotate.*'.ri) ||
      crazyCall.matches('circulate.*'.ri)) ? 'Split $crazyCall' : crazyCall;

  bool isReverse;
  String crazyCall;
  Crazy(String name) :
        isReverse = name.contains('Reverse Crazy'),
        crazyCall = name.replaceFirst('.*Crazy '.r, ''),
        super(name) {
    //  Find out how crazy we are
    final norm = normalizeCall(name);
    if (norm.startsWith('14'))
      numberOfParts = 1;  //  really?
    else if (norm.startsWith('12'))
      numberOfParts = 2;
    else if (norm.startsWith('34'))
      numberOfParts = 3;
    else
      numberOfParts = 4;
  }

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls(isReverse ? crazy4 : crazy8);
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.matchStandardFormation();
    ctx.applyCalls(isReverse ? crazy8 : crazy4);
  }

  @override
   void performPart3(CallContext ctx) {
    ctx.matchStandardFormation();
    ctx.applyCalls(isReverse ? crazy4 : crazy8);
  }

  @override
   void performPart4(CallContext ctx) {
    ctx.matchStandardFormation();
    ctx.applyCalls(isReverse ? crazy8 : crazy4);
  }
}