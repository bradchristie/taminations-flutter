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

  final List<AnimatedCall> TrailOff = [

    AnimatedCall('Trail Off',
      formation:Formations.BoxRHBoysLead,
      from:'Right-Hand Box',
      paths:[
          RunRight.scale(1.0,2.0).skew(-2.0,0.0),

          Forward_2 +
          SwingRight
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          RunLeft.scale(1.0,2.0).skew(-2.0,0.0),

          Forward_2 +
          SwingLeft
      ]),

    AnimatedCall('Trail Off',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
  ]),
      from:'Right-Hand Z Facing Out',
      paths:[
          SwingRight,

          RunRight.scale(1.0,2.0).skew(-2.0,0.0)
      ]),

    AnimatedCall('Trail Off',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
  ]),
      from:'Left-Hand Z Facing Out',
      paths:[
          SwingLeft,

          RunLeft.scale(1.0,2.0).skew(-2.0,0.0)
      ]),

    AnimatedCall('Trail Off',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
  ]),
      from:'Right-Hand Z Facing In',
      paths:[
          RunRight.scale(2.0,2.0),

          Forward_2 +
          SwingRight
      ]),

    AnimatedCall('Trail Off',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
  ]),
      from:'Left-Hand Z Facing In',
      paths:[
          RunLeft.scale(2.0,2.0),

          Forward_2 +
          SwingLeft
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          RunRight.scale(1.0,2.0).skew(-1.0,0.0),

          Forward +
          SwingRight,

          RunRight.scale(1.0,2.0).skew(-1.0,0.0),

          Forward +
          SwingRight
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          Forward +
          SwingLeft,

          RunLeft.scale(1.0,2.0).skew(-1.0,0.0),

          Forward +
          SwingLeft,

          RunLeft.scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.RightmHandZs,
      from:'Right-Hand Zs',
      paths:[
          Forward_2.changeBeats(3) +
          SwingRight,

          RunRight.changeBeats(6).scale(1.5,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0),

          Forward_2.changeBeats(3) +
          SwingRight
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.LeftmHandZs,
      from:'Left-Hand Zs',
      paths:[
          Forward_2.changeBeats(3) +
          SwingLeft,

          RunLeft.changeBeats(6).scale(1.5,2.0),

          RunLeft.changeBeats(6).scale(1.5,2.0),

          Forward_2.changeBeats(3) +
          SwingLeft
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          QuarterRight.changeBeats(2).skew(1.0,1.0),

          LeadLeft.changeBeats(2) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          FlipRight.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0),

          RunLeft.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',
      taminator: '''
      Some dancers in the trailing position perform a partner trade, with the
      beau passing in front of the belle.  This animation shows the movement
      as defined, with the belle passing in front of the beau.
    ''',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,2.0).skew(-1.0,0.0),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0),

          RunLeft.skew(1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',
      paths:[
          Forward +
          FlipRight.skew(1.0,0.5),

          Forward +
          RunLeft.skew(1.0,-0.5),

          RunLeft.skew(-1.0,0.5) +
          Forward,

          FlipRight.skew(-1.0,-0.5) +
          Forward
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.625),

          RunRight.changeBeats(5).skew(-2.0,-0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.625),

          RunRight.changeBeats(5).skew(-2.0,-0.5)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(5).skew(-2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.625),

          RunLeft.changeBeats(5).skew(-2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.625)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.QuarterZRH,
      from:'Right-Hand Z-Tag',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunRight.changeBeats(5).scale(1.5,1.25),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunRight.changeBeats(5).scale(1.5,1.25)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.QuarterZLH,
      from:'Left-Hand Z-Tag',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          RunLeft.changeBeats(5).scale(1.5,1.25),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          RunLeft.changeBeats(5).scale(1.5,1.25)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.TmBoneURUR,
      from:'T-Bones 1',
      paths:[
          Forward.changeBeats(2) +
          SwingRight.changeBeats(4),

          RunLeft.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0),

          Forward.changeBeats(2) +
          SwingRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.TmBoneRDRD,
      from:'T-Bones 2',
      paths:[
          RunRight.changeBeats(6).skew(-1.0,0.0),

          Forward.changeBeats(2) +
          SwingLeft.changeBeats(4).skew(1.0,0.0),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0),

          Forward.changeBeats(2) +
          SwingLeft.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.TmBoneDLDL,
      from:'T-Bones 3',
      paths:[
          RunLeft.changeBeats(6).skew(-1.0,0.0),

          Forward.changeBeats(2) +
          SwingRight.changeBeats(4).skew(1.0,0.0),

          RunLeft.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0),

          Forward.changeBeats(2) +
          SwingRight.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Trail Off',
      formation:Formations.TmBoneLULU,
      from:'T-Bones 4',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0),

          Forward.changeBeats(2) +
          SwingLeft.changeBeats(4),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0),

          Forward.changeBeats(2) +
          SwingLeft.changeBeats(4)
      ]),

    AnimatedCall('As Couples Trail Off',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.5) +
          SwingRight.changeBeats(4).scale(1.5,1.5),

          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(1).skew(-2.0,-1.5),

          RunRight.changeBeats(6).changehands(2).scale(2.5,2.5).skew(-2.0,-1.5)
      ]),

    AnimatedCall('All 8 Trail Off',
      formation:Formations.StaticMiniWavesRH,
      from:'Mini-Waves',
      paths:[
          Forward_3 +
          SwingRight,

          RunRight.changeBeats(6).skew(-3.0,-2.0),

          Forward_3 +
          SwingRight,

          RunRight.changeBeats(6).skew(-3.0,-2.0)
      ]),
  ];

