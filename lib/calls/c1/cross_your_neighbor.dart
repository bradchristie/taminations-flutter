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

  final List<AnimatedCall> CrossYourNeighbor = [ 

    AnimatedCall('Cross Your Neighbor',
      formation:Formation('Box RH', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
  ]),
      from:'Right-Hand Box',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          LeadRight.changeBeats(3).scale(2.0,1.0) +
          RunRight.changeBeats(3.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Your Neighbor',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          RunLeft.changeBeats(3.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25)
      ]),

    AnimatedCall('Cross Your Neighbor',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          LeadRight.changeBeats(3).scale(2.0,1.0) +
          RunRight.changeBeats(3.5).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          LeadRight.changeBeats(3).scale(2.0,1.0) +
          RunRight.changeBeats(3.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Your Neighbor',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          RunLeft.changeBeats(3.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadLeft.changeBeats(3).scale(2.0,1.0) +
          RunLeft.changeBeats(3.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25)
      ]),

    AnimatedCall('Cross Your Neighbor',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          LeadRight.changeBeats(3).scale(1.5,1.0) +
          RunRight.changeBeats(3.5).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          CastLeft.scale(0.5,0.5),

          LeadRight.changeBeats(3).scale(0.5,1.0) +
          UmTurnRight.changeBeats(3.5),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          CastLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Cross Your Neighbor',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          CastRight.scale(0.5,0.5),

          LeadLeft.changeBeats(3).scale(0.5,1.0) +
          UmTurnLeft.changeBeats(3.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          CastRight.scale(0.5,0.5),

          LeadLeft.changeBeats(3).scale(1.5,1.0) +
          RunLeft.changeBeats(3.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Your Neighbor',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          ExtendRight.changeBeats(2).scale(1.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25)
      ]),

    AnimatedCall('Cross Your Neighbor',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          ExtendRight.changeBeats(2).scale(1.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25)
      ]),

    AnimatedCall('Grand Cross Your Neighbor',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          LeadRight.changeBeats(3).scale(1.5,1.0) +
          RunRight.changeBeats(3.5).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          CastLeft.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          CastLeft.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          CastLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Grand Cross Your Neighbor',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          CastRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          CastRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          CastRight.scale(0.5,0.5),

          LeadLeft.changeBeats(3).scale(1.5,1.0) +
          RunLeft.changeBeats(3.5).scale(1.0,0.5)
      ]),

    AnimatedCall('All 8 Cross Your Neighbor',
      formation:Formations.StaticMiniWavesRH,
      from:'Squared Mini-Waves',group:' ',
      paths:[
          ExtendRight.changeBeats(4.5).scale(3.0,2.0) +
          CastLeft,

          Forward.changeBeats(2) +
          CastRight.changeBeats(6.5),

          ExtendRight.changeBeats(4.5).scale(3.0,2.0) +
          CastLeft,

          Forward.changeBeats(2) +
          CastRight.changeBeats(6.5)
      ]),

    AnimatedCall('As Couples Cross Your Neighbor',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',group:' ',
      paths:[
          ExtendRight.changeBeats(4).changehands(6).scale(2.0,3.5) +
          CastLeft.changeBeats(6).changehands(3).scale(0.5,0.5),

          ExtendRight.changeBeats(4).changehands(5).scale(2.0,2.5) +
          CastLeft.changeBeats(6).scale(1.5,1.5),

          ExtendRight.changeBeats(4).changehands(1).scale(2.0,0.5) +
          CastRight.changeBeats(6).changehands(1).scale(0.5,0.5),

          ExtendRight.changeBeats(4).changehands(2).scale(2.0,1.5) +
          CastRight.changeBeats(6).scale(1.5,1.5)
      ]),

    AnimatedCall('Tandem Cross Your Neighbor',
      formation:Formations.ColumnRHGBGB,
      group:' ',
      paths:[
          RunRight.skew(1.0,0.0) +
          LeadRight +
          Forward,

          Forward_3 +
          RunRight +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1) +
          CounterRotateLeft_0_2.changehands(1),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1) +
          CounterRotateLeft_2_0.changehands(1)
      ]),

    AnimatedCall('Pass and Roll Your Cross Neighbor',
      formation:Formations.EightChainThru,
      group:' ',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          FlipRight.scale(0.5,0.5) +
          QuarterRight,

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          QuarterRight +
          QuarterRight.changeBeats(2).skew(0.0,-1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.changeBeats(2) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changehands(1).scale(1.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.changeBeats(2) +
          SwingLeft.scale(0.5,0.5) +
          QuarterLeft.changehands(1).skew(1.0,-0.5)
      ]),

    AnimatedCall('Left Pass and Roll Your Cross Neighbor',
      formation:Formations.EightChainThru,
      group:' ',
      paths:[
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          SwingLeft.scale(0.5,0.5) +
          Forward_3 +
          QuarterLeft +
          QuarterLeft +
          QuarterLeft.skew(0.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          SwingLeft.scale(0.5,0.5) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          LeadLeft +
          QuarterLeft +
          QuarterLeft,

          ExtendRight.scale(1.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          QuarterRight.changehands(2).skew(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changehands(2).scale(1.0,1.5)
      ]),
  ];

