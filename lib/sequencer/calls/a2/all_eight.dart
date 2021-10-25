/*
 *     Copyright 2021 Brad Christie
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

class AllEightSlip extends Action {

  @override final level = LevelData.A2;
  AllEightSlip() : super('All 8 Slip');

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    await  ctx.applyCalls('Slip');
  }

}

class AllEightFanTheTop extends Action {

  @override final level = LevelData.A2;
  AllEightFanTheTop() : super('All 8 Fan the Top');

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    await  ctx.applyCalls('Outer 4 Counter Rotate While Center 4 Cast Off 3/4');
  }

}