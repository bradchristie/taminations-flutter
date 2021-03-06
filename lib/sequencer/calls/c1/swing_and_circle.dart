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

class SwingAndCircle extends Action {

  @override final level = LevelData.C1;
  SwingAndCircle(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final norm = TamUtils.normalizeCall(name);
    //  Swing and Circle 1/4 is an XML animation
    //  So just repeat that as requested
    if (norm.endsWith('12'))
      await ctx.applyCalls('Swing and Circle 1/4',
          'Swing and Circle 1/4');
    else if (norm.endsWith('34'))
      await ctx.applyCalls('Swing and Circle 1/4',
          'Swing and Circle 1/4',
          'Swing and Circle 1/4');
    else
      await ctx.applyCalls('Swing and Circle 1/4',
          'Swing and Circle 1/4',
          'Swing and Circle 1/4',
          'Swing and Circle 1/4');
  }

}