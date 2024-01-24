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

import '../common.dart';

class HubsTrade extends Action with ActivesOnly, CallWithParts {

  @override final level = LevelData.C2;
  @override int numberOfParts = 2;
  @override var help = ''''Hubs/Rims Trade (call) is a 2-part call:
  1.  Partner Trade
  2.  Original Centers (Hubs) or Outsides (Rims) do the given call''';
  @override var helplink = 'c2/rims_trade_anything';
  HubsTrade(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    if (!ctx.isLines() && !ctx.isThar())
      throw CallError('Cannot do $name from here');
    super.performCall(ctx);
  }

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Trade');
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.analyze();
    final otherCall = name.replaceFirst('(Hubs|Rims) Trade'.ri, '').trim()
        .replaceFirst('^Back'.ri, 'Circulate');
    if (otherCall.isBlank)
      throw CallError('$name what?');
    final who = name.startsWith('Hubs') ? 'Ends' : 'Centers';
    ctx.applyCalls('$who $otherCall');
  }

}