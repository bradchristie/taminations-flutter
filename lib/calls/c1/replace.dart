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

  final List<AnimatedCall> Replace = [

    AnimatedCall('Chain Reaction, Replace the final Cast Off 3/4 with a Single Wheel',
      formation:Formation('Quarter Tag'),
      group:' ',fractions:'3.5;2',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          HingeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(4.5).skew(1.0,0.0),

          Forward.changeBeats(2) +
          HingeLeft +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(4.5).scale(1.0,2.0),

          LeadRight.changeBeats(3.5).scale(5.0,3.0) +
          SwingRight.changeBeats(2) +
          FlipLeft.changeBeats(4.5).skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          HingeLeft.skew(0.5,-0.5) +
          SwingRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,4.0)
      ]),

    AnimatedCall('Coordinate, Replace Trade with a Remake',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:1,angle:0),
  ]),
      group:' ',
      paths:[
          Forward.changeBeats(3).scale(3.0,1.0) +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          Forward.changeBeats(3).scale(3.0,1.0) +
          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          Forward.changeBeats(1.5).scale(2.0,1.0) +
          LeadRight.changeBeats(1.5) +
          Stand.changeBeats(9).changehands(0) +
          LeadRight.changeBeats(3).scale(3.0,2.0),

          FlipRight.changeBeats(2) +
          Forward +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Delete All Arm Turn 1/2\'s, Spin Chain the Gears',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',fractions:'4.5;4.5',
      paths:[
          Stand.changeBeats(2) +
          FlipRight.changeBeats(2.5) +
          CastLeft.changehands(Hands.GRIPLEFT) +
          CastLeft,

          CastLeft +
          CastLeft.changehands(Hands.GRIPLEFT) +
          FlipRight.changeBeats(4.5),

          CastLeft +
          CastLeft.changehands(Hands.GRIPLEFT) +
          FlipRight.changeBeats(4.5),

          Stand.changeBeats(2) +
          FlipRight.changeBeats(2.5) +
          CastLeft.changehands(Hands.GRIPLEFT) +
          CastLeft
      ]),

    AnimatedCall('Motivate, Replace Turning the Star with a U-Turn Back',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',fractions:'4;4.5;3',
      paths:[
          Forward_4.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          RunRight +
          CastLeft,

          Forward_4.changehands(Hands.LEFT) +
          CastRight +
          UmTurnLeft +
          CastLeft,

          RunRight.changeBeats(4).changehands(Hands.LEFT) +
          CastRight +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          UmTurnRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Pass the Axle, Skip the Third Part',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      group:' ',fractions:'2;4',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_3.changeBeats(4) +
          ExtendRight.scale(1.0,0.5) +
          RunRight,

          ExtendLeft.scale(1.0,0.5) +
          Forward_3.changeBeats(4) +
          ExtendRight.scale(1.0,0.5) +
          FlipLeft,

          PassThru +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          PassThru +
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Scoot and Plenty, Replace the Box Circulates with a Motivate',
      formation:Formation('Quarter Tag'),
      group:' ',fractions:'6;6;4;4.5;3;4.5',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          FlipRight.skew(-1.0,0.0) +
          Forward_4.changeBeats(3) +
          RunRight.changeBeats(4).scale(2.0,3.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,3.0) +
          LeadRight,

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          FlipRight.changeBeats(5).scale(2.0,2.0) +
          Forward +
          Forward_4 +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft +
          FlipRight +
          Forward_2,

          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          Forward_2.changeBeats(6) +
          RunLeft.changeBeats(4) +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          ExtendLeft.changeBeats(4).scale(4.0,0.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.0,0.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          FlipRight.changeBeats(6).skew(2.0,0.0) +
          Forward_4 +
          CastLeft +
          SwingRight +
          CastLeft +
          Forward_2
      ]),

    AnimatedCall('Swing the Fractions, Replace the Second Part with Trade Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',fractions:'1.5;4;4.5;3',
      paths:[
          HingeRight +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          HingeRight +
          RunRight.changeBeats(4).scale(1.5,2.0) +
          CastRight +
          Stand.changeBeats(3) +
          HingeRight,

          HingeRight +
          RunLeft.changeBeats(4).scale(0.5,2.0),

          HingeRight +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          CastRight +
          SwingLeft +
          HingeRight
      ]),

    AnimatedCall('Swing the Fractions, Replace the Third Part with a Split Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',fractions:'1.5;3;3;3',
      paths:[
          HingeRight +
          SwingLeft +
          RunRight +
          Stand.changeBeats(3) +
          HingeRight,

          HingeRight +
          Stand.changeBeats(3) +
          RunRight +
          SwingLeft +
          HingeRight,

          HingeRight +
          SwingLeft +
          Forward_4.changeBeats(3) +
          SwingLeft +
          HingeRight,

          HingeRight +
          Stand.changeBeats(3) +
          Forward_4.changeBeats(3) +
          Stand.changeBeats(3) +
          HingeRight
      ]),

  ];

