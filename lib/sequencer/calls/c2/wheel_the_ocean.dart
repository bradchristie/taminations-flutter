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

//  This class includes 1/4, 3/4 Wheel the Ocean / Seabtl
class WheelTheOcean extends Action with CallWithParts {

  @override LevelData get level =>
      norm.startsWith('14') || norm.startsWith('34')
          ? LevelData.C3A : LevelData.C2;
  @override String get helplink =>
      norm.startsWith('14') || norm.startsWith('34')
      ? 'c3a/1_4_wheel_the_ocean' : 'c2/wheel_the_ocean';
  @override String get help => '''$name is a 2-part call:
  1.  ${_wheelAmount()}
  2.  ${_passCall()}''';
  @override var numberOfParts = 2;
  WheelTheOcean(String name) : super(name);

  String _wheelAmount() {
    var reverse = name.contains('Reverse') ? ' Reverse' : '';
    if (norm.startsWith('14'))
      return '1/2$reverse Wheel Around';
    else if (norm.startsWith('34'))
      return '$reverse Wheel Around Once and a Half';
    else
      return 'Leaders $reverse Wheel Around';
  }

  String _passCall() {
    if (name.contains('Reverse'))
      return name.endsWith('Sea')
          ? 'Beaus Walk Belles Dodge'
          : 'Beaus Cross';
    else
      return name.endsWith('Sea')
          ? 'Belles Walk Beaus Dodge'
          : 'Belles Cross';
  }

  @override
   void performPart1(CallContext ctx) {
    var wheel = _wheelAmount();
    if (ctx.actives.length < ctx.dancers.length)
      wheel = wheel.replaceFirst('Leaders', '');
    ctx.applyCalls(wheel);
  }

  @override
   void performPart2(CallContext ctx) {
    ctx.applyCalls(_passCall());
  }

}