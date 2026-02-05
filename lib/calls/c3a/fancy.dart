/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  final List<AnimatedCall> Fancy = [

    AnimatedCall('Fancy',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',parts:'3;1',
      paths:[
          Stand.changeBeats(4) +
          UmTurnRight.changeBeats(4).skew(0.0,-2.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Stand +
          UmTurnRight.changeBeats(4).skew(0.0,-2.0),

          Stand.changeBeats(3) +
          Forward.changehands(Hands.LEFT) +
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Fancy',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'3;1',
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward.changehands(Hands.LEFT) +
          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          Stand.changeBeats(3) +
          Forward.changehands(Hands.RIGHT) +
          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Stand +
          UmTurnLeft.changeBeats(4).skew(0.0,2.0),

          Stand.changeBeats(4) +
          UmTurnLeft.changeBeats(4).skew(0.0,2.0)
      ]),

    AnimatedCall('Scoot and Fancy',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'6',
      paths:[
          RunRight.changeBeats(6) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          Stand.changeBeats(3) +
          Forward.changehands(Hands.LEFT) +
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Stand +
          UmTurnRight.changeBeats(4).skew(0.0,-2.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          Stand.changeBeats(4) +
          UmTurnRight.changeBeats(4).skew(0.0,-2.0)
      ]),
  ];

