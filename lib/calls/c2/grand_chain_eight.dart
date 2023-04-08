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

  final List<AnimatedCall> GrandChainEight = [ 

    AnimatedCall('Grand Chain Eight',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      from:'Ends Facing Only',isPerimeter:true,noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,2.5) +
          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.5,2.5) +
          HingeLeft.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Grand Chain Eight',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',
      paths:[
          Stand.changehands(2) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          UmTurnLeft.changehands(2).skew(1.0,-1.0),

          Stand.changeBeats(2).changehands(1) +
          ExtendRight.changeBeats(2) +
          QuarterLeft.changehands(1).skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(2.0,-0.5) +
          UmTurnLeft.changehands(2).skew(1.0,-1.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          QuarterLeft.changehands(1).skew(1.0,0.0)
      ]),

    AnimatedCall('Grand Chain Eight',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:270),
  ]),
      from:'Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,2.5) +
          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(0.5,1.5) +
          HingeLeft.changeBeats(3).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          FlipLeft.changeBeats(4).scale(1.0,0.25).skew(1.5,0.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.5,2.5) +
          HingeLeft.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Grand Chain Eight',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changehands(1).skew(1.0,0.0) +
          UmTurnLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,2.5) +
          HingeLeft.skew(0.0,1.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel
      ]),

    AnimatedCall('Grand Chain Eight',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changehands(1).skew(1.0,0.0) +
          UmTurnLeft,

          Forward.scale(1.0,0.5) +
          BelleWheel,

          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          HingeLeft.skew(0.0,1.0),

          ExtendRight.scale(1.0,2.0) +
          BeauWheel
      ]),

    AnimatedCall('Grand Chain Eight',
      formation:Formations.TidalWave,
      from:'Tidal Wave',
      paths:[
          LeadRight.changeBeats(3).scale(2.5,2.5) +
          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          LeadLeft.changeBeats(4.5).scale(3.5,2.5) +
          HingeLeft.changeBeats(3).scale(1.0,0.5),

          LeadRight.changeBeats(4).scale(0.5,1.5) +
          HingeLeft.changeBeats(3).scale(1.0,0.5),

          FlipLeft.changeBeats(4).scale(1.0,0.25).skew(1.5,0.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Split Grand Chain Eight',
      formation:Formations.TmBoneULRU,
      from:'T-Bones, Ends Facing',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadRight_12.skew(0.0,-0.5) +
          LeadLeft_12.changeBeats(1.5).skew(-0.4,-1.0) +
          QuarterLeft +
          BackHingeRight,

          Stand.changeBeats(2) +
          ExtendRight.changeBeats(2.5).scale(1.0,0.5) +
          QuarterLeft.changehands(1).skew(1.0,0.0),

          Stand.changeBeats(1) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          QuarterLeft +
          BackHingeRight,

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2.5).scale(1.5,0.5) +
          QuarterLeft.changehands(1).skew(1.0,0.0)
      ]),

    AnimatedCall('Split Grand Chain Eight',
      formation:Formations.TmBoneRUUL,
      from:'T-Bones, Centers Facing',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(2.5).scale(1.0,0.5) +
          QuarterLeft.changehands(1).skew(1.0,0.0),

          Stand.changeBeats(1) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          QuarterLeft +
          BackHingeRight,

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2.5).scale(1.5,0.5) +
          QuarterLeft.changehands(1).skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight_12.skew(0.0,-0.5) +
          LeadLeft_12.changeBeats(1.5).skew(-0.4,-1.0) +
          QuarterLeft +
          BackHingeRight
      ]),

    AnimatedCall('Split Grand Chain Eight',
      formation:Formations.TmBoneRLUU,
      from:'T-Bones 3',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2.5).scale(1.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight_12.skew(0.0,-0.5) +
          LeadLeft_12.changeBeats(1.5).skew(-0.37,-1.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          Stand.changeBeats(1) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          Stand.changeBeats(2) +
          ExtendRight.changeBeats(2.5).scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Split Grand Chain Eight',
      formation:Formations.TmBoneUURL,
      from:'T-Bones 4',
      paths:[
          Stand.changeBeats(1) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          Stand.changeBeats(2) +
          ExtendRight.changeBeats(2.5).scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2.5).scale(1.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight_12.skew(0.0,-0.5) +
          LeadLeft_12.changeBeats(1.5).skew(-0.37,-1.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Heads Start Split Grand Chain Eight',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          Forward_2 +
          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2.5).scale(1.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          Forward_2 +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight_12.skew(0.0,-0.5) +
          LeadLeft_12.changeBeats(1.5).skew(-0.4,-1.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          Stand.changeBeats(3) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          Stand.changeBeats(4) +
          ExtendRight.changeBeats(2.5).scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Sides Start Split Grand Chain Eight',
      formation:Formations.StaticSquare,
      group:' ',noDisplay: true,
      paths:[
          Stand.changeBeats(3) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5),

          Stand.changeBeats(4) +
          ExtendRight.changeBeats(2.5).scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5),

          Forward_2 +
          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2.5).scale(1.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          Forward_2 +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight_12.skew(0.0,-0.5) +
          LeadLeft_12.changeBeats(1.5).skew(-0.4,-1.0) +
          QuarterLeft +
          BackHingeRight.scale(1.0,0.5)
      ]),
  ];

