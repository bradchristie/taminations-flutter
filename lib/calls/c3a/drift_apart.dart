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

import '../../animated_call.dart';
import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> DriftApart = [

    AnimatedCall('Drift Apart',
      formation:Formations.NormalLines,
      from:'Facing Lines',fractions:'4',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          FlipLeft.changeBeats(4).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          FlipLeft.changeBeats(4)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',fractions:'4',
      paths:[
          FlipLeft.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipLeft.changeBeats(4).scale(1.0,2.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4).scale(1.0,2.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',fractions:'4',
      paths:[
          Forward_4 +
          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(4.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,2.25),

          RunRight.changeBeats(4).scale(1.0,2.0) +
          Forward_4,

          RunRight.changeBeats(4).scale(1.0,1.25) +
          ExtendRight.changeBeats(4).scale(4.0,0.5)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',fractions:'4',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,0.75) +
          ExtendRight.changeBeats(4).scale(4.0,0.5),

          RunLeft.changeBeats(4).scale(1.0,2.0) +
          Forward_4,

          ExtendLeft.changeBeats(4).scale(4.0,0.5) +
          RunLeft.changeBeats(4).scale(1.0,1.75),

          Forward_4 +
          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Centers In',fractions:'4',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,0.75) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,2.25),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          FlipLeft.changeBeats(4).scale(1.0,1.75),

          RunRight.changeBeats(4).scale(1.0,1.25) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Centers Out',fractions:'4',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          RunRight.changeBeats(4).scale(1.0,1.25),

          FlipLeft.changeBeats(4).scale(1.0,1.75) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4).scale(1.0,2.25) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          RunLeft.changeBeats(4).scale(1.0,0.75)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',fractions:'4',
      paths:[
          ExtendLeft.changeBeats(4).scale(4.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,1.25),

          RunLeft.changeBeats(4).scale(2.0,1.75) +
          ExtendRight.changeBeats(4).scale(4.0,0.5),

          Forward_4 +
          RunLeft.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4) +
          Forward_4
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.OceanWavesLHGBGB,
      from:'Left-Hand Waves',fractions:'4',
      paths:[
          RunLeft.changeBeats(4) +
          Forward_4,

          Forward_4 +
          RunRight.changeBeats(4).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(2.0,2.25) +
          ExtendRight.changeBeats(4).scale(4.0,0.5),

          ExtendLeft.changeBeats(4).scale(4.0,0.5) +
          RunLeft.changeBeats(4).scale(1.0,0.75)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',fractions:'3',
      paths:[
          RunRight +
          Forward_2.changeBeats(3),

          ExtendRight.changeBeats(3).scale(2.0,1.0) +
          RunLeft.scale(0.5,0.5),

          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          Forward_2.changeBeats(3) +
          RunRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',fractions:'3',
      paths:[
          Forward_2.changeBeats(3) +
          RunLeft.scale(0.5,1.0),

          Forward_2.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          RunRight,

          RunLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,1.0)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns, Right-Hand Centers',fractions:'3',
      paths:[
          Forward.changeBeats(1.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          RunLeft.scale(0.5,0.75),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          RunLeft,

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,2.5),

          RunLeft +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns, Left-Hand Centers',fractions:'3',
      paths:[
          RunRight +
          Forward_2.changeBeats(3),

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,1.5),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          RunRight,

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          RunRight.scale(0.5,1.25)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',fractions:'3',
      paths:[
          Forward_2.changeBeats(3) +
          RunRight.scale(0.67,1.0),

          Forward_2.changeBeats(3) +
          FlipLeft,

          ExtendRight.changeBeats(1.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.0) +
          FlipLeft,

          ExtendLeft.changeBeats(1.5).scale(1.5,1.0) +
          ExtendLeft.changeBeats(1.5).scale(0.5,1.0) +
          RunRight
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.TradeBy,
      from:'Trade By',fractions:'3',
      paths:[
          FlipLeft +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          RunRight +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 2.5, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 1, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 2.5, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 1, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  ))
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.TmBoneDRDR,
      from:'T-Bones 1',fractions:'3',
      paths:[
          FlipLeft +
          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0) +
          Forward_2,

          RunLeft +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.TmBoneLDLD,
      from:'T-Bones 2',fractions:'3',
      paths:[
          RunRight +
          Forward_2.changeBeats(3),

          RunLeft.changeBeats(4).scale(1.0,2.0) +
          Forward_2,

          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          FlipRight +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.TmBoneDLDL,
      from:'T-Bones 3',fractions:'3',
      paths:[
          FlipLeft +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          RunLeft,

          RunRight.changeBeats(4).scale(1.0,2.0) +
          Forward_2,

          Forward_2.changeBeats(3) +
          RunRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.TmBoneRDRD,
      from:'T-Bones 4',fractions:'3',
      paths:[
          FlipRight +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          RunRight,

          RunLeft.changeBeats(4).scale(1.0,2.0) +
          Forward_2,

          Forward_2.changeBeats(3) +
          RunLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Drift Apart',
      formation:Formations.TmBoneURUR,
      from:'T-Bones 5',fractions:'3',
      paths:[
          Forward_2.changeBeats(3) +
          FlipRight,

          Forward_2.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          Forward_2.changeBeats(2) +
          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft +
          Forward_2.changeBeats(3)
      ]),
  ];

