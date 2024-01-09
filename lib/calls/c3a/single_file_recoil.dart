/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

import '../../animated_call.dart';
import '../../common_dart.dart';
import '../../moves.dart';

  final List<AnimatedCall> SingleFileRecoil = [

    AnimatedCall('Single File Recoil',
      formation:Formation('Single Double Pass Thru'),
      from:'Single Double Pass Thru',fractions:'4',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          RunRight.skew(2.0,0.0),

          UmTurnRight.changeBeats(4).skew(1.0,1.0) +
          Forward_2.changeBeats(3)
      ]),
  ];

