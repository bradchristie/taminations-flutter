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

class Dodge extends Action with ActivesOnly {

  @override var level = LevelData.C2;
  @override var help = 'Dodge (call): Centers Walk and Dodge, '
      'others do their part of the call';
  @override var helplink = 'c2/dodge_anything';

  Dodge(super.name);

  @override
  void performCall(CallContext ctx) {
    var anyCall = name.replaceFirst('dodge'.ri, '').trim();
    if (anyCall.isBlank)
      throw CallError('Dodge what?');
    try {
      ctx.applyCalls('Centers Walk and Dodge While Ends $anyCall');
    } on CallError {
      ctx.applyCalls(
          'Centers Walk and Dodge While Ends Do Your Part $anyCall');
    }
  }

}