/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

class HocusPocus extends Action {

  @override final level = LevelData.C2;
  @override var help = 'Centers Trade, others O Circulate twice';
  @override var helplink = 'c2/hocus_pocus';
  HocusPocus(name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    final outer4 = CallContext.fromContext(ctx,dancers: ctx.outer(4).inOrder());
    await ctx.subContext(outer4.dancers, (ctx2) async {
      final magic = name.contains('Magic') ? 'Magic' : '';
      final oCall = 'Do Your Part $magic O Circulate';
      await ctx2.applyCalls(oCall,oCall);
    });
    await ctx.subContext(ctx.center(4), (ctx2) async {
      await ctx2.applyCalls('Trade');
    });
  }

}