/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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
import '../../moves.dart';

  final List<AnimatedCall> Zing = [

    AnimatedCall('Zing',
      formation:Formation('Box RH Compact'),
      from:'Right-Hand Box',
      paths:[
          Forward_2.changeBeats(2.5) +
          QuarterRight.changeBeats(2).skew(0.5,0.5),

          RunLeft.skew(-1.5,0.0) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Zing',
      formation:Formation('Box LH Compact'),
      from:'Left-Hand Box',
      paths:[
          RunRight.skew(-1.5,0.0) +
          LeadRight.scale(1.0,1.5),

          Forward_2.changeBeats(2.5) +
          QuarterLeft.changeBeats(2).skew(0.5,-0.5)
      ]),

    AnimatedCall('Zing',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
  ]),
      from:'T-Bone 1',
      paths:[
          RunLeft.scale(1.0,0.5).skew(-1.0,0.0) +
          LeadLeft.scale(1.0,1.0),

          Forward.changeBeats(2.5) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Zing',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
  ]),
      from:'T-Bone 2',
      paths:[
          RunRight.scale(1.0,0.5).skew(-1.0,0.0) +
          LeadRight.scale(1.0,1.0),

          Forward.changeBeats(2.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Zing',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          LeadLeft,

          Forward.changeBeats(2) +
          QuarterRight.changeBeats(2.5).skew(1.0,1.0),

          RunLeft.skew(-1.0,0.0) +
          LeadLeft,

          Forward.changeBeats(2) +
          QuarterRight.changeBeats(2.5).skew(1.0,1.0)
      ]),

    AnimatedCall('Zing',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward.changeBeats(2) +
          QuarterLeft.changeBeats(2.5).skew(1.0,-1.0),

          RunRight.skew(-1.0,0.0) +
          LeadRight,

          Forward.changeBeats(2) +
          QuarterLeft.changeBeats(2.5).skew(1.0,-1.0),

          RunRight.skew(-1.0,0.0) +
          LeadRight
      ]),

    AnimatedCall('Zing',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          Forward.changeBeats(2) +
          QuarterRight.changeBeats(2.5).skew(1.0,1.0),

          Forward.changeBeats(2) +
          QuarterLeft.changeBeats(2.5).skew(1.0,-1.0),

          RunLeft.skew(-1.0,0.0) +
          LeadLeft,

          RunRight.skew(-1.0,0.0) +
          LeadRight
      ]),

    AnimatedCall('Zing',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          RunRight.skew(-1.0,0.0) +
          LeadRight,

          RunLeft.skew(-1.0,0.0) +
          LeadLeft,

          Forward.changeBeats(2) +
          QuarterLeft.changeBeats(2.5).skew(1.0,-1.0),

          Forward.changeBeats(2) +
          QuarterRight.changeBeats(2.5).skew(1.0,1.0)
      ]),

    AnimatedCall('Zing',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_2 +
          QuarterRight.changeBeats(2.5).skew(1.0,0.0),

          Forward_2 +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0),

          RunRight.scale(1.0,0.25).skew(-2.0,0.0) +
          LeadRight.scale(1.0,0.5),

          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          LeadLeft
      ]),

    AnimatedCall('Zing',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunRight.scale(1.0,0.5).skew(-2.0,0.0) +
          LeadRight,

          RunLeft.scale(1.0,0.25).skew(-2.0,0.0) +
          LeadLeft.scale(1.0,0.5),

          Forward_2 +
          QuarterRight.changeBeats(2.5).skew(1.0,0.0),

          Forward_2 +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Zing',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          Forward_2 +
          QuarterRight.changeBeats(2.5).skew(1.0,0.0),

          RunLeft.scale(1.0,0.25).skew(-2.0,0.0) +
          LeadLeft.scale(1.0,0.5),

          Forward_2 +
          QuarterRight.changeBeats(2.5).skew(1.0,0.0),

          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          LeadLeft
      ]),

    AnimatedCall('Zing',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          RunRight.scale(1.0,0.5).skew(-2.0,0.0) +
          LeadRight,

          Forward_2 +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0),

          RunRight.scale(1.0,0.25).skew(-2.0,0.0) +
          LeadRight.scale(1.0,0.5),

          Forward_2 +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Points Zing',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Diamonds',
      paths:[
          Path(),

          QuarterRight.changeBeats(4).skew(3.0,0.0),

          Path(),

          RunLeft.skew(-2.0,-1.0) +
          LeadLeft
      ]),

    AnimatedCall('All 4 Couples Zing',
      formation:Formation('Static MiniWaves RH'),
      group:' ',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_2 +
          LeadLeft,

          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_2 +
          LeadLeft
      ]),

    AnimatedCall('As Couples Zing',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,1.0) +
          QuarterRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(3.0,0.0),

          Forward_2.changeBeats(4).changehands(Hands.LEFT) +
          QuarterRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,1.0),

          RunLeft.changehands(Hands.LEFT).scale(1.0,1.5) +
          Forward_3.changehands(Hands.LEFT) +
          LeadLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(2.0,2.0),

          UmTurnLeft.changehands(Hands.RIGHT) +
          Forward_3.changehands(Hands.RIGHT) +
          QuarterLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).skew(0.0,1.0)
      ]),

    AnimatedCall('Butterfly Zing',
      formation:Formation('Butterfly RH'),
      group:' ',
      paths:[
          LeadRight.changeBeats(3).scale(2.0,2.0),

          RunLeft.scale(0.5,0.5).skew(-1.0,0.0) +
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          RunLeft +
          QuarterLeft.changeBeats(2).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          QuarterRight
      ]),

    AnimatedCall('Concentric Zing',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          RunLeft.scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_2 +
          LeadLeft,

          RunLeft.scale(0.5,0.5).skew(-1.0,0.0) +
          LeadLeft,

          QuarterRight.changeBeats(3).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          QuarterRight.changeBeats(2).skew(2.0,0.0)
      ]),

    AnimatedCall('"O" Zing',
      formation:Formation('O RH'),
      group:' ',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          QuarterRight,

          RunLeft +
          QuarterLeft.changeBeats(2).skew(2.0,0.0),

          RunLeft.scale(0.5,0.5).skew(-1.0,0.0) +
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Stretch Zing',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',group:' ',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          Forward_2 +
          LeadLeft,

          Forward.changeBeats(2) +
          QuarterRight.changeBeats(2.5).skew(1.0,1.0),

          RunLeft.skew(-1.0,0.0) +
          LeadLeft,

          Forward_3 +
          QuarterRight.changeBeats(2.5).skew(1.0,1.0)
      ]),

    AnimatedCall('Tandem Zing',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          Forward_2 +
          RunLeft.skew(-1.0,0.0) +
          Forward_2 +
          QuarterLeft.skew(1.0,0.0),

          Forward_2.changeBeats(6) +
          QuarterRight,

          ExtendLeft.changeBeats(6).scale(3.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,1.0)
      ]),
  ];

