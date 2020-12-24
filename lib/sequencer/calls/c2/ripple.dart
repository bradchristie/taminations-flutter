/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

class Ripple extends Action {

  @override final level = LevelData.C2;
  Ripple(String name) : super(name);
  Map<Dancer,bool> _isRight;

  List<Dancer> _findTraders(CallContext ctx, List<Dancer> actives) {
    final traders = actives.copy();
    final ended = <Dancer>[];
    for (final d in actives) {
      final d2 = _isRight[d] ? ctx.dancerToRight(d) : ctx.dancerToLeft(d);
      if (d2 != null)
        traders.add(d2);
      else {
        ended.add(d);
        traders.remove(d);
      }
    }
    actives.removeWhere((d) => ended.contains(d));
    return traders;
  }

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final actives = ctx.actives.copy();
    if (actives.length == ctx.dancers.length)
      throw CallError('Who is going to Ripple?');
    final norm = TamUtils.normalizeCall(name);
    final countstr = norm.replaceFirst('(Right|Left)?Ripple'.r,'')
        .replaceFirst('the(Line|Wave)'.r,'9');
    final half = countstr.endsWith('12');
    final count = countstr.replaceFirst('12','').toIntOrNull()
        ?? thrower(CallError('Ripple how much?'));
    _isRight = { for (final d in actives) d :
    norm.contains('Right')
        ? true
        : norm.contains('Left')
        ? false
        : d.isCenterRight };

    for (var i=0; i<count; i++) {
      final traders = _findTraders(ctx,actives);
      await ctx.subContext(traders, (ctx2) async {
        for (final d in ctx2.dancers)
          d.data.active = true;
        await ctx2.applyCalls('Trade');
      });
      ctx.extendPaths();
      _isRight = { for (final d in actives) d : !_isRight[d] };
    }
    if (half) {
      final traders = _findTraders(ctx, actives);
      await ctx.subContext(traders, (ctx2) async {
        for (final d in ctx2.dancers)
          d.data.active = true;
        await ctx2.applyCalls('Hinge');
      });
    }
  }


}