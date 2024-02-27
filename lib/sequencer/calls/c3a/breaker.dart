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

class Breaker extends Action with CallWithParts {

  @override var level = LevelData.C3A;
  @override var numberOfParts = 2;
  @override var help =  '''Breaker (n) is a 2-part call:
  1.  Ends Cast Off 3/4 While Center 4 Box Couunter Rotate and 1/2 Box Circulate
  2.  Center Wave/Line Cast Off n/4 While Others Hourglass Circulate''';
  @override var helplink = 'c3a/breaker_anything';

  Breaker(super.name);

  @override
   void performPart1(CallContext ctx) {
    ctx.applyCalls(
        'Outer 4 Cast Off 3/4 While '
        'Center 4 Box Counter Rotate and 1/2 Box Circulate');
  }

  @override
   void performPart2(CallContext ctx) {
    var cast = norm.replaceFirst('breaker'.ri,'');
    String call;
    switch (cast) {
      case '1' : call = 'Hinge'; break;
      case '2' : call = 'Trade'; break;
      case '3' : call = 'Cast Off 3/4'; break;
      case '' : throw CallError('Breaker what?');
      default : call = cast; break;
    }
    ctx.applyCalls('Center Wave of 4 $call '
        'While Others Do Your Part Hourglass Circulate');
  }

}