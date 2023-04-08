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

  final List<AnimatedCall> Recycle = [ 

    AnimatedCall('Recycle in 3 parts',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',parts:'2;2',
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,1.5) +
          CounterRotateRight_0_m2.scale(1.5,1.5) +
          QuarterRight.changeBeats(2).skew(-0.5,0.0),

          FoldRight.scale(0.75,0.25) +
          CounterRotateRight_2_0.scale(1.5,1.5) +
          QuarterRight.changeBeats(2).skew(0.5,0.0)
      ]),

    AnimatedCall('Recycle in 3 parts',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',parts:'2;2',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,1.5) +
          CounterRotateLeft_0_2.scale(1.5,1.5) +
          QuarterLeft.changeBeats(2).skew(-0.5,0.0),

          FoldLeft.scale(0.75,0.25) +
          CounterRotateLeft_2_0.scale(1.5,1.5) +
          QuarterLeft.changeBeats(2).skew(0.5,0.0)
      ]),

    AnimatedCall('All Eight Recycle',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',
      paths:[
          UmTurnRight.changeBeats(3).skew(3.0,0.0),

          ExtendLeft.changeBeats(6).scale(3.0,4.0),

          CrossFoldRight.changeBeats(6).scale(1.5,1.0),

          RunRight.scale(1.0,0.5).skew(-1.5,0.0) +
          RunRight.scale(1.0,0.5).skew(1.5,0.0)
      ]),

    AnimatedCall('All Eight Recycle',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',
      paths:[
          UmTurnRight.changeBeats(3).skew(3.0,0.0),

          ExtendLeft.changeBeats(6).scale(3.0,4.0),

          CrossFoldLeft.changeBeats(6).scale(1.5,1.0),

          RunLeft.scale(1.0,0.5).skew(-1.5,0.0) +
          RunLeft.scale(1.0,0.5).skew(1.5,0.0)
      ]),

    AnimatedCall('All Eight Recycle',
      formation:Formations.MixedQuarterTag1,
      from:'Quarter Waves',
      paths:[
          UmTurnRight.changeBeats(6).changehands(6).skew(3.0,0.0),

          RunRight.changeBeats(6).changehands(6).skew(-3.0,-2.0),

          CrossFoldRight.changeBeats(6).scale(1.5,1.0),

          RunRight.scale(1.0,0.5).skew(-1.5,0.0) +
          RunRight.scale(1.0,0.5).skew(1.5,0.0)
      ]),

    AnimatedCall('All Eight Recycle',
      formation:Formations.MixedQuarterTag6,
      from:'Left-Hand Quarter Waves',
      paths:[
          RunLeft.changeBeats(6).changehands(5).skew(-3.0,2.0),

          UmTurnLeft.changeBeats(6).changehands(5).skew(3.0,0.0),

          CrossFoldLeft.changeBeats(6).scale(1.5,1.0),

          RunLeft.scale(1.0,0.5).skew(-1.5,0.0) +
          RunLeft.scale(1.0,0.5).skew(1.5,0.0)
      ]),

    AnimatedCall('All Eight Recycle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:0),
  ]),
      from:'I-Beam 1',
      paths:[
          Stand.changeBeats(2).changehands(2) +
          UmTurnRight.changeBeats(3).skew(3.5,-0.33),

          Stand.changeBeats(2).changehands(1) +
          ExtendLeft.changeBeats(6).scale(3.5,3.0),

          CrossFoldRight.changeBeats(6).scale(1.75,0.75),

          RunRight.scale(1.0,0.5).skew(-1.75,0.0) +
          RunRight.scale(1.0,0.375).skew(1.75,0.0)
      ]),

    AnimatedCall('All Eight Recycle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:180),
  ]),
      from:'I-Beam 2',
      paths:[
          Stand.changeBeats(2).changehands(2) +
          UmTurnRight.changeBeats(3).skew(3.5,-0.33),

          Stand.changeBeats(2).changehands(1) +
          ExtendLeft.changeBeats(6).scale(3.5,3.0),

          CrossFoldLeft.changeBeats(6).scale(1.75,0.75),

          RunLeft.scale(1.0,0.5).skew(-1.75,0.0) +
          RunLeft.scale(1.0,0.375).skew(1.75,0.0)
      ]),

    AnimatedCall('All Eight Recycle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:0),
  ]),
      from:'I-Beam 3',
      paths:[
          Stand.changeBeats(1).changehands(2) +
          UmTurnRight.changeBeats(6).changehands(6).skew(3.5,-0.33),

          Stand.changeBeats(1).changehands(1) +
          RunRight.changeBeats(6).changehands(6).skew(-3.5,-1.0),

          CrossFoldRight.changeBeats(6).scale(1.75,0.75),

          RunRight.scale(1.0,0.5).skew(-1.75,0.0) +
          RunRight.scale(1.0,0.375).skew(1.75,0.0)
      ]),

    AnimatedCall('All Eight Recycle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:180),
  ]),
      from:'I-Beam 4',
      paths:[
          Stand.changeBeats(1).changehands(2) +
          RunLeft.changeBeats(6).changehands(5).skew(-3.5,1.0),

          Stand.changeBeats(1).changehands(1) +
          UmTurnLeft.changeBeats(6).changehands(5).skew(3.5,0.33),

          CrossFoldLeft.changeBeats(6).scale(1.75,0.75),

          RunLeft.scale(1.0,0.5).skew(-1.75,0.0) +
          RunLeft.scale(1.0,0.375).skew(1.75,0.0)
      ]),

    AnimatedCall('All 8 Cycle and Wheel',
      formation:Formations.QuarterLinesRH,
      from:'Quarter Lines',
      paths:[
          UmTurnRight.changeBeats(3).skew(3.0,0.0),

          ExtendLeft.changeBeats(6).scale(3.0,4.0),

          UmTurnRight.changeBeats(6).changehands(5).skew(3.0,0.0),

          RunRight.changeBeats(6).changehands(6).scale(2.0,2.0).skew(3.0,0.0)
      ]),

    AnimatedCall('All 8 Cycle and Wheel',
      formation:Formations.QuarterLinesLH,
      from:'Left-Hand Quarter Lines',
      paths:[
          UmTurnRight.changeBeats(3).skew(3.0,0.0),

          ExtendLeft.changeBeats(6).scale(3.0,4.0),

          QuarterLeft.changeBeats(1.5).changehands(6).skew(1.5,-1.0) +
          QuarterLeft.changeBeats(1.5).changehands(6).skew(1.0,-1.5),

          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(3.0,0.0)
      ]),

    AnimatedCall('All 8 Cycle and Wheel',
      formation:Formations.MixedQuarterTag3,
      from:'Mixed Quarter Tag 1',
      paths:[
          UmTurnRight.changeBeats(6).changehands(6).skew(3.0,0.0),

          RunRight.changeBeats(6).changehands(6).skew(-3.0,-2.0),

          RunRight.changeBeats(6).changehands(6).scale(2.0,2.0).skew(3.0,0.0),

          UmTurnRight.changeBeats(6).changehands(5).skew(3.0,0.0)
      ]),

    AnimatedCall('All 8 Cycle and Wheel',
      formation:Formations.MixedQuarterTag8,
      from:'Mixed Quarter Tag 2',
      paths:[
          RunLeft.changeBeats(6).changehands(5).skew(-3.0,2.0),

          UmTurnLeft.changeBeats(6).changehands(5).skew(3.0,0.0),

          RunLeft.changeBeats(6).changehands(5).scale(2.0,2.0).skew(3.0,0.0),

          UmTurnLeft.changeBeats(6).changehands(6).skew(3.0,0.0)
      ]),

    AnimatedCall('All 8 Cycle and Wheel',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:180),
  ]),
      from:'I-Beam 5',
      paths:[
          Stand.changeBeats(1).changehands(2) +
          UmTurnRight.changeBeats(3).skew(3.5,-0.33),

          Stand.changeBeats(1).changehands(1) +
          ExtendLeft.changeBeats(6).scale(3.5,3.0),

          RunRight.changeBeats(6).changehands(6).scale(2.0,1.5).skew(3.5,0.0),

          UmTurnRight.changeBeats(6).changehands(5).skew(3.5,0.33)
      ]),

    AnimatedCall('All 8 Cycle and Wheel',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:0),
  ]),
      from:'I-Beam 6',
      paths:[
          Stand.changeBeats(1).changehands(2) +
          UmTurnRight.changeBeats(3).skew(3.5,-0.33),

          Stand.changeBeats(1).changehands(1) +
          ExtendLeft.changeBeats(6).scale(3.5,3.0),

          RunLeft.changeBeats(4).changehands(5).scale(2.0,1.5).skew(3.5,0.0),

          UmTurnLeft.changeBeats(3).changehands(6).skew(3.5,-0.33)
      ]),

    AnimatedCall('All 8 Cycle and Wheel',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:180),
  ]),
      from:'I-Beam 7',
      paths:[
          UmTurnRight.changeBeats(6).changehands(6).skew(3.5,-0.33),

          RunRight.changeBeats(6).changehands(6).skew(-3.5,-1.0),

          RunRight.changeBeats(6).changehands(6).scale(2.0,1.5).skew(3.5,0.0),

          UmTurnRight.changeBeats(6).changehands(5).skew(3.5,0.33)
      ]),

    AnimatedCall('All 8 Cycle and Wheel',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.67,angle:0),
  ]),
      from:'I-Beam 8',
      paths:[
          Stand.changeBeats(1).changehands(2) +
          RunLeft.changeBeats(6).changehands(5).skew(-3.5,1.0),

          Stand.changeBeats(1).changehands(1) +
          UmTurnLeft.changeBeats(6).changehands(5).skew(3.5,0.33),

          RunLeft.changeBeats(6).changehands(5).scale(2.0,1.5).skew(3.5,0.0),

          UmTurnLeft.changeBeats(6).changehands(6).skew(3.5,-0.33)
      ]),

    AnimatedCall('2/3 Recycle, by definition,',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,2.0) +
          CounterRotateRight_0_m2.changehands(2).scale(1.0,1.25).skew(-0.5,0.0),

          UmTurnRight.changeBeats(2).skew(1.5,0.0) +
          CounterRotateRight_2_0.changehands(2).scale(1.25,1.0).skew(0.0,0.5)
      ]),

    AnimatedCall('2/3 Recycle, by definition,',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,2.0) +
          CounterRotateLeft_0_2.changehands(1).scale(1.0,1.25).skew(-0.5,0.0),

          UmTurnLeft.changeBeats(2).skew(1.5,0.0) +
          CounterRotateLeft_2_0.changehands(1).scale(1.25,1.0).skew(0.0,-0.5)
      ]),

    AnimatedCall('2/3 Recycle, by definition,',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          CounterRotateRight_0_m2.changehands(2).scale(1.0,1.25),

          UmTurnRight.changeBeats(2).skew(1.0,0.0) +
          CounterRotateRight_2_0.changehands(2).skew(0.0,0.5),

          UmTurnRight.changeBeats(2).skew(1.0,0.0) +
          CounterRotateRight_2_0.changehands(2).skew(0.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          CounterRotateRight_0_m2.changehands(2).scale(1.0,1.25)
      ]),

    AnimatedCall('2/3 Recycle, by definition,',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          CounterRotateLeft_0_2.changehands(1).scale(1.0,1.25),

          UmTurnLeft.changeBeats(2).skew(1.0,0.0) +
          CounterRotateLeft_2_0.changehands(1).skew(0.0,-0.5),

          UmTurnLeft.changeBeats(2).skew(1.0,0.0) +
          CounterRotateLeft_2_0.changehands(1).skew(0.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          CounterRotateLeft_0_2.changehands(1).scale(1.0,1.25)
      ]),

    AnimatedCall('2/3 Recycle, by definition,',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,0.5) +
          CounterRotateRight_0_m2.changehands(2).skew(-0.5,0.0),

          UmTurnRight.changeBeats(2).skew(1.5,-0.5) +
          CounterRotateRight_2_0.changehands(2).scale(1.25,1.0),

          UmTurnRight.changeBeats(2).skew(1.5,-0.5) +
          CounterRotateRight_2_0.changehands(2).scale(1.25,1.0),

          ExtendRight.changeBeats(2).scale(1.5,0.5) +
          CounterRotateRight_0_m2.changehands(2).skew(-0.5,0.0)
      ]),

    AnimatedCall('2/3 Recycle, by definition,',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          CounterRotateLeft_0_2.changehands(1).skew(-0.5,0.0),

          UmTurnLeft.changeBeats(2).skew(1.5,0.5) +
          CounterRotateLeft_2_0.changehands(1).scale(1.25,1.0),

          UmTurnLeft.changeBeats(2).skew(1.5,0.5) +
          CounterRotateLeft_2_0.changehands(1).scale(1.25,1.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          CounterRotateLeft_0_2.changehands(1).skew(-0.5,0.0)
      ]),

    AnimatedCall('2/3 Recycle',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(4.5).scale(1.0,4.5),

          HingeRight +
          RunRight.skew(-0.5,0.0)
      ]),

    AnimatedCall('2/3 Recycle',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(4.5).scale(1.0,4.5),

          HingeLeft +
          RunLeft.skew(-0.5,0.0)
      ]),

    AnimatedCall('2/3 Recycle',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(4.5).scale(1.0,5.0),

          CastRight,

          CastRight,

          LeadRight.changeBeats(4.5).scale(1.0,5.0)
      ]),

    AnimatedCall('2/3 Recycle',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(4.5).scale(1.0,5.0),

          CastLeft,

          CastLeft,

          LeadLeft.changeBeats(4.5).scale(1.0,5.0)
      ]),

    AnimatedCall('2/3 Recycle',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(4.5).scale(1.0,2.5),

          LeadRight.skew(0.0,0.17) +
          LeadRight.skew(-0.17,0.0) +
          LeadRight.skew(0.0,-0.16),

          LeadRight.skew(0.0,0.5) +
          LeadRight.skew(-0.5,0.0) +
          LeadRight.scale(1.0,0.5),

          LeadRight.changeBeats(4.5).scale(1.0,2.5)
      ]),

    AnimatedCall('2/3 Recycle',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          LeadLeft.changeBeats(4.5).scale(1.0,2.5),

          LeadLeft.skew(0.0,-0.17) +
          LeadLeft.skew(-0.17,0.0) +
          LeadLeft.skew(0.0,0.16),

          LeadLeft.skew(0.0,-0.5) +
          LeadLeft.skew(-0.5,0.0) +
          LeadLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(4.5).scale(1.0,2.5)
      ]),

    AnimatedCall('As Couples 2/3 Recycle',
      formation:Formations.TwomFacedTidalLineRH,
      group:' ',
      paths:[
          LeadRight.changeBeats(2).changehands(2).scale(3.0,2.5) +
          Forward_3.changeBeats(2.5).changehands(2),

          LeadRight.changeBeats(2).changehands(1).scale(1.0,1.5) +
          Forward_3.changeBeats(2.5).changehands(1),

          QuarterRight.changehands(1).skew(-0.33,-0.17) +
          QuarterRight.changehands(1).skew(0.16,-0.34) +
          QuarterRight.changehands(1).skew(0.33,0.17),

          HingeRight.skew(0.0,-0.17) +
          HingeRight.scale(1.5,1.66) +
          HingeRight.scale(2.33,1.17)
      ]),

    AnimatedCall('Concentric 2/3 Recycle',
      formation:Formations.TidalWaveRHBGGB,
      group:' ',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.0,5.5),

          LeadRight.skew(0.0,0.5) +
          LeadRight.scale(1.0,2.0) +
          LeadRight.scale(2.0,2.0),

          LeadRight.changeBeats(4.5).scale(1.0,3.5),

          LeadRight.scale(1.0,1.17) +
          LeadRight.scale(1.17,1.0) +
          LeadRight.scale(1.0,0.83)
      ]),

    AnimatedCall('Stretch 2/3 Recycle',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.0,5.0),

          LeadRight +
          RunRight.scale(1.0,2.0),

          CastRight,

          LeadRight.changeBeats(4.5).scale(1.0,5.0)
      ]),

    AnimatedCall('Tandem 2/3 Recycle',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',
      paths:[
          Forward_2 +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward_2,

          RunRight.skew(-1.0,0.0) +
          LeadRight.changeBeats(3).scale(2.0,2.0),

          Forward_2 +
          RunRight +
          QuarterRight.changeBeats(1).skew(1.0,0.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendRight.changeBeats(4).scale(4.0,2.0)
      ]),

    AnimatedCall('Box Recycle',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          UmTurnRight.changeBeats(4).changehands(6).skew(2.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(-2.0,0.0)
      ]),

    AnimatedCall('Box Recycle',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(-2.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(5).skew(2.0,0.0)
      ]),

    AnimatedCall('Split Recycle',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          UmTurnRight.changeBeats(4).changehands(6).skew(2.0,-0.5),

          RunRight.changeBeats(4).changehands(6).scale(1.5,2.0).skew(-2.0,1.5),

          UmTurnRight.changeBeats(4).changehands(6).skew(2.0,-0.5),

          RunRight.changeBeats(4).changehands(6).scale(1.5,2.0).skew(-2.0,1.5)
      ]),

    AnimatedCall('Split Recycle',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(4).changehands(5).scale(1.5,2.0).skew(-2.0,-1.5),

          UmTurnLeft.changeBeats(4).changehands(5).skew(2.0,0.5),

          RunLeft.changeBeats(4).changehands(5).scale(1.5,2.0).skew(-2.0,-1.5),

          UmTurnLeft.changeBeats(4).changehands(5).skew(2.0,0.5)
      ]),

    AnimatedCall('Split Recycle',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(6).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(6).skew(1.0,0.0)
      ]),

    AnimatedCall('Split Recycle',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          UmTurnLeft.changeBeats(4).changehands(5).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(5).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Split Recycle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      from:'3 and 1 Lines',
      paths:[
          UmTurnRight.changeBeats(4).changehands(6).skew(2.0,-0.5),

          RunRight.changeBeats(4).changehands(6).scale(1.5,2.0).skew(-2.0,1.5),

          UmTurnRight.changeBeats(4).skew(2.0,-0.5),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 2.5, x2: 2, y2: 2.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  ))
      ]),

    AnimatedCall('As Couples Box Recycle',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',group:' ',
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(1.0,0.5).skew(2.0,-1.5),

          BackRunLeft.changeBeats(4).changehands(7).scale(1.0,0.5).skew(2.0,-0.5),

          RunRight.changeBeats(4).changehands(7).scale(2.0,0.5).skew(-2.0,-2.5),

          RunRight.changeBeats(4).changehands(6).scale(3.0,0.5).skew(-2.0,-5.5)
      ]),

    AnimatedCall('All 8 Box Recycle',
      formation:Formations.StaticMiniWavesRH,
      group:' ',
      paths:[
          UmTurnRight.changeBeats(4).changehands(6).skew(3.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(-3.0,0.0),

          UmTurnRight.changeBeats(4).changehands(6).skew(3.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(-3.0,0.0)
      ]),

    AnimatedCall('All 8 Box Recycle',
      formation:Formations.StaticMiniWavesLH,
      group:' ',noDisplay: true,
      paths:[
          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(-3.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(5).skew(3.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(-3.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(5).skew(3.0,0.0)
      ]),

    AnimatedCall('Concentric Box Recycle',
      formation:Formations.ColumnRHGBGB,
      group:' ',
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(2.0,2.25).skew(-3.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(1.0,2.0).skew(-1.0,1.5),

          UmTurnRight.changeBeats(4).changehands(6).skew(1.0,-0.5),

          UmTurnRight.changeBeats(4).changehands(6).skew(3.0,1.5)
      ]),

    AnimatedCall('Tandem Box Recycle',
      formation:Formations.ColumnRHGBGB,
      group:' ',
      paths:[
          CounterRotateRight_0_m4.changehands(2) +
          CounterRotateRight_0_m4.changehands(2).skew(0.0,-1.0),

          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(6).skew(-1.0,0.0),

          CounterRotateLeft_2_2.changehands(2) +
          CounterRotateLeft_2_2.changehands(2).skew(0.0,1.0)
      ]),

    AnimatedCall('Triple Box Recycle',
      formation:Formations.PhantomWavesRH,
      group:' ',
      paths:[
          UmTurnRight.changeBeats(4).changehands(6).skew(2.0,-0.5),

          RunRight.changeBeats(4).changehands(6).scale(1.5,2.0).skew(-2.0,1.5),

          UmTurnRight.changeBeats(4).changehands(6).skew(2.0,-0.5),

          RunRight.changeBeats(4).changehands(6).scale(1.5,2.0).skew(-2.0,1.5),

          RunRight.changeBeats(4).changehands(6).scale(1.5,2.0).skew(-2.0,1.5),

          UmTurnRight.changeBeats(4).changehands(6).skew(2.0,-0.5)
      ]),
  ];

