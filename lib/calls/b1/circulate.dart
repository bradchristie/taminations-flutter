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

  final List<AnimatedCall> Circulate = [

    AnimatedCall('Box Circulate',
      formation:Formation('Box RH Compact'),
      from:'Right-Hand Box',fractions:'2',difficulty: 1,notForSequencer: true,
      paths:[
          Forward_3.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('Box LH Compact'),
      from:'Left-Hand Box',fractions:'2',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',fractions:'1.5',difficulty: 3,
      paths:[
          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',fractions:'2',difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('Square RH'),
      from:'Right-Hand Square',noDisplay: true,
      paths:[
          Forward_2,

          Forward_2
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('Square LH'),
      from:'Left-Hand Square',noDisplay: true,
      paths:[
          Forward_2,

          Forward_2
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('Square Facing Out RH'),
      from:'Right-Hand Square Facing Out',noDisplay: true,
      paths:[
          RunRight,

          RunRight
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('Square Facing Out LH'),
      from:'Left-Hand Square Facing Out',noDisplay: true,
      paths:[
          RunLeft,

          RunLeft
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
  ]),
      from:'T-Bone 1',noDisplay: true,
      paths:[
          Forward_2.changeBeats(3),

          RunLeft
      ]),

    AnimatedCall('Box Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]),
      from:'T-Bone 2',noDisplay: true,
      paths:[
          Forward_2.changeBeats(3),

          RunRight
      ]),

    AnimatedCall('Centers Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'2',difficulty: 1,
      paths:[
          Path(),

          RunLeft.changeBeats(4),

          Forward_4,

          Path()
      ]),

    AnimatedCall('Centers Circulate',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'2',difficulty: 1,
      paths:[
          Path(),

          Forward_4,

          RunRight.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Centers Circulate',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',fractions:'2',difficulty: 1,
      paths:[
          Path(),

          Forward_4,

          RunRight.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Ends Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'2',difficulty: 1,
      paths:[
          Forward_4,

          Path(),

          Path(),

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Ends Circulate',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'2',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          Path(),

          Path(),

          Forward_4
      ]),

    AnimatedCall('Ends Circulate',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',fractions:'2',difficulty: 1,
      paths:[
          Forward_4,

          Path(),

          Path(),

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'2',difficulty: 1,
      paths:[
          Forward_4,

          RunLeft.changeBeats(4),

          Forward_4,

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'2',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          Forward_4,

          RunRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_4
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',fractions:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunLeft.changeBeats(4),

          Forward_4,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',fractions:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_4,

          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',fractions:'2',difficulty: 2,
      paths:[
          Forward_4,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',fractions:'2',difficulty: 2,
      paths:[
          Forward_4,

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          Forward_4,

          RunRight.changeBeats(4),

          RunRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          RunLeft.changeBeats(4),

          Forward_4,

          RunRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(1.5,3.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4).scale(2.5,3.0)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',fractions:'2',difficulty: 2,
      taminator: '''
      The result is the same as Couples Trade, but the traffic pattern
      is different.
    ''',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',fractions:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('Trade By'),
      from:'Trade By',difficulty: 3,
      taminator: '''
      Note that this is the same as Trade By.
    ''',
      paths:[
          FlipLeft,

          RunRight,

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5)
      ]),

    AnimatedCall('All 8 Circulate',
      formation:Formation('T-Bone DLDL'),
      from:'T-Bones',difficulty: 3,
      paths:[
          LeadLeft_2.changeBeats(2).scale(1.0,1.5) +
          LeadLeft_2.changeBeats(2).scale(1.5,1.0),

          Forward_2,

          RunRight.changeBeats(2),

          Forward_2
      ]),

    AnimatedCall('Circulate',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',noDisplay: true,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Circulate',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(4).scale(1.0,2.0),

          Forward.changeBeats(4),

          ExtendLeft.changeBeats(1.3).scale(1.0,0.5) +
          ExtendLeft.changeBeats(2.7).scale(2.0,1.5),

          ExtendLeft.changeBeats(1.3).scale(1.0,0.5) +
          ExtendRight.changeBeats(2.7).scale(2.0,0.5)
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'2',difficulty: 1,
      paths:[
          Forward_4,

          RunRight.changeBeats(4),

          Forward_4,

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4),

          Forward_4,

          RunLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',fractions:'1.5',difficulty: 2,
      paths:[
          RunRight,

          Forward_2.changeBeats(3),

          RunRight.scale(0.5,1.0),

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',fractions:'1.5',difficulty: 2,
      paths:[
          Forward_2.changeBeats(3),

          RunLeft.scale(0.5,1.0),

          Forward_2.changeBeats(3),

          RunLeft
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',fractions:'1.5',difficulty: 3,
      paths:[
          FlipLeft,

          RunRight,

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',fractions:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',fractions:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Trade By'),
      from:'Trade By',fractions:'2',difficulty: 2,
      paths:[
          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          QuarterLeft.changeBeats(2).skew(-0.5,1.0) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          RunRight.changeBeats(4).scale(0.5,1.0)
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('T-Bone DLDL'),
      from:'T-Bones',difficulty: 3,
      paths:[
          RunLeft,

          Forward_2,

          RunLeft,

          Forward_2
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',difficulty: 3,
      paths:[
          FlipLeft.skew(-1.0,0.0),

          RunRight.scale(1.0,2.0).skew(-1.0,0.0),

          Forward.changeBeats(3),

          ExtendLeft.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Split Circulate 1 1/2',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Waves',fractions:'2;2',difficulty: 2,
      paths:[
          Forward_4 +
          LeadRight,

          RunRight.changeBeats(4) +
          Forward_2,

          Forward_4 +
          LeadRight,

          RunRight.changeBeats(4) +
          Forward_2
      ]),

    AnimatedCall('Couples Circulate',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',fractions:'2',difficulty: 1,
      paths:[
          Forward_4.changehands(Hands.RIGHT),

          Forward_4.changehands(Hands.LEFT),

          RunRight.changeBeats(4).changehands(Hands.LEFT),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0)
      ]),

    AnimatedCall('Couples Circulate',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',fractions:'2',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0),

          RunLeft.changeBeats(4).changehands(Hands.RIGHT),

          Forward_4.changehands(Hands.RIGHT),

          Forward_4.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Couples Circulate',
      formation:Formation('T-Bone Couples 1'),
      from:'T-Bone Couples',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.0) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.0),

          Forward_4.changehands(Hands.LEFT),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0),

          RunLeft.changeBeats(4).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Column Circulate',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',fractions:'1.5',difficulty: 1,
      paths:[
          RunRight,

          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Column Circulate',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',fractions:'1.5',difficulty: 1,
      paths:[
          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3),

          RunLeft
      ]),

    AnimatedCall('Column Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
  ]),
      from:'Right-Hand Columns of 3',fractions:'1.5',difficulty: 2,
      paths:[
          RunRight,

          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Column Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
  ]),
      from:'Left-Hand Columns of 3',fractions:'1.5',difficulty: 2,
      paths:[
          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3),

          RunLeft
      ]),

    AnimatedCall('Outer 6 Circulate',
      formation:Formation('Mixed Quarter Tag #1'),
      from:'Right-Hand Quarter Waves',isPerimeter:true,difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          RunRight.changeBeats(4),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          Path()
      ]),

    AnimatedCall('Outer 6 Circulate',
      formation:Formation('Mixed Quarter Tag #6'),
      from:'Left-Hand Quarter Waves',isPerimeter:true,difficulty: 2,
      paths:[
          RunLeft.changeBeats(4),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Path()
      ]),
  ];

