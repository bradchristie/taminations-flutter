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

class CrossChainThru extends Action with CallWithParts, CallWithStars {

  @override final level = LevelData.C1;
  @override var numberOfParts = 2;
  @override var turnStarAmount = 2;
  @override var help = '''Cross Chain Thru is a 2-part call:
  1.  Pull By
  2.  Center 4 Left-Hand Star 1/2, outer 4 Courtesy Turn to end in a Eight Chain Thru formation
The Star Turn can be changed with Turn the Star (fraction)
On Cross Chain and Roll, the ends Roll after the Courtesy Turn and all adjust to end in waves.''';
  @override var helplink = 'c1/cross_chain_thru';
  CrossChainThru(name) : super(name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls('Pull By');
    ctx.adjustToFormation(Formation('Eight Chain Thru'));
  }

  @override
   void performPart2(CallContext ctx) {
    var turnFraction = '1/2';
    switch (turnStarAmount) {
      case 1 : turnFraction = '1/4'; break;
      case 2 : break;
      case 3 : turnFraction  = '3/4'; break;
      case 4 : turnFraction = 'Full'; break;
      default : throw CallError('Unable to turn the star that amount');
    }
    final andRoll = name.endsWith('Roll') ? 'and Roll' : '';
    ctx.applyCalls('Outer 4 Courtesy Turn $andRoll While '
        'Center 4 Star Left $turnFraction Across $andRoll');
  }

}