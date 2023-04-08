/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> SiameseConcept = [ 

    AnimatedCall('Siamese 2/3 Recycle',
      formation:Formations.SiameseWave,
      group:'Siamese',
      paths:[
          LeadRight.changeBeats(2).changehands(2).scale(2.0,2.5) +
          Forward_3.changehands(2).skew(0.0,1.0),

          LeadRight.changeBeats(2).changehands(1).scale(1.0,1.5) +
          Forward_3.changehands(1),

          CounterRotateRight_0_m2 +
          CounterRotateRight_0_m2.skew(0.0,-0.5) +
          CounterRotateRight_0_m2.skew(0.5,0.0),

          CounterRotateRight_2_0 +
          CounterRotateRight_2_0.skew(0.0,-0.5) +
          CounterRotateRight_2_0.skew(0.5,0.0)
      ]),

    AnimatedCall('Siamese Ah So',
      formation:Formations.SiameseWave,
      group:'Siamese',
      paths:[
          RunRight.changeBeats(6).changehands(6).scale(2.0,3.25).skew(2.0,0.0),

          RunRight.changeBeats(6).changehands(5).scale(1.0,1.75).skew(2.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).skew(-1.0,0.5) +
          CounterRotateRight_0_m2.changeBeats(3).skew(-0.5,-1.0),

          CounterRotateRight_2_0.changeBeats(3).skew(-1.0,0.5) +
          CounterRotateRight_2_0.changeBeats(3).skew(-0.5,-1.0)
      ]),

    AnimatedCall('Siamese Alter the Wave',
      formation:Formations.SiameseWave,
      group:'Siamese',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.5,1.5) +
          HingeLeft.changehands(3).scale(0.5,0.5) +
          HingeLeft.changehands(3).scale(0.5,0.5) +
          HingeLeft.changehands(3).scale(0.5,0.5) +
          HingeLeft.changeBeats(3).changehands(3).scale(0.5,0.5) +
          HingeLeft.changeBeats(3).changehands(3).scale(0.5,0.5) +
          LeadLeft.changeBeats(4).changehands(2).scale(2.5,0.5),

          RunRight.changeBeats(4).changehands(1).scale(0.5,0.5) +
          LeadLeft.changeBeats(1.5).changehands(1).scale(1.5,1.5) +
          LeadLeft.changeBeats(1.5).changehands(1).scale(1.5,1.5) +
          LeadLeft.changeBeats(1.5).changehands(1).scale(1.5,1.5) +
          LeadLeft.changeBeats(3).changehands(1).scale(1.5,1.5) +
          LeadLeft.changeBeats(3).changehands(1).scale(1.5,1.5) +
          LeadLeft.changeBeats(4).changehands(1).scale(3.5,1.5),

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
      formation:Formations.Siamese_2mFacedLine_2,
      group:'Siamese',
      paths:[
          BackHingeLeft.changeBeats(3).changehands(6).scale(1.0,0.5),

          BackHingeLeft.changeBeats(3).changehands(5).scale(3.0,1.5),

          CounterRotateRight_2_0.changeBeats(3).skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('Box Circulate',
      formation:Formations.SiameseBox_3,
      group:'Siamese',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(2.5,3.0),

          RunRight.changeBeats(4).changehands(1),

          Forward_4,

          Forward_4
      ]),

    AnimatedCall('Siamese Cross Your Neighbor',
      formation:Formations.SiameseBox_3,
      group:'Siamese',
      paths:[
          LeadRight.changeBeats(4).changehands(2).scale(3.0,3.0) +
          SwingRight.changeBeats(6).scale(1.5,1.25),

          LeadRight.changeBeats(4).changehands(1).scale(1.5,1.0) +
          UmTurnRight.changeBeats(6).changehands(1).skew(0.0,0.5),

          ExtendRight.changeBeats(3).scale(1.0,3.0) +
          Forward +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1),

          ExtendRight.changeBeats(3).scale(1.0,3.0) +
          Forward +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1)
      ]),

    AnimatedCall('Siamese Diamond Circulate',
      formation:Formations.InterlockedDiamondsRHGirlPoints,
      group:'Siamese',
      paths:[
          LeadRight.changeBeats(6).changehands(6).scale(5.0,3.0),

          LeadRight.changeBeats(6).scale(3.0,2.0),

          LeadRight.changeBeats(6).changehands(5).scale(3.0,1.0),

          QuarterRight.changeBeats(6).skew(-1.0,-4.0)
      ]),

    AnimatedCall('Siamese Dixie Style to a Wave',
      formation:Formations.SiameseBox_2,
      group:'Siamese',
      paths:[
          ExtendLeft.changeBeats(3).changehands(5).scale(2.0,3.5) +
          ExtendRight.changeBeats(3).changehands(5).scale(2.0,3.5) +
          HingeLeft.changeBeats(2).scale(1.5,3.0),

          ExtendLeft.changeBeats(3).changehands(6).scale(2.0,2.5) +
          ExtendRight.changeBeats(3).changehands(6).scale(2.0,2.5) +
          HingeLeft.changeBeats(2).changehands(3).scale(0.5,1.0),

          DodgeRight.changeBeats(6).scale(1.0,1.5) +
          CounterRotateLeft_2_0,

          DodgeRight.changeBeats(6).scale(1.0,1.5).skew(-1.0,0.0) +
          CounterRotateLeft_0_2.skew(1.0,0.0)
      ]),

    AnimatedCall('Siamese Follow Thru',
      formation:Formations.SiameseBox_3,
      group:'Siamese',
      paths:[
          LeadRight.changeBeats(5).changehands(2).scale(3.0,3.0),

          LeadRight.changeBeats(5).changehands(1),

          Forward_2 +
          CounterRotateRight_2_0.changeBeats(3).skew(0.0,-1.0),

          Forward_2 +
          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-1.0)
      ]),

    AnimatedCall('Siamese Mix',
      formation:Formations.SiameseWave_2,
      group:'Siamese',
      paths:[
          RunLeft.changeBeats(4).changehands(2).scale(2.0,1.5),

          RunLeft.changeBeats(4).changehands(1).scale(3.0,2.5),

          DodgeRight +
          CounterRotateRight_0_m2.changehands(2) +
          CounterRotateRight_0_m2.changehands(2),

          DodgeRight +
          CounterRotateRight_2_0.changehands(2) +
          CounterRotateRight_2_0.changehands(2)
      ]),

    AnimatedCall('Siamese Pass the Ocean',
      formation:Formations.SiameseBox_1,
      group:'Siamese',
      paths:[
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,0.5) +
          LeadRight.changeBeats(4).changehands(2).scale(3.5,3.5),

          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,1.5) +
          LeadRight.changeBeats(4).changehands(1).scale(2.5,2.5),

          ExtendLeft.changeBeats(2).scale(2.5,1.0) +
          CounterRotateLeft_2_0.changeBeats(4).changehands(1).skew(-0.5,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.0) +
          CounterRotateLeft_0_2.changeBeats(4).changehands(1).skew(0.5,0.0)
      ]),

    AnimatedCall('Siamese Recycle',
      formation:Formations.SiameseWave,
      group:'Siamese',
      paths:[
          RunRight.changeBeats(8).changehands(2).scale(2.5,3.25).skew(2.0,0.0),

          RunRight.changeBeats(8).changehands(1).scale(1.5,1.75).skew(2.0,0.0),

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
      formation:Formations.SiameseWave,
      group:'Siamese',parts:'4',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.5,1.5) +
          RunLeft.changeBeats(3).changehands(3).scale(0.5,0.5) +
          HingeLeft.changeBeats(1.5).changehands(3).scale(0.5,0.5),

          RunRight.changeBeats(4).changehands(1).scale(0.5,0.5) +
          RunLeft.changeBeats(3).changehands(1).scale(1.5,1.5) +
          HingeLeft.changeBeats(1.5).changehands(1).scale(1.5,1.5),

          CounterRotateRight_0_m2 +
          CounterRotateRight_0_m2 +
          CounterRotateRight_2_m4.changeBeats(4.5),

          CounterRotateRight_2_0 +
          CounterRotateRight_2_0 +
          CounterRotateRight_4_m2.changeBeats(4.5)
      ]),

    AnimatedCall('Siamese Zing',
      formation:Formations.SiameseBox_3,
      group:'Siamese',
      paths:[
          UmTurnLeft.changehands(2) +
          Forward_2.changehands(2) +
          LeadLeft.changeBeats(2).changehands(2),

          RunLeft.changehands(2).scale(1.0,1.5) +
          Forward_2.changehands(1) +
          LeadLeft.changeBeats(2).changehands(1).scale(3.0,2.0),

          Forward_2.changeBeats(4) +
          CounterRotateRight_2_0.changeBeats(3).skew(1.0,1.0),

          Forward_2.changeBeats(4) +
          CounterRotateRight_0_m2.changeBeats(3).skew(1.0,1.0)
      ]),
  ];

