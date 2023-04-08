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

  final List<AnimatedCall> LadiesChain = [

    AnimatedCall('Ladies Chain',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',isGenderSpecific:true,fractions:'5',difficulty: 1,
      paths:[
          Stand.changehands(0) +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(1.5,1.75) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(1.5,1.25) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Ladies Chain',
      formation:Formations.NormalLines,
      from:'Normal Lines',isGenderSpecific:true,fractions:'5',difficulty: 1,
      paths:[
          Stand.changehands(0) +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(2.0,1.75) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(2.0,1.25) +
          BelleWheel.scale(0.5,0.75),

          Stand.changehands(0) +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(2.0,1.75) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(2.0,1.25) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Ladies Chain',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',isGenderSpecific:true,fractions:'5',difficulty: 1,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(1.0,1.5) +
          ExtendRight.changeBeats(2.5) +
          BelleWheel.scale(0.5,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(1.0,1.5) +
          ExtendRight.changeBeats(2.5) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Head Ladies Chain',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',isGenderSpecific:true,difficulty: 1,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(3.0,1.75) +
          ExtendRight.changeBeats(2.5).scale(3.0,1.25) +
          BelleWheel.scale(0.5,0.75),

          Path(),

          Path()
      ]),

    AnimatedCall('Side Ladies Chain',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',isGenderSpecific:true,difficulty: 1,
      paths:[
          Path(),

          Path(),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(3.0,1.75) +
          ExtendRight.changeBeats(2.5).scale(3.0,1.25) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Head Ladies Chain Right',
      formation:Formations.StaticSquare,
      group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          BelleWheel.scale(0.75,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(1.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.0,1.5) +
          BelleWheel.scale(0.75,0.75)
      ]),

    AnimatedCall('Side Ladies Chain Right',
      formation:Formations.StaticSquare,
      group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(1.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.0,1.5) +
          BelleWheel.scale(0.5,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          BelleWheel.scale(0.75,0.75)
      ]),

    AnimatedCall('Head Ladies Chain Left',
      formation:Formations.StaticSquare,
      group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(1.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.0,1.5) +
          BelleWheel.scale(0.5,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          BelleWheel.scale(0.75,0.75)
      ]),

    AnimatedCall('Side Ladies Chain Left',
      formation:Formations.StaticSquare,
      group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          BelleWheel.scale(0.75,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(1.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.0,1.5) +
          BelleWheel.scale(0.75,0.75)
      ]),

    AnimatedCall('End Ladies Chain on a Diagonal',
      formation:Formations.NormalLines,
      group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Path(),

          Path(),

          Stand.changeBeats(6) +
          UmTurnLeft.changeBeats(3).changehands(2).skew(0.0,-1.0) +
          BeauWheel.scale(0.5,0.5),

          LeadLeft +
          Forward_2 +
          HingeRight.changeBeats(2) +
          Forward_2.changeBeats(3.5) +
          BelleWheel
      ]),

    AnimatedCall('Center Ladies Chain on a Diagonal',
      formation:Formations.NormalLines,
      group:' ',isGenderSpecific:true,difficulty: 3,
      paths:[
          Stand.changeBeats(2) +
          DodgeRight.changeBeats(4) +
          UmTurnLeft.changeBeats(3).changehands(2).skew(0.0,1.0) +
          BeauWheel.scale(0.5,0.5),

          Forward_2.changeBeats(3.5) +
          HingeRight.changeBeats(2) +
          Forward_2 +
          LeadLeft +
          BelleWheel,

          Path(),

          Path()
      ]),

    AnimatedCall('On a Double Track, Ladies Chain',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      from:'Double Pass Thru',group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Forward.changeBeats(3).scale(0.5,1.0) +
          UmTurnLeft.changeBeats(2).skew(0.5,0.0) +
          BeauWheel.scale(0.5,1.0),

          Forward.changeBeats(3).scale(0.5,1.0) +
          UmTurnLeft.changeBeats(2).skew(0.5,-1.0) +
          BeauWheel.scale(0.5,0.5),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          ExtendLeft.changeBeats(2).scale(0.5,0.5) +
          BelleWheel.scale(0.5,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.5)
      ]),

    AnimatedCall('Four Ladies Chain',
      formation:Formations.StaticSquare,
      from:'Static Square',isGenderSpecific:true,fractions:'5',difficulty: 1,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(3.0,1.75) +
          ExtendRight.changeBeats(2.5).scale(3.0,1.25) +
          BelleWheel.scale(0.5,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(3.0,1.75) +
          ExtendRight.changeBeats(2.5).scale(3.0,1.25) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Four Ladies Chain',
      formation:Formations.NormalLines,
      from:'Normal Lines',isGenderSpecific:true,difficulty: 2,
      paths:[
          DodgeRight.changeBeats(7).scale(1.0,0.75) +
          UmTurnLeft.changeBeats(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.5),

          Forward_2.changeBeats(3.5) +
          HingeRight.changeBeats(2) +
          Forward_2 +
          LeadLeft +
          BelleWheel,

          DodgeRight.changeBeats(7).scale(1.0,0.25) +
          UmTurnLeft.changeBeats(2).skew(0.0,-0.5) +
          BeauWheel.scale(0.5,0.5),

          LeadLeft +
          Forward_2 +
          HingeRight.changeBeats(2) +
          Forward_2.changeBeats(3.5) +
          BelleWheel
      ]),

    AnimatedCall('Four Ladies Chain 3/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',isGenderSpecific:true,fractions:'6.5',difficulty: 1,
      paths:[
          Stand +
          DodgeRight.changeBeats(3.5) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2.5).scale(3.0,2.0) +
          HingeRight +
          ExtendRight.changeBeats(2.5).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.75),

          Stand +
          DodgeRight.changeBeats(3.5) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2.5).scale(3.0,2.0) +
          HingeRight +
          ExtendRight.changeBeats(2.5).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.75)
      ]),

    AnimatedCall('Four Ladies Chain 1/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',isGenderSpecific:true,fractions:'6.5',difficulty: 2,
      paths:[
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,1.0) +
          BelleWheel.scale(1.0,0.75),

          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,1.0) +
          BelleWheel.scale(1.0,0.75)
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formations.TwomFacedLineRH,
      from:'Two-Faced Line',fractions:'3',difficulty: 1,
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight +
          HingeLeft +
          BelleWheel
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formations.CompactTwomFacedLineRH,
      from:'Compact Two-Faced Line',fractions:'3',difficulty: 1,noDisplay: true,
      paths:[
          QuarterRight.changeBeats(3) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeLeft +
          BelleWheel
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          QuarterLeft.changeBeats(3).skew(0.0,1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight +
          HingeLeft +
          BelleWheel
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',fractions:'3',difficulty: 1,
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight +
          HingeLeft +
          BelleWheel,

          SwingRight +
          HingeLeft +
          BelleWheel,

          QuarterRight.changeBeats(3).skew(0.0,-1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5)
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',fractions:'3',difficulty: 1,
      paths:[
          QuarterLeft.changeBeats(3).skew(0.0,1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight +
          HingeLeft +
          BelleWheel,

          SwingRight +
          HingeLeft +
          BelleWheel,

          QuarterLeft.changeBeats(3).skew(0.0,1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5)
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Tidal Two-Faced Line',fractions:'3',difficulty: 2,
      paths:[
          QuarterRight.changeBeats(3) +
          UmTurnLeft.changeBeats(1.5).skew(0.5,-0.5) +
          BeauWheel.scale(0.5,0.75),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.75),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.75),

          QuarterRight.changeBeats(3) +
          UmTurnLeft.changeBeats(1.5).skew(0.5,-0.5) +
          BeauWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formations.TidalWaveLHBGGB,
      from:'Tidal Left-Hand Wave',fractions:'3',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(3) +
          QuarterLeft.changeBeats(.75) +
          BackHingeRight.changeBeats(.75).scale(0.5,0.5) +
          BeauWheel.scale(0.5,0.75),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.75),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.75),

          QuarterLeft.changeBeats(3) +
          QuarterLeft.changeBeats(.75) +
          BackHingeRight.changeBeats(.75).scale(0.5,0.5) +
          BeauWheel.scale(0.5,0.75)
      ]),
  ];

