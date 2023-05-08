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
import '../../moves.dart';

  final List<AnimatedCall> AnythingAndWeave = [

    AnimatedCall('Weave',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
  ]),
      from:'Right-Hand Box',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          HingeLeft.scale(1.0,0.5),

          LeadRight
      ]),

    AnimatedCall('Weave',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          LeadLeft,

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Weave',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:90),
  ]),
      from:'Single Eight Chain Thru',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          HingeLeft,

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Weave',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          HingeLeft.scale(1.0,0.5),

          LeadRight,

          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          HingeLeft.scale(1.0,0.5),

          LeadRight
      ]),

    AnimatedCall('Weave',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          LeadLeft,

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          HingeRight.scale(1.0,0.5),

          LeadLeft,

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Weave',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          LeadRight.scale(0.5,1.0),

          ExtendRight.changeBeats(1.5).scale(1.0,1.5) +
          HingeLeft.scale(0.5,0.5),

          LeadRight.scale(0.5,1.0),

          ExtendRight.changeBeats(1.5).scale(1.0,1.5) +
          HingeLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Weave',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,1.5) +
          HingeRight.scale(0.5,0.5),

          LeadLeft.scale(0.5,1.0),

          ExtendLeft.changeBeats(1.5).scale(1.0,1.5) +
          HingeRight.scale(0.5,0.5),

          LeadLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Weave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          ExtendLeft +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeLeft.scale(1.0,0.5),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft +
          QuarterRight.skew(1.0,0.0),

          Forward +
          LeadRight
      ]),

    AnimatedCall('As Couples Weave',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(3).changehands(2).scale(2.0,3.5) +
          LeadLeft.changeBeats(2).changehands(3).scale(0.5,0.5),

          ExtendRight.changeBeats(3).changehands(1).scale(2.0,2.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,1.5),

          LeadRight.changeBeats(2).changehands(1).scale(0.5,1.0),

          LeadRight.changeBeats(2).changehands(2).scale(1.5,3.0)
      ]),

    AnimatedCall('All 8 Weave',
      formation:Formation('Static MiniWaves RH'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          HingeLeft,

          QuarterRight.changeBeats(2).skew(0.0,-1.0),

          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          HingeLeft,

          QuarterRight.changeBeats(2).skew(0.0,-1.0)
      ]),

    AnimatedCall('Tandem Weave',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-0.5),

          CounterRotateRight_2_0.changeBeats(3).skew(0.0,0.5),

          ExtendRight.scale(1.0,1.5) +
          Forward +
          CounterRotateLeft_0_2,

          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          CounterRotateLeft_2_0.skew(0.0,-1.0)
      ]),

    AnimatedCall('Tandem Weave',
      formation:Formation('Column LH GBGB'),
      group:' ',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          CounterRotateRight_2_0.skew(0.0,1.0),

          ExtendLeft.scale(1.0,1.5) +
          Forward +
          CounterRotateRight_0_m2,

          CounterRotateLeft_2_0.changeBeats(3).skew(0.0,-0.5),

          CounterRotateLeft_0_2.changeBeats(3).skew(0.0,0.5)
      ]),
  ];

