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

  final List<AnimatedCall> SiameseConcept = [

    AnimatedCall('Siamese 2/3 Recycle',
      formation:Formation('Siamese Wave'),
      group:'Siamese',
      paths:[
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,2.5) +
          Forward_3.changehands(Hands.RIGHT).skew(0.0,1.0),

          LeadRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,1.5) +
          Forward_3.changehands(Hands.LEFT),

          CounterRotateRight_0_m2 +
          CounterRotateRight_0_m2.skew(0.0,-0.5) +
          CounterRotateRight_0_m2.skew(0.5,0.0),

          CounterRotateRight_2_0 +
          CounterRotateRight_2_0.skew(0.0,-0.5) +
          CounterRotateRight_2_0.skew(0.5,0.0)
      ]),

    AnimatedCall('Siamese Ah So',
      formation:Formation('Siamese Wave'),
      group:'Siamese',
      paths:[
          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(2.0,3.25).skew(2.0,0.0),

          RunRight.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.0,1.75).skew(2.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).skew(-1.0,0.5) +
          CounterRotateRight_0_m2.changeBeats(3).skew(-0.5,-1.0),

          CounterRotateRight_2_0.changeBeats(3).skew(-1.0,0.5) +
          CounterRotateRight_2_0.changeBeats(3).skew(-0.5,-1.0)
      ]),

    AnimatedCall('Siamese Alter the Wave',
      formation:Formation('Siamese Wave'),
      group:'Siamese',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.5) +
          HingeLeft.changehands(Hands.BOTH).scale(0.5,0.5) +
          HingeLeft.changehands(Hands.BOTH).scale(0.5,0.5) +
          HingeLeft.changehands(Hands.BOTH).scale(0.5,0.5) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,0.5) +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,0.5) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.5,0.5),

          RunRight.changeBeats(4).changehands(Hands.LEFT).scale(0.5,0.5) +
          LeadLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.5) +
          LeadLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.5) +
          LeadLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.5) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.5,1.5),

          CounterRotateRight_0_m2 +
          CounterRotateRight_0_m2 +
          Pivotbackwardright.changeBeats(4.5) +
          CounterRotateLeft_2_4.changeBeats(3) +
          CounterRotateLeft_2_4.changeBeats(3) +
          CounterRotateLeft_0_2 +
          CounterRotateLeft_0_2,

          CounterRotateRight_2_0 +
          CounterRotateRight_2_0 +
          Pivotforwardleft.changeBeats(4.5) +
          CounterRotateLeft_4_2.changeBeats(3) +
          CounterRotateLeft_4_2.changeBeats(3) +
          CounterRotateLeft_2_0 +
          CounterRotateLeft_2_0
      ]),

    AnimatedCall('Siamese Bend the Line',
      formation:Formation('Siamese 2-Faced Line'),
      group:'Siamese',
      paths:[
          BackHingeLeft.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          BackHingeLeft.changeBeats(3).changehands(Hands.GRIPLEFT).scale(3.0,1.5),

          CounterRotateRight_2_0.changeBeats(3).skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('Siamese Box 3'),
      group:'Siamese',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.5,3.0),

          RunRight.changeBeats(4).changehands(Hands.LEFT),

          Forward_4,

          Forward_4
      ]),

    AnimatedCall('Siamese Cross Your Neighbor',
      formation:Formation('Siamese Box 3'),
      group:'Siamese',
      paths:[
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0) +
          SwingRight.changeBeats(6).scale(1.5,1.25),

          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(1.5,1.0) +
          UmTurnRight.changeBeats(6).changehands(Hands.LEFT).skew(0.0,0.5),

          ExtendRight.changeBeats(3).scale(1.0,3.0) +
          Forward +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT),

          ExtendRight.changeBeats(3).scale(1.0,3.0) +
          Forward +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Siamese Diamond Circulate',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      group:'Siamese',
      paths:[
          LeadRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(5.0,3.0),

          LeadRight.changeBeats(6).scale(3.0,2.0),

          LeadRight.changeBeats(6).changehands(Hands.GRIPLEFT).scale(3.0,1.0),

          QuarterRight.changeBeats(6).skew(-1.0,-4.0)
      ]),

    AnimatedCall('Siamese Dixie Style to a Wave',
      formation:Formation('Siamese Box 2'),
      group:'Siamese',
      paths:[
          ExtendLeft.changeBeats(3).changehands(Hands.GRIPLEFT).scale(2.0,3.5) +
          ExtendRight.changeBeats(3).changehands(Hands.GRIPLEFT).scale(2.0,3.5) +
          HingeLeft.changeBeats(2).scale(1.5,3.0),

          ExtendLeft.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(2.0,2.5) +
          ExtendRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(2.0,2.5) +
          HingeLeft.changeBeats(2).changehands(Hands.BOTH).scale(0.5,1.0),

          DodgeRight.changeBeats(6).scale(1.0,1.5) +
          CounterRotateLeft_2_0,

          DodgeRight.changeBeats(6).scale(1.0,1.5).skew(-1.0,0.0) +
          CounterRotateLeft_0_2.skew(1.0,0.0)
      ]),

    AnimatedCall('Siamese Follow Thru',
      formation:Formation('Siamese Box 3'),
      group:'Siamese',
      paths:[
          LeadRight.changeBeats(5).changehands(Hands.RIGHT).scale(3.0,3.0),

          LeadRight.changeBeats(5).changehands(Hands.LEFT),

          Forward_2 +
          CounterRotateRight_2_0.changeBeats(3).skew(0.0,-1.0),

          Forward_2 +
          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-1.0)
      ]),

    AnimatedCall('Siamese Mix',
      formation:Formation('Siamese Wave 2'),
      group:'Siamese',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,1.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,2.5),

          DodgeRight +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT),

          DodgeRight +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Siamese Pass the Ocean',
      formation:Formation('Siamese Box 1'),
      group:'Siamese',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.5,3.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.5,2.5),

          ExtendLeft.changeBeats(2).scale(2.5,1.0) +
          CounterRotateLeft_2_0.changeBeats(4).changehands(Hands.LEFT).skew(-0.5,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.0) +
          CounterRotateLeft_0_2.changeBeats(4).changehands(Hands.LEFT).skew(0.5,0.0)
      ]),

    AnimatedCall('Siamese Recycle',
      formation:Formation('Siamese Wave'),
      group:'Siamese',
      paths:[
          RunRight.changeBeats(8).changehands(Hands.RIGHT).scale(2.5,3.25).skew(2.0,0.0),

          RunRight.changeBeats(8).changehands(Hands.LEFT).scale(1.5,1.75).skew(2.0,0.0),

          CounterRotateRight_0_m2.skew(-0.5,-0.25) +
          CounterRotateRight_0_m2.skew(0.25,-0.5) +
          CounterRotateRight_0_m2.skew(0.5,0.25) +
          CounterRotateRight_0_m2.skew(-0.25,0.5),

          CounterRotateRight_2_0.skew(-0.5,-0.25) +
          CounterRotateRight_2_0.skew(0.25,-0.5) +
          CounterRotateRight_2_0.skew(0.5,0.25) +
          CounterRotateRight_2_0.skew(-0.25,0.5)
      ]),

    AnimatedCall('Siamese Spin the Top',
      formation:Formation('Siamese Wave'),
      group:'Siamese',parts:'4',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,0.5) +
          HingeLeft.changeBeats(1.5).changehands(Hands.BOTH).scale(0.5,0.5),

          RunRight.changeBeats(4).changehands(Hands.LEFT).scale(0.5,0.5) +
          RunLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          HingeLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.5),

          CounterRotateRight_0_m2 +
          CounterRotateRight_0_m2 +
          CounterRotateRight_2_m4.changeBeats(4.5),

          CounterRotateRight_2_0 +
          CounterRotateRight_2_0 +
          CounterRotateRight_4_m2.changeBeats(4.5)
      ]),

    AnimatedCall('Siamese Zing',
      formation:Formation('Siamese Box 3'),
      group:'Siamese',
      paths:[
          UmTurnLeft.changehands(Hands.RIGHT) +
          Forward_2.changehands(Hands.RIGHT) +
          LeadLeft.changeBeats(2).changehands(Hands.RIGHT),

          RunLeft.changehands(Hands.RIGHT).scale(1.0,1.5) +
          Forward_2.changehands(Hands.LEFT) +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0),

          Forward_2.changeBeats(4) +
          CounterRotateRight_2_0.changeBeats(3).skew(1.0,1.0),

          Forward_2.changeBeats(4) +
          CounterRotateRight_0_m2.changeBeats(3).skew(1.0,1.0)
      ]),
  ];

