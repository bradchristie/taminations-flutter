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

import 'package:flutter/material.dart';

import '../common.dart';

class SpinChainTheGears extends SixPartCall implements CallWithStars {

  @override final level = LevelData.PLUS;
  var dir = 'Right';
  var turnAmount = 3;
  SpinChainTheGears(String name) : super(name);

  @override
  Future<void> performPart1(CallContext ctx) async {
    await ctx.applyCalls('Swing');
  }

  @override
  Future<void> performPart2(CallContext ctx) async {
    await ctx.applyCalls('Spin Chain the Gears Part 2');
  }

  @override
  Future<void> performPart3(CallContext ctx) async {
    for (var i=0; i<turnAmount; i++)
      await ctx.applyCalls('Turn the Stars');
  }

  @override
  Future<void> performPart4(CallContext ctx) async {
    await ctx.applyCalls('Very Centers Trade');
  }

  @override
  Future<void> performPart5(CallContext ctx) async {
    for (var i=0; i<turnAmount; i++)
      await ctx.applyCalls('Turn the Stars');
  }

  @override
  Future<void> performPart6(CallContext ctx) async {
    await ctx.applyCalls('Spin Chain the Gears Part 6');
  }

  @override
  void turnTheStar(int amount) {
    turnAmount = amount;
  }

}