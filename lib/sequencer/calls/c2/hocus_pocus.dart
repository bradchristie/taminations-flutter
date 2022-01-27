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
  HocusPocus() : super('Hocus Pocus');

  @override
  Future<void> perform(CallContext ctx) async {
    final outer4 = CallContext.fromContext(ctx,dancers: ctx.outer(4).inOrder());
    final outerO = outer4.fillFormation('O RH')
        ?? outer4.fillFormation('O LH')
        ?? outer4.fillFormation('O Eight Chain Thru')
        ?? outer4.fillFormation('O Trade By');
    if (outerO == null)
      throw CallError('Cannot determine how outer dancers can circulate.');
    await ctx.subContext(outerO.dancers, (ctx2) async {
      await ctx2.applyCalls('O Circulate','O Circulate');
    });
    await ctx.subContext(ctx.center(4), (ctx2) async {
      await ctx2.applyCalls('Trade');
    });
  }

}