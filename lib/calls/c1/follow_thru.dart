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

  final List<AnimatedCall> FollowThru = [

    AnimatedCall('Follow Thru',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          LeadRight.changeBeats(2).changehands(2).scale(3.0,1.0),

          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          LeadLeft.changeBeats(2),

          LeadLeft.changeBeats(2).changehands(1).scale(3.0,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.BoxRHClose,
      from:'Right-Hand Box Close',noDisplay: true,
      paths:[
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.0),

          LeadRight.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.BoxLHClose,
      from:'Left-Hand Box Close',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2).scale(0.5,1.0),

          LeadLeft.changeBeats(2).changehands(1).scale(1.5,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.SingleQuarterTag,
      from:'Single Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          HingeRight.scale(0.5,0.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          HingeRight.scale(1.5,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.SingleLeftQuarterTag,
      from:'Single Left Quarter Tag',
      paths:[
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          HingeLeft.scale(1.5,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
  ]),
      from:'Single T-Bone',
      paths:[
          Forward +
          HingeLeft,

          LeadRight.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(2).changehands(2).scale(3.0,1.0),

          LeadRight.changeBeats(2),

          LeadRight.changeBeats(2).changehands(2).scale(3.0,1.0),

          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(2),

          LeadLeft.changeBeats(2).changehands(1).scale(3.0,1.0),

          LeadLeft.changeBeats(2),

          LeadLeft.changeBeats(2).changehands(1).scale(3.0,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.0),

          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(2).scale(0.5,1.0),

          LeadRight.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(2).scale(0.5,1.0),

          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',
      paths:[
          ExtendLeft +
          QuarterRight.changehands(2).skew(1.0,0.0),

          LeadRight.changeBeats(2).changehands(2).scale(2.0,1.0),

          LeadRight.changeBeats(2).changehands(2).scale(3.0,1.0),

          LeadRight.changeBeats(2).changehands(2).scale(3.0,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',
      paths:[
          LeadLeft.changeBeats(2).changehands(1).scale(2.0,1.0),

          ExtendRight +
          QuarterLeft.changehands(1).skew(1.0,0.0),

          LeadLeft.changeBeats(2).changehands(1).scale(3.0,1.0),

          LeadLeft.changeBeats(2).changehands(1).scale(3.0,1.0)
      ]),

    AnimatedCall('Follow Thru',
      formation:Formations.TmBoneDLDL,
      from:'T-Bones',
      paths:[
          LeadLeft.changeBeats(2).scale(2.0,1.0),

          LeadRight.changeBeats(2).changehands(2).scale(2.0,1.0),

          LeadLeft.changeBeats(2).scale(2.0,1.0),

          LeadRight.changeBeats(2).changehands(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Grand Follow Thru',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.0),

          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Grand Follow Thru',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(2).scale(1.5,1.0),

          LeadLeft.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('All 8 Follow Thru',
      formation:Formations.StaticMiniWavesRH,
      from:'Squared Mini-Waves',group:' ',
      paths:[
          Forward_3 +
          HingeRight,

          QuarterRight.changeBeats(4.5).skew(0.0,-1.0),

          Forward_3 +
          HingeRight,

          QuarterRight.changeBeats(4.5).skew(0.0,-1.0)
      ]),

    AnimatedCall('As Couples Follow Thru',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',group:' ',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.5) +
          HingeRight.scale(1.5,1.5),

          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5) +
          HingeRight.changehands(3).scale(0.5,0.5),

          HingeRight.changeBeats(3).changehands(1).scale(0.5,1.0),

          HingeRight.changeBeats(3).scale(1.5,3.0)
      ]),

    AnimatedCall('As Couples Follow Thru',
      formation:Formations.TwomFacedLinesLH,
      from:'Two-Faced Lines',group:' ',noDisplay: true,
      paths:[
          HingeLeft.changeBeats(3).scale(1.5,3.0),

          HingeLeft.changeBeats(3).changehands(2).scale(0.5,1.0),

          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,0.5) +
          HingeLeft.changehands(3).scale(0.5,0.5),

          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,1.5) +
          HingeLeft.scale(1.5,1.5)
      ]),

    AnimatedCall('Concentric Follow Thru',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',group:' ',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.0) +
          Stand.changeBeats(2).changehands(0),

          LeadRight.changeBeats(2).scale(0.5,1.0),

          LeadRight.changeBeats(2).scale(1.5,1.0),

          Forward.changeBeats(3).scale(4.5,1.0) +
          LeadRight.changeBeats(1)
      ]),

    AnimatedCall('Stretch Follow Thru',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',group:' ',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.0),

          LeadRight.changeBeats(2).scale(1.5,1.0),

          Forward_2 +
          LeadRight.changeBeats(2).scale(0.5,1.0),

          Forward_2 +
          LeadRight.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Tandem Follow Thru',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',group:' ',
      paths:[
          QuarterRight.changeBeats(4).skew(0.0,-3.0),

          QuarterRight.changeBeats(4).skew(2.0,1.0),

          Forward_2 +
          CounterRotateRight_0_m2.changeBeats(4).changehands(2).skew(0.0,-1.0),

          Forward_2 +
          CounterRotateRight_2_0.changeBeats(4).changehands(2).skew(0.0,1.0)
      ]),
  ];

