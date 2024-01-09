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

  final List<AnimatedCall> WheelTheOcean = [

    AnimatedCall('Wheel the Ocean',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'3',
      paths:[
          BelleWheel +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          BeauWheel +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('Wheel the Ocean',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',fractions:'3',
      paths:[
          BelleWheel +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          BeauWheel +
          Stand.changeBeats(4).changehands(0),

          BelleWheel +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          BeauWheel +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('Wheel the Ocean',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'3',
      paths:[
          Stand.changeBeats(7),

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          BelleWheel +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          BeauWheel
      ]),

    AnimatedCall('Wheel the Ocean',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'3',
      paths:[
          BelleWheel +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          BeauWheel,

          Stand.changeBeats(7),

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Wheel the Ocean',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'3',
      paths:[
          BelleWheel.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          Forward,

          BeauWheel.scale(0.5,1.0),

          BelleWheel.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          Forward,

          BeauWheel.scale(0.5,1.0)
      ]),

    AnimatedCall('Wheel the Ocean',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',parts:'3',
      paths:[
          BelleWheel.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          Forward,

          BeauWheel.scale(0.5,1.0),

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          Forward,

          Stand.changeBeats(3) +
          Stand.changeBeats(3).changehands(0)
      ]),

    AnimatedCall('Reverse Wheel the Ocean',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'3',
      paths:[
          BelleReverseWheel +
          Stand.changeBeats(4).changehands(0),

          BeauReverseWheel +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Reverse Wheel the Ocean',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3',
      paths:[
          BelleReverseWheel +
          Stand.changeBeats(4).changehands(0),

          BeauReverseWheel +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          BelleReverseWheel +
          Stand.changeBeats(4).changehands(0),

          BeauReverseWheel +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Reverse Wheel the Ocean',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'3',
      paths:[
          Stand.changeBeats(3).changehands(0) +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          Path(),

          BelleReverseWheel +
          Stand.changeBeats(4).changehands(0),

          BeauReverseWheel +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Reverse Wheel the Ocean',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'3',
      paths:[
          BelleReverseWheel +
          Stand.changeBeats(4).changehands(0),

          BeauReverseWheel +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          Stand.changeBeats(3).changehands(0) +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          Path()
      ]),

    AnimatedCall('Reverse Wheel the Ocean',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'3',
      paths:[
          BelleReverseWheel.scale(0.5,1.0),

          BeauReverseWheel.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          Forward,

          BelleReverseWheel.scale(0.5,1.0),

          BeauReverseWheel.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('Reverse Wheel the Ocean',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',parts:'3',
      paths:[
          BelleReverseWheel.scale(0.5,1.0),

          BeauReverseWheel.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          Forward,

          Path(),

          Stand.changeBeats(3) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('Head Couples Wheel the Ocean',
      formation:Formation('Promenade'),
      group:' ',parts:'2.25',
      paths:[
          BackHingeRight.scale(1.0,0.5) +
          HalfBackHingeRight +
          Stand.changeBeats(3).skew(-0.25,0.25),

          HingeLeft.scale(1.0,0.5) +
          HalfHingeLeft +
          ExtendLeft.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,2.0).skew(-0.25,0.25) +
          Forward,

          HalfBackHingeRight.changeBeats(2.25).scale(0.5,0.5) +
          Stand.changeBeats(3).skew(-0.25,0.25),

          HalfHingeLeft.changeBeats(2.25).scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,2.0).skew(-0.25,-0.75) +
          Forward
      ]),

    AnimatedCall('As Couples Wheel the Ocean',
      formation:Formation('Lines Facing Out'),
      group:' ',fractions:'5',
      paths:[
          BelleWheel.changeBeats(5).scale(3.0,3.0) +
          ExtendLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,4.0) +
          Forward_2.changehands(Hands.BOTH),

          BelleWheel.changeBeats(5).changehands(Hands.BOTH) +
          ExtendLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,4.0) +
          Forward_2.changehands(Hands.RIGHT),

          BeauWheel.changeBeats(5).changehands(Hands.BOTH).scale(0.5,1.0) +
          Stand.changeBeats(6).changehands(Hands.LEFT),

          BeauWheel.changeBeats(5).scale(1.5,3.0) +
          Stand.changeBeats(6).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('All 8 Wheel the Ocean',
      formation:Formation('Static Facing Out'),
      group:' ',fractions:'3',
      paths:[
          BeauWheel,

          BelleWheel +
          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          HingeRight +
          Forward_3,

          BeauWheel,

          BelleWheel +
          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          HingeRight +
          Forward_3
      ]),

    AnimatedCall('All 8 Reverse Wheel the Ocean',
      formation:Formation('Static Facing Out'),
      from:'Squared Couples Facing Out',group:' ',fractions:'3',noDisplay: true,
      paths:[
          BeauReverseWheel +
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft +
          Forward_3,

          BelleReverseWheel,

          BeauReverseWheel +
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft +
          Forward_3,

          BelleReverseWheel
      ]),

    AnimatedCall('Wheel the Sea',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'3',
      paths:[
          BelleWheel +
          Forward_4,

          BeauWheel +
          DodgeRight
      ]),

    AnimatedCall('Wheel the Sea',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3',
      paths:[
          BelleWheel +
          Forward_4,

          BeauWheel +
          DodgeRight,

          BelleWheel +
          Forward_4,

          BeauWheel +
          DodgeRight
      ]),

    AnimatedCall('Wheel the Sea',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'3',
      paths:[
          Stand.changeBeats(3) +
          DodgeRight,

          Stand.changeBeats(3) +
          Forward_4,

          BelleWheel +
          Forward_4,

          BeauWheel +
          DodgeRight
      ]),

    AnimatedCall('Wheel the Sea',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'3',
      paths:[
          BelleWheel +
          Forward_4,

          BeauWheel +
          DodgeRight,

          Stand.changeBeats(3) +
          DodgeRight,

          Stand.changeBeats(3) +
          Forward_4
      ]),

    AnimatedCall('Wheel the Sea',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'3',
      paths:[
          BelleWheel.scale(0.5,1.0) +
          Forward_2,

          BeauWheel.scale(0.5,1.0) +
          DodgeRight,

          BelleWheel.scale(0.5,1.0) +
          Forward_2,

          BeauWheel.scale(0.5,1.0) +
          DodgeRight
      ]),

    AnimatedCall('Wheel the Sea',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',parts:'3',
      paths:[
          BelleWheel.scale(0.5,1.0) +
          Forward_2,

          BeauWheel.scale(0.5,1.0) +
          DodgeRight,

          Stand.changeBeats(3) +
          Forward_2,

          Stand.changeBeats(3) +
          DodgeRight
      ]),

    AnimatedCall('Reverse Wheel the Sea',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'3',
      paths:[
          BelleReverseWheel +
          DodgeLeft,

          BeauReverseWheel +
          Forward_4
      ]),

    AnimatedCall('Reverse Wheel the Sea',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3',
      paths:[
          BelleReverseWheel +
          DodgeLeft,

          BeauReverseWheel +
          Forward_4,

          BelleReverseWheel +
          DodgeLeft,

          BeauReverseWheel +
          Forward_4
      ]),

    AnimatedCall('Reverse Wheel the Sea',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'3',
      paths:[
          Stand.changeBeats(3) +
          Forward_4,

          Stand.changeBeats(3) +
          DodgeLeft,

          BelleReverseWheel +
          DodgeLeft,

          BeauReverseWheel +
          Forward_4
      ]),

    AnimatedCall('Reverse Wheel the Sea',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'3',
      paths:[
          BelleReverseWheel +
          DodgeLeft,

          BeauReverseWheel +
          Forward_4,

          Stand.changeBeats(3) +
          Forward_4,

          Stand.changeBeats(3) +
          DodgeLeft
      ]),

    AnimatedCall('Reverse Wheel the Sea',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'3',
      paths:[
          BelleReverseWheel.scale(0.5,1.0) +
          DodgeLeft,

          BeauReverseWheel.scale(0.5,1.0) +
          Forward_2,

          BelleReverseWheel.scale(0.5,1.0) +
          DodgeLeft,

          BeauReverseWheel.scale(0.5,1.0) +
          Forward_2
      ]),

    AnimatedCall('Reverse Wheel the Sea',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',parts:'3',
      paths:[
          BelleReverseWheel.scale(0.5,1.0) +
          DodgeLeft,

          BeauReverseWheel.scale(0.5,1.0) +
          Forward_2,

          Stand.changeBeats(3) +
          DodgeLeft,

          Stand.changeBeats(3) +
          Forward_2
      ]),

    AnimatedCall('Head Couples Wheel the Sea',
      formation:Formation('Promenade'),
      group:' ',parts:'2.25',
      paths:[
          BackHingeRight.scale(1.0,0.5) +
          HalfBackHingeRight +
          DodgeRight.skew(-0.25,0.25),

          HingeLeft.scale(1.0,0.5) +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(4.0,4.0).skew(-0.25,0.25),

          HalfBackHingeRight.changeBeats(2.25).scale(0.5,0.5) +
          DodgeRight.skew(-0.25,0.25),

          HalfHingeLeft.changeBeats(2.25).scale(0.5,0.5) +
          Forward.changeBeats(4).scale(4.0,4.0).skew(-0.25,-0.75)
      ]),

    AnimatedCall('As Couples Wheel the Sea',
      formation:Formation('Lines Facing Out'),
      group:' ',parts:'5',
      paths:[
          BelleWheel.changeBeats(5).scale(3.0,3.0) +
          Forward_4.changehands(Hands.LEFT),

          BelleWheel.changeBeats(5).changehands(Hands.BOTH) +
          Forward_4.changehands(Hands.RIGHT),

          BeauWheel.changeBeats(5).changehands(Hands.BOTH).scale(0.5,1.0) +
          DodgeRight.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0),

          BeauWheel.changeBeats(5).scale(1.5,3.0) +
          DodgeRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0)
      ]),

    AnimatedCall('All 8 Wheel the Sea',
      formation:Formation('Static Facing Out'),
      group:' ',parts:'3',
      paths:[
          BeauWheel +
          DodgeRight.changeBeats(6),

          BelleWheel +
          Forward_6,

          BeauWheel +
          DodgeRight.changeBeats(6),

          BelleWheel +
          Forward_6
      ]),

    AnimatedCall('All 8 Reverse Wheel the Sea',
      formation:Formation('Static Facing Out'),
      group:' ',parts:'3',noDisplay: true,
      paths:[
          BeauReverseWheel +
          Forward_6,

          BelleReverseWheel +
          DodgeLeft.changeBeats(6),

          BeauReverseWheel +
          Forward_6,

          BelleReverseWheel +
          DodgeLeft.changeBeats(6)
      ]),
  ];

