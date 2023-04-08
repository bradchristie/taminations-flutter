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

  final List<AnimatedCall> PeelOff = [

    AnimatedCall('Peel Off',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',difficulty: 2,
      paths:[
          Forward +
          UmTurnLeft.changeBeats(3).skew(1.0,0.0),

          RunLeft.changeBeats(4).skew(-2.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',difficulty: 2,
      paths:[
          RunRight.changeBeats(4).skew(-2.0,0.0),

          Forward +
          UmTurnRight.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
  ]),
      from:'Right-Hand Z Facing In',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4),

          UmTurnLeft.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
  ]),
      from:'Left-Hand Z Facing In',difficulty: 1,
      paths:[
          RunRight.changeBeats(4),

          UmTurnRight.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
  ]),
      from:'Right-Hand Z Facing Out',difficulty: 2,
      paths:[
          UmTurnLeft,

          RunLeft.skew(-2.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
  ]),
      from:'Left-Hand Z Facing Out',difficulty: 2,
      paths:[
          UmTurnRight,

          RunRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',difficulty: 2,
      paths:[
          Forward.scale(0.7,1.0) +
          UmTurnLeft.skew(0.3,0.0),

          Forward.scale(0.7,1.0) +
          UmTurnRight.skew(0.3,0.0),

          FlipLeft.changeBeats(4).skew(-1.0,0.0),

          FlipRight.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).skew(-1.0,0.0),

          RunLeft.changeBeats(4).skew(-1.0,0.0),

          Forward.scale(0.7,1.0) +
          UmTurnRight.skew(0.3,0.0),

          Forward.scale(0.7,1.0) +
          UmTurnLeft.skew(0.3,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).skew(-1.0,0.0),

          Forward.scale(0.7,1.0) +
          UmTurnLeft.skew(0.3,0.0),

          RunLeft.changeBeats(4).skew(-1.0,0.0),

          Forward.scale(0.7,1.0) +
          UmTurnLeft.skew(0.3,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',difficulty: 2,
      paths:[
          Forward.scale(0.7,1.0) +
          UmTurnRight.skew(0.3,0.0),

          RunRight.changeBeats(4).skew(-1.0,0.0),

          Forward.scale(0.7,1.0) +
          UmTurnRight.skew(0.3,0.0),

          RunRight.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.RightmHandZs,
      from:'Right-Hand Zs',difficulty: 1,
      paths:[
          UmTurnLeft.changeBeats(4).skew(2.0,0.0),

          RunLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          UmTurnLeft.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.LeftmHandZs,
      from:'Left-Hand Zs',difficulty: 1,
      taminator: '''
      The very center girls might not start with a handhold if the
      previous call was Girls Fold.  But Peel Off works just the same.
    ''',
      paths:[
          UmTurnRight.changeBeats(4).skew(2.0,0.0),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          UmTurnRight.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.QuarterZRH,
      from:'Right-Hand Z-Tag',difficulty: 2,
      paths:[
          UmTurnLeft.changeBeats(4).skew(2.0,-0.5),

          RunLeft.changeBeats(4).scale(0.5,0.25),

          UmTurnLeft.changeBeats(4).skew(2.0,-0.5),

          RunLeft.changeBeats(4).scale(0.5,0.25)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.QuarterZLH,
      from:'Left-Hand Z-Tag',difficulty: 2,
      paths:[
          UmTurnRight.changeBeats(4).skew(2.0,0.5),

          RunRight.changeBeats(4).scale(0.5,0.25),

          UmTurnRight.changeBeats(4).skew(2.0,0.5),

          RunRight.changeBeats(4).scale(0.5,0.25)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 3,
      paths:[
          Forward +
          UmTurnLeft.changeBeats(3).skew(1.0,-0.5),

          Forward +
          UmTurnRight.changeBeats(3).skew(1.0,0.5),

          FlipRight.changeBeats(4).skew(-2.0,1.5),

          FlipLeft.changeBeats(4).skew(-2.0,-1.5)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 3,
      paths:[
          FlipRight.changeBeats(4).skew(-2.0,1.5),

          FlipLeft.changeBeats(4).skew(-2.0,-1.5),

          Forward +
          UmTurnLeft.changeBeats(3).skew(1.0,-0.5),

          Forward +
          UmTurnRight.changeBeats(3).skew(1.0,0.5)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          Forward +
          UmTurnLeft.changeBeats(3).skew(1.0,-0.5),

          FlipLeft.changeBeats(4).skew(-2.0,-1.5),

          Forward +
          UmTurnLeft.changeBeats(3).skew(1.0,-0.5),

          FlipLeft.changeBeats(4).skew(-2.0,-1.5)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',difficulty: 3,
      paths:[
          FlipRight.changeBeats(4).skew(-2.0,1.5),

          Forward +
          UmTurnRight.changeBeats(3).skew(1.0,0.5),

          FlipRight.changeBeats(4).skew(-2.0,1.5),

          Forward +
          UmTurnRight.changeBeats(3).skew(1.0,0.5)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.TmBoneLULU,
      from:'T-Bones',difficulty: 3,
      paths:[
          FlipLeft.changeBeats(3).skew(-1.0,0.0),

          UmTurnRight.changeBeats(3).skew(1.0,0.0),

          FlipLeft.changeBeats(3).skew(-1.0,0.0),

          UmTurnRight.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('Peel Off',
      formation:Formations.StaticMiniWavesRH,
      from:'Static Mini-Waves',difficulty: 3,
      paths:[
          Forward_2 +
          UmTurnLeft.changeBeats(2).skew(1.0,0.0),

          RunLeft.changeBeats(4).skew(-3.0,0.0),

          Forward_2 +
          UmTurnLeft.changeBeats(2).skew(1.0,0.0),

          RunLeft.changeBeats(4).skew(-3.0,0.0)
      ]),

    AnimatedCall('Ends Peel Off',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          Forward +
          UmTurnLeft.skew(1.0,0.0),

          Path(),

          Path(),

          RunLeft.changeBeats(4).skew(-2.0,0.0)
      ]),

    AnimatedCall('Ends Peel Off',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',difficulty: 3,
      paths:[
          RunRight.changeBeats(4).skew(-2.0,0.0),

          Path(),

          Path(),

          Forward +
          UmTurnRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Points Peel Off',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',difficulty: 3,
      paths:[
          Path(),

          Forward +
          UmTurnLeft.skew(1.0,0.0),

          Path(),

          RunLeft.changeBeats(4).skew(-2.0,0.0)
      ]),
  ];

