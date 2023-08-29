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
import '../../moves.dart';

  final List<AnimatedCall> DixieSashay = [

    AnimatedCall('Dixie Sashay',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1.5,angle:270),
  ]),
      from:'Facing Couples',
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.changeBeats(3).scale(2.5,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.25) +
          HingeLeft.scale(1.5,0.75)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ]),
      from:'Facing Couples Close',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.changeBeats(3).scale(1.5,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,1.25) +
          HingeLeft.scale(0.5,0.75)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formation('Tandem Girls Lead'),
      from:'Tandem',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.changeBeats(3).scale(3.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75),

          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.changeBeats(3).scale(3.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          DodgeRight.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeLeft.changeBeats(2).scale(1.8,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.15,1.5) +
          ExtendRight.changeBeats(2).scale(1.15,1.25) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.2,0.75),

          DodgeRight.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeLeft.changeBeats(2).scale(1.8,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.15,1.5) +
          ExtendRight.changeBeats(2).scale(1.15,1.25) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.2,0.75)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          HingeLeft.scale(1.0,0.5),

          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Reverse Dixie Sashay',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:1,y:1.5,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1.5,angle:270),
        ]),
        from:'Facing Couples',
        paths:[

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).skew(0.5,-0.5) +
              ExtendLeft.changeBeats(2).scale(1.5,1.25) +
              HingeRight.scale(1.5,0.75),

          DodgeLeft.changeBeats(4).scale(1.0,0.875) +
              HingeRight.changeBeats(3).scale(2.5,0.75)
        ]),

    AnimatedCall('Reverse Dixie Sashay',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        ]),
        from:'Facing Couples Close',noDisplay: true,
        paths:[

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).skew(0.0,-0.5) +
              ExtendLeft.changeBeats(2).scale(1.0,1.25) +
              HingeRight.scale(0.5,0.75),

          DodgeLeft.changeBeats(4).scale(1.0,0.875) +
              HingeRight.changeBeats(3).scale(1.5,0.75)

        ]),

    AnimatedCall('Reverse Dixie Sashay',
        formation:Formation('Tandem Girls Lead'),
        from:'Tandem',
        paths:[
          Stand.changeBeats(2) +
              ExtendLeft.scale(1.0,0.5) +
              Forward_2 +
              HingeRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
              ExtendLeft.changeBeats(2).scale(2.0,1.0) +
              HingeRight.scale(1.0,0.5)
        ]),

    AnimatedCall('Reverse Dixie Sashay',
        formation:Formation('Normal Lines'),
        from:'Lines',
        paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).skew(1.0,-0.5) +
              ExtendLeft.changeBeats(2).scale(2.0,1.25) +
              HingeRight.scale(1.0,0.75),

          DodgeLeft.changeBeats(4).scale(1.0,0.875) +
              HingeRight.changeBeats(3).scale(3.0,0.75),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).skew(1.0,-0.5) +
              ExtendLeft.changeBeats(2).scale(2.0,1.25) +
              HingeRight.scale(1.0,0.75),

          DodgeLeft.changeBeats(4).scale(1.0,0.875) +
              HingeRight.changeBeats(3).scale(3.0,0.75)
        ]),

    AnimatedCall('Reverse Dixie Sashay',
        formation:Formation('Eight Chain Thru'),
        from:'Eight Chain Thru',
        paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.15,1.5) +
              ExtendLeft.changeBeats(2).scale(1.15,1.25) +
              QuarterRight.changehands(Hands.LEFT).skew(0.2,-0.75),

          DodgeLeft.scale(1.0,0.875).skew(-0.3,0.0) +
              Stand +
              HingeRight.changeBeats(2).scale(1.8,0.75),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.15,1.5) +
              ExtendLeft.changeBeats(2).scale(1.15,1.25) +
              QuarterRight.changehands(Hands.LEFT).skew(0.2,-0.75),

          DodgeLeft.scale(1.0,0.875).skew(-0.3,0.0) +
              Stand +
              HingeRight.changeBeats(2).scale(1.8,0.75)
        ]),

    AnimatedCall('Reverse Dixie Sashay',
        formation:Formation('Double Pass Thru'),
        from:'Double Pass Thru',
        paths:[
          Stand.changeBeats(2) +
              ExtendLeft.scale(1.0,0.5) +
              Forward_2 +
              HingeRight.scale(1.0,0.5),

          Stand.changeBeats(2) +
              ExtendLeft.scale(1.0,0.5) +
              Forward_2 +
              HingeRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
              ExtendLeft.changeBeats(2).scale(2.0,1.0) +
              HingeRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
              ExtendLeft.changeBeats(2).scale(2.0,1.0) +
              HingeRight.scale(1.0,0.5)
        ]),

    AnimatedCall('All 8 Dixie Sashay',
      formation:Formation('Static Square'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(5).scale(1.0,1.75) +
          Forward_2.changehands(Hands.LEFT).skew(0.0,-0.25) +
          HingeLeft,

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75),

          ExtendRight.changeBeats(5).scale(1.0,1.75) +
          Forward_2.changehands(Hands.LEFT).skew(0.0,-0.25) +
          HingeLeft,

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('All Reverse 8 Dixie Sashay',
        formation:Formation('Static Square'),
        group:' ',
        paths:[
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
              ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.75) +
              HingeRight.scale(1.0,0.75),

          ExtendLeft.changeBeats(5).scale(1.0,1.75) +
              Forward_2.changehands(Hands.RIGHT).skew(0.0,0.25) +
              HingeRight,

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
              ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.75) +
              HingeRight.scale(1.0,0.75),

          ExtendLeft.changeBeats(5).scale(1.0,1.75) +
              Forward_2.changehands(Hands.RIGHT).skew(0.0,0.25) +
              HingeRight
        ]),

  ];

