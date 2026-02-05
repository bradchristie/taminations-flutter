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

  final List<AnimatedCall> SwingOLate = [

    AnimatedCall('Swing-O-Late',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'3',
      paths:[
          SwingRight +
          RunLeft.changeBeats(5).scale(1.0,2.0),

          SwingRight +
          UmTurnRight.skew(-1.0,0.0) +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          SwingRight +
          UmTurnRight.skew(-1.0,0.0) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          SwingRight +
          RunLeft.changeBeats(5).scale(1.0,2.0)
      ]),

    AnimatedCall('Swing-O-Late',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'3',
      paths:[
          SwingLeft +
          RunRight.changeBeats(5).scale(1.0,2.0),

          SwingLeft +
          UmTurnLeft.skew(-1.0,0.0) +
          ExtendRight.changeBeats(4).scale(3.0,2.0),

          SwingLeft +
          UmTurnLeft.skew(-1.0,0.0) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          SwingLeft +
          RunRight.changeBeats(5).scale(1.0,2.0)
      ]),

    AnimatedCall('Swing-O-Late',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:0,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:0,angle:270),
  ]),
      from:'Right-Hand Thar',fractions:'3',
      paths:[
          SwingLeft +
          UmTurnLeft.changeBeats(2).skew(0.0,0.5) +
          LeadRight.changeBeats(3).scale(1.0,2.5),

          SwingLeft +
          RunRight.changeBeats(5).changehands(Hands.RIGHT).scale(1.0,2.0),

          SwingLeft +
          UmTurnLeft.changeBeats(2).skew(0.0,0.5) +
          LeadRight.changeBeats(3).scale(1.0,2.5),

          SwingLeft +
          RunRight.changeBeats(5).changehands(Hands.RIGHT).scale(1.0,2.0)
      ]),

    AnimatedCall('Swing-O-Late',
      formation:Formation('Thar LH Boys'),
      from:'Left-Hand Thar',fractions:'3',
      paths:[
          SwingRight +
          UmTurnRight.changeBeats(2).skew(0.0,-0.5) +
          LeadLeft.changeBeats(3).scale(1.0,2.5),

          SwingRight +
          RunLeft.changeBeats(5).changehands(Hands.LEFT).scale(1.0,2.0),

          SwingRight +
          UmTurnRight.changeBeats(2).skew(0.0,-0.5) +
          LeadLeft.changeBeats(3).scale(1.0,2.5),

          SwingRight +
          RunLeft.changeBeats(5).changehands(Hands.LEFT).scale(1.0,2.0)
      ]),
  ];

