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

class DoubleScoot extends Action {

  @override var level = LevelData.PLUS;
  @override var help = '3 by 2 columns can Double Scoot';
  @override var helplink = 'plus/triple_scoot';
  DoubleScoot() : super('Double Scoot');

  @override
  Future<void> perform(CallContext ctx) async {
    //  There are XML animations for 6-dancer Double Scoot
    if (ctx.actives.length > 6) {
      await ctx.applyCalls('Center 6 Double Scoot');
    } else
      throw CallError('Cannot Double Scoot from this formation');
  }

}