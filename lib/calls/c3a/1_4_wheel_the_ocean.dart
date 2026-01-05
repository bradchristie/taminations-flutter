/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  final List<AnimatedCall> Q14WheelTheOcean = [

    AnimatedCall('1/4 Wheel the Ocean',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',parts:'1.5',
      paths:[
          BackHingeRight +
          Stand.changeBeats(4).changehands(0),

          HingeLeft +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('1/4 Wheel the Ocean',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'1.5',
      paths:[
          HingeLeft +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          BackHingeRight +
          Stand.changeBeats(4).changehands(0),

          BackHingeRight +
          Stand.changeBeats(4).changehands(0),

          HingeLeft +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('1/4 Wheel the Ocean',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',parts:'1.5',
      paths:[
          HingeLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          Forward,

          BackHingeRight.scale(1.0,0.5) +
          Stand.changeBeats(3).changehands(0),

          BackHingeRight.scale(1.0,0.5) +
          Stand.changeBeats(3).changehands(0),

          HingeLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('3/4 Wheel the Ocean',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',parts:'6',
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,0.33) +
          Stand.changeBeats(4).changehands(0),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('3/4 Wheel the Ocean',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'6',
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,0.33) +
          Stand.changeBeats(4).changehands(0),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,0.33) +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('3/4 Wheel the Ocean',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',parts:'6',
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.33,-0.17) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.17,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,0.17) +
          Stand.changeBeats(4).changehands(0),

          HingeLeft.changeBeats(2).skew(0.33,-0.17) +
          HingeLeft.changeBeats(2).skew(-0.17,-0.33) +
          HingeLeft.changeBeats(2).skew(-0.33,0.17) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,1.0),

          HingeLeft.changeBeats(2).skew(0.33,-0.17) +
          HingeLeft.changeBeats(2).skew(-0.17,-0.33) +
          HingeLeft.changeBeats(2).skew(-0.33,0.17) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,1.0),

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.33,-0.17) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.17,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,0.17) +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('1/4 Wheel the Sea',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',parts:'1.5',
      paths:[
          BackHingeRight +
          DodgeRight.changeBeats(4),

          HingeLeft +
          Forward_4
      ]),

    AnimatedCall('1/4 Wheel the Sea',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'1.5',
      paths:[
          HingeLeft +
          Forward_4,

          BackHingeRight +
          DodgeRight.changeBeats(4),

          BackHingeRight +
          DodgeRight.changeBeats(4),

          HingeLeft +
          Forward_4
      ]),

    AnimatedCall('1/4 Wheel the Sea',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',parts:'1.5',
      paths:[
          HingeLeft.scale(1.0,0.5) +
          Forward_2.changeBeats(3),

          BackHingeRight.scale(1.0,0.5) +
          DodgeRight,

          BackHingeRight.scale(1.0,0.5) +
          DodgeRight,

          HingeLeft.scale(1.0,0.5) +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('3/4 Wheel the Sea',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',parts:'4.5',
      paths:[
          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33) +
          DodgeRight.changeBeats(4),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33) +
          Forward_4
      ]),

    AnimatedCall('3/4 Wheel the Sea',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'4.5',
      paths:[
          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33) +
          DodgeRight.changeBeats(4),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33) +
          Forward_4,

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33) +
          Forward_4,

          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33) +
          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('3/4 Wheel the Sea',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',parts:'6',
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.33,-0.17) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.17,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,0.17) +
          DodgeRight,

          HingeLeft.changeBeats(2).skew(0.33,-0.17) +
          HingeLeft.changeBeats(2).skew(-0.17,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,1.0).skew(-0.33,0.17) +
          Forward_2.changeBeats(3),

          HingeLeft.changeBeats(2).skew(0.33,-0.17) +
          HingeLeft.changeBeats(2).skew(-0.17,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,1.0).skew(-0.33,0.17) +
          Forward_2.changeBeats(3),

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.33,-0.17) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.17,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,0.17) +
          DodgeRight
      ]),





    AnimatedCall('Reverse 1/4 Wheel the Ocean',
        formation:Formation('Two-Faced Line RH'),
        from:'Right-Hand Two-Faced Line',parts:'1.5',
        paths:[
          HingeRight +
              ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
              Forward,
          BackHingeLeft +
              Stand.changeBeats(4).changehands(Hands.NONE),
        ]),

    AnimatedCall('Reverse 1/4 Wheel the Ocean',
        formation:Formation('Two-Faced Lines RH'),
        from:'Right-Hand Two-Faced Lines',parts:'1.5',
        paths:[
          HingeRight +
              ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
              Forward,
          BackHingeLeft +
              Stand.changeBeats(4).changehands(Hands.NONE),
          BackHingeLeft +
              Stand.changeBeats(4).changehands(Hands.NONE),
          HingeRight +
              ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
              Forward,
        ]),

    AnimatedCall('Reverse 1/4 Wheel the Ocean',
        formation:Formation('Two-Faced Tidal Line RH'),
        from:'Right-Hand Two-Faced Tidal Line',parts:'1.5',
        paths:[
          HingeRight.scale(1.0,0.5) +
              ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
              Forward,

          BackHingeLeft.scale(1.0,0.5) +
              Stand.changeBeats(3).changehands(Hands.NONE),

          BackHingeLeft.scale(1.0,0.5) +
              Stand.changeBeats(3).changehands(Hands.NONE),

          HingeRight.scale(1.0,0.5) +
              ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
              Forward
        ]),

    AnimatedCall('Reverse 3/4 Wheel the Ocean',
        formation:Formation('Two-Faced Line LH'),
        from:'Left-Hand Two-Faced Line',parts:'6',
        paths:[
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.33,0.33) +
              HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33) +
              HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
              ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
              Forward,
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.33,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,-0.33) +
              Stand.changeBeats(4).changehands(0),
        ]),

    AnimatedCall('Reverse 3/4 Wheel the Ocean',
        formation:Formation('Two-Faced Lines LH'),
        from:'Left-Hand Two-Faced Lines',parts:'6',
        paths:[
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.33,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,-0.33) +
              Stand.changeBeats(4).changehands(0),
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.33,0.33) +
              HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33) +
              HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
              ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
              Forward,
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.33,0.33) +
              HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33) +
              HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
              ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
              Forward,
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.33,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,-0.33) +
              Stand.changeBeats(4).changehands(0),
        ]),

    AnimatedCall('Reverse 3/4 Wheel the Ocean',
        formation:Formation('Two-Faced Tidal Line LH'),
        from:'Left-Hand Two-Faced Tidal Line',parts:'6',
        paths:[
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.33,0.17) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.17,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,-0.17) +
              Stand.changeBeats(4).changehands(0),
          HingeRight.changeBeats(2).skew(0.33,0.17) +
              HingeRight.changeBeats(2).skew(-0.17,0.33) +
              HingeRight.changeBeats(2).skew(-0.33,-0.17) +
              ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,1.0),
          HingeRight.changeBeats(2).skew(0.33,0.17) +
              HingeRight.changeBeats(2).skew(-0.17,0.33) +
              HingeRight.changeBeats(2).skew(-0.33,-0.17) +
              ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,1.0),
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.33,0.17) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.17,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,-0.17) +
              Stand.changeBeats(4).changehands(0),
        ]),

    AnimatedCall('Reverse 1/4 Wheel the Sea',
        formation:Formation('Two-Faced Line RH'),
        from:'Right-Hand Two-Faced Line',parts:'1.5',
        paths:[
          HingeRight +
              Forward_4,
          BackHingeLeft +
              DodgeLeft.changeBeats(4),
        ]),

    AnimatedCall('Reverse 1/4 Wheel the Sea',
        formation:Formation('Two-Faced Lines RH'),
        from:'Right-Hand Two-Faced Lines',parts:'1.5',
        paths:[
          HingeRight +
              Forward_4,
          BackHingeLeft +
              DodgeLeft.changeBeats(4),
          BackHingeLeft +
              DodgeLeft.changeBeats(4),
          HingeRight +
              Forward_4,
        ]),

    AnimatedCall('Reverse 1/4 Wheel the Sea',
        formation:Formation('Two-Faced Tidal Line RH'),
        from:'Right-Hand Two-Faced Tidal Line',parts:'1.5',
        paths:[
          HingeRight.scale(1.0,0.5) +
              Forward_2.changeBeats(3),
          BackHingeLeft.scale(1.0,0.5) +
              DodgeLeft,
          BackHingeLeft.scale(1.0,0.5) +
              DodgeLeft,
          HingeRight.scale(1.0,0.5) +
              Forward_2.changeBeats(3),
        ]),

    AnimatedCall('Reverse 3/4 Wheel the Sea',
        formation:Formation('Two-Faced Line LH'),
        from:'Left-Hand Two-Faced Line',parts:'4.5',
        paths:[
          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
              HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
              HingeRight.scale(2.0,2.0).skew(-0.33,-0.33) +
              Forward_4,
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
              QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
              QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33) +
              DodgeLeft.changeBeats(4),
        ]),

    AnimatedCall('Reverse 3/4 Wheel the Sea',
        formation:Formation('Two-Faced Lines LH'),
        from:'Left-Hand Two-Faced Lines',parts:'4.5',
        paths:[
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
              QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
              QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33) +
              DodgeLeft.changeBeats(4),
          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
              HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
              HingeRight.scale(2.0,2.0).skew(-0.33,-0.33) +
              Forward_4,
          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
              HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
              HingeRight.scale(2.0,2.0).skew(-0.33,-0.33) +
              Forward_4,
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
              QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
              QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33) +
              DodgeLeft.changeBeats(4),
        ]),

    AnimatedCall('Reverse 3/4 Wheel the Sea',
        formation:Formation('Two-Faced Tidal Line LH'),
        from:'Left-Hand Two-Faced Tidal Line',parts:'6',
        paths:[
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.33,0.17) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.17,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,-0.17) +
              DodgeLeft,
          HingeRight.changeBeats(2).skew(0.33,0.17) +
              HingeRight.changeBeats(2).skew(-0.17,0.33) +
              HingeRight.changeBeats(2).scale(2.0,1.0).skew(-0.33,-0.17) +
              Forward_2.changeBeats(3),
          HingeRight.changeBeats(2).skew(0.33,0.17) +
              HingeRight.changeBeats(2).skew(-0.17,0.33) +
              HingeRight.changeBeats(2).scale(2.0,1.0).skew(-0.33,-0.17) +
              Forward_2.changeBeats(3),
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.33,0.17) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.17,0.33) +
              QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.33,-0.17) +
              DodgeLeft,
        ]),



  ];

