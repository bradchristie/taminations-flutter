/*
 *     Copyright 2022 Brad Christie
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

class SplitRecycle extends Action {

  @override var level = LevelData.C1;
  @override var help = 'You can Split Recycle from mini-wave boxes, '
      'or from mixed couples and mini-waves. You have to use Reverse'
      ' Split Recycle from a mixed couple and left-hand mini-wave.';
  @override var helplink = 'c1/recycle';
  //  This code is for mixed couples and mini-waves
  //  All mini-wave formations are in XML
  SplitRecycle(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    var reverse = name.contains('Reverse') ? 'Reverse' : '';
    await ctx.applyCalls('Couples Do Your Part $reverse Recycle'
        ' While Wave Dancers Do Your Part Split Recycle');
  }

}