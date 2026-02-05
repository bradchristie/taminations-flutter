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

  final List<AnimatedCall> StripTheDiamond = [

    AnimatedCall('Strip the Diamond',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:0,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Right-Hand Diamonds',
      paths:[
          LeadRight.changeBeats(5).scale(3.5,3.0),

          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          SwingLeft.scale(0.5,0.5).skew(0.0,-0.5),

          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          UmTurnLeft.changeBeats(2).skew(-2.0,0.0) +
          SwingLeft.scale(0.5,0.5).skew(0.0,0.5)
      ]),

    AnimatedCall('Strip the Diamond',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          LeadLeft.changeBeats(5).scale(3.5,3.0),

          UmTurnRight.changeBeats(2).skew(-2.0,0.0) +
          SwingRight.scale(0.5,0.5).skew(0.0,-0.5),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          SwingRight.scale(0.5,0.5).skew(0.0,0.5)
      ]),

    AnimatedCall('Strip the Hourglass',
      formation:Formation('Hourglass RH BP'),
      from:'Right-Hand Hourglass',
      paths:[
          UmTurnLeft.changeBeats(2).skew(-2.0,-0.5) +
          SwingLeft.scale(0.5,0.5),

          LeadRight.changeBeats(5).scale(3.5,3.0),

          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          SwingLeft.scale(0.5,0.5),

          CastRight.changeBeats(5)
      ]),

    AnimatedCall('Strip the Hourglass',
      formation:Formation('Hourglass LH BP'),
      from:'Left-Hand Hourglass',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          SwingRight.scale(0.5,0.5),

          LeadLeft.changeBeats(5).scale(3.5,3.0),

          UmTurnRight.changeBeats(2).skew(-2.0,0.5) +
          SwingRight.scale(0.5,0.5),

          CastLeft.changeBeats(5)
      ]),
  ];

