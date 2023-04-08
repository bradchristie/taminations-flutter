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

  final List<AnimatedCall> StepAndFold = [

    AnimatedCall('Step and Fold',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          RunRight.skew(1.5,0.0),

          Forward.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          RunLeft.skew(1.5,0.0),

          Forward.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',
      paths:[
          RunRight.skew(1.0,0.0),

          Forward
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.DiamondLH,
      from:'Left-Hand Diamond',
      paths:[
          RunLeft.skew(1.0,0.0),

          Forward
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward,

          Forward,

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          FlipLeft.skew(1.0,0.0),

          Forward,

          Forward,

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward.changehands(1),

          Forward.changehands(2),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          FlipLeft.skew(1.0,0.0),

          Forward.changehands(2),

          Forward.changehands(1),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',
      paths:[
          Forward,

          FlipRight.skew(1.0,0.0),

          Forward,

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',
      paths:[
          Forward,

          FlipLeft.skew(1.0,0.0),

          Forward,

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Right-Hand Point-to-Point Diamonds',
      paths:[
          Forward_2,

          UmTurnRight.skew(1.0,0.0),

          Path(),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.DiamondsLHPTPGirlPoints,
      from:'Left-Hand Point-to-Point Diamonds',
      paths:[
          Path(),

          UmTurnLeft.skew(1.0,0.0),

          Forward_2,

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          FlipRight.scale(1.0,0.25).skew(2.0,0.0),

          ExtendRight.changeBeats(3).scale(2.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,0.5),

          FlipRight.scale(1.0,0.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          FlipLeft.scale(1.0,0.25).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          FlipLeft.scale(1.0,0.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.InvertedTidalLineRH,
      from:'Tidal Inverted Line, Right-Hand Centers',
      paths:[
          FlipRight.changeBeats(3).scale(1.0,0.25).skew(2.0,0.0),

          ExtendRight.changeBeats(3).changehands(1).scale(2.0,0.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(2.0,0.5),

          FlipLeft.changeBeats(3).scale(1.0,0.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formations.InvertedTidalLineLH,
      from:'Tidal Inverted Line, Left-Hand Centers',
      paths:[
          FlipLeft.changeBeats(3).scale(1.0,0.25).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).changehands(2).scale(2.0,0.5),

          ExtendRight.changeBeats(3).changehands(1).scale(2.0,0.5),

          FlipRight.changeBeats(3).scale(1.0,0.25).skew(2.0,0.0)
      ]),

    AnimatedCall('All 8 Step and Fold',
      formation:Formations.TharLHBoys,
      group:' ',
      paths:[
          Forward_3,

          RunRight.skew(3.0,0.0),

          Forward_3,

          RunRight.skew(3.0,0.0)
      ]),

    AnimatedCall('All 8 Step and Fold',
      formation:Formations.TharRHBoys,
      group:' ',noDisplay: true,
      paths:[
          Forward_3,

          RunLeft.skew(3.0,0.0),

          Forward_3,

          RunLeft.skew(3.0,0.0)
      ]),

    AnimatedCall('As Couples Step and Fold',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Tidal Two-Faced Line',group:' ',
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(1.0,2.0).skew(2.0,1.5),

          FlipRight.changeBeats(4).changehands(5).skew(2.0,2.5),

          ExtendRight.changeBeats(4).changehands(1).scale(2.0,1.5),

          ExtendRight.changeBeats(4).changehands(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Concentric Step and Fold',
      formation:Formations.ConcentricDiamondsMixed,
      group:' ',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward,

          Forward_2 +
          ExtendLeft,

          RunRight.changeBeats(4).scale(1.0,1.5).skew(3.0,0.0)
      ]),

    AnimatedCall('Concentric Diamond Step and Fold',
      formation:Formations.ConcentricDiamondsMixed,
      group:' ',
      paths:[
          Forward,

          Forward,

          FlipLeft.scale(1.0,0.5).skew(1.0,0.0),

          RunRight.changeBeats(4).scale(1.0,1.5).skew(3.0,0.0)
      ]),

    AnimatedCall('Stretch Step and Fold',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',
      paths:[
          Forward_2.changeBeats(1) +
          RunRight.changeBeats(2).scale(0.5,1.0).skew(1.0,0.0),

          Forward,

          Forward_3,

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Step and Fold',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',
      paths:[
          Forward_4.changeBeats(3) +
          RunRight.skew(1.0,0.0),

          Forward,

          Forward_3,

          RunRight +
          Forward
      ]),

    AnimatedCall('Triple Line Step and Fold',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-4,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-4,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-4,y:3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-4,y:-3,angle:180),
  ]),
      group:' ',
      paths:[
          Forward.changehands(2),

          Forward.changehands(1),

          Forward,

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),
  ];

