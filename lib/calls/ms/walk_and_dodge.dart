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

  final List<AnimatedCall> WalkAndDodge = [

    AnimatedCall('Walk and Dodge',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_4,

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Walk and Dodge',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',difficulty: 2,
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Walk and Dodge',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      taminator: '''
    An analogy is loading a package in a mini-van.
    The door slides open (dodger), the package goes in (walker).
    ''',
      paths:[
          Forward_4,

          DodgeRight.changeBeats(4),

          Forward_4,

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Walk and Dodge',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 2,
      paths:[
          DodgeLeft,

          Forward_4,

          DodgeLeft,

          Forward_4
      ]),

    AnimatedCall('Walk and Dodge',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',difficulty: 2,
      taminator: '''
      Centers facing in must be careful to dodge and not walk.
    ''',
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Walk and Dodge',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',difficulty: 2,
      paths:[
          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Walk and Dodge',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
  ]),
      from:'T-Bones',difficulty: 3,
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Boys Walk, Girls Dodge',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',isGenderSpecific:true,difficulty: 1,
      paths:[
          Forward_3.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Walk, Girls Dodge',
      formation:Formations.NormalLines,
      from:'Lines',isGenderSpecific:true,difficulty: 1,
      paths:[
          Forward_4,

          DodgeLeft.changeBeats(4),

          Forward_4,

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Boys Walk, Girls Dodge',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',isGenderSpecific:true,difficulty: 2,
      paths:[
          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Walk, Boys Dodge',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',isGenderSpecific:true,difficulty: 1,
      paths:[
          DodgeRight.changeBeats(4),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Girls Walk, Boys Dodge',
      formation:Formations.NormalLines,
      from:'Lines',isGenderSpecific:true,difficulty: 1,
      paths:[
          DodgeRight.changeBeats(4),

          Forward_4,

          DodgeRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Girls Walk, Boys Dodge',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',isGenderSpecific:true,difficulty: 2,
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Center 6 Walk and Dodge',
      formation:Formations.MixedQuarterTag2,
      from:'Mixed Quarter Tag 1',difficulty: 3,
      paths:[
          Forward_3.changeBeats(4),

          DodgeRight.changeBeats(4),

          Path(),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Center 6 Walk and Dodge',
      formation:Formations.MixedQuarterTag3,
      from:'Mixed Quarter Tag 2',difficulty: 3,
      paths:[
          Forward_3.changeBeats(4),

          DodgeRight.changeBeats(4),

          Path(),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Center 6 Walk and Dodge',
      formation:Formations.MixedQuarterTag5,
      from:'Mixed Quarter Tag 3',difficulty: 3,
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_3.changeBeats(4),

          Path(),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Center 6 Walk and Dodge',
      formation:Formations.MixedQuarterTag8,
      from:'Mixed Quarter Tag 4',difficulty: 3,
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_3.changeBeats(4),

          Path(),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Outside 6 Walk and Dodge',
      formation:Formations.MixedQuarterTag1,
      from:'Mixed Quarter Tag 1',isPerimeter:true,difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          DodgeRight.changeBeats(4),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          Path()
      ]),

    AnimatedCall('Outside 6 Walk and Dodge',
      formation:Formations.MixedQuarterTag3,
      from:'Mixed Quarter Tag 2',isPerimeter:true,difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          DodgeRight.changeBeats(4),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          Path()
      ]),

    AnimatedCall('Outside 6 Walk and Dodge',
      formation:Formations.MixedQuarterTag6,
      from:'Mixed Quarter Tag 3',isPerimeter:true,difficulty: 3,
      paths:[
          DodgeLeft.changeBeats(4),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Path()
      ]),

    AnimatedCall('Outside 6 Walk and Dodge',
      formation:Formations.MixedQuarterTag8,
      from:'Mixed Quarter Tag 4',isPerimeter:true,difficulty: 3,
      paths:[
          DodgeLeft.changeBeats(4),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Path()
      ]),

    AnimatedCall('3 by 1 Walk and Dodge',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',difficulty: 3,
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('3 by 1 Walk and Dodge',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',difficulty: 3,
      paths:[
          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('1 by 3 Walk and Dodge',
      formation:Formations.OceanWavesRHBGGBCompact,
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          Forward_3.changeBeats(4),

          DodgeRight.changeBeats(4),

          DodgeLeft.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('1 by 3 Walk and Dodge',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 3,
      paths:[
          DodgeLeft.changeBeats(4),

          DodgeRight.changeBeats(4),

          DodgeLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('1 by 3 Walk and Dodge',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 3,
      paths:[
          Forward_4,

          DodgeLeft.changeBeats(4),

          DodgeRight.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('1 by 3 Walk and Dodge',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 3,
      paths:[
          DodgeLeft.changeBeats(4),

          DodgeLeft.changeBeats(4),

          DodgeRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('1 by 3 Walk and Dodge',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',difficulty: 3,
      paths:[
          DodgeLeft.changeBeats(4),

          DodgeRight.changeBeats(4),

          DodgeRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('1 by 3 Walk and Dodge',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',difficulty: 3,
      taminator: '''
      There are 8 different 3 and 1 lines, but only half of them
      have the ends in tandem required for 1 by 3 Walk and Dodge.
    ''',
      paths:[
          Forward_4,

          DodgeLeft.changeBeats(4),

          DodgeLeft.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('1 by 3 Walk and Dodge',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines #5',difficulty: 3,
      taminator: '''
      This is the third illustrated example in the defintion.
    ''',
      paths:[
          Forward_4,

          DodgeRight.changeBeats(4),

          DodgeRight.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('1 by 3 Walk and Dodge',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',difficulty: 3,
      paths:[
          DodgeLeft.changeBeats(4),

          DodgeLeft.changeBeats(4),

          DodgeLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Side Girls Dodge and Others Walk',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      group:' ',difficulty: 2,
      paths:[
          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),
  ];

