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

  final List<AnimatedCall> DixieStyle = [

    AnimatedCall('Dixie Style to a Wave',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Dixie Style to a Wave',
      formation:Formation('Tandem Girls Lead'),
      from:'Tandem',difficulty: 2,
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Dixie Style to a Wave',
      formation:Formation('Single Quarter Tag'),
      from:'Single Quarter Tag',difficulty: 2,
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,1.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Dixie Style to a Wave',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 1,
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75),

          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Dixie Style to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          DodgeRight.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeLeft.scale(0.8,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.15,1.5) +
          ExtendRight.changeBeats(2).scale(1.15,1.25) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.2,0.75),

          DodgeRight.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeLeft.scale(0.8,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.15,1.5) +
          ExtendRight.changeBeats(2).scale(1.15,1.25) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.2,0.75)
      ]),

    AnimatedCall('Dixie Style to a Wave',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      from:'Double Pass Thru',difficulty: 1,
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5),

          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Dixie Style to a Wave',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',difficulty: 2,
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5),

          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,2.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Dixie Style to a Wave',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-0.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:270),
  ]),
      from:'Tidal Column',difficulty: 3,
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          ExtendLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,1.0) +
          HingeLeft.scale(0.5,0.5),

          Stand.changeBeats(2) +
          ExtendRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          ExtendLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,1.0) +
          HingeLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Reverse Dixie Style to a Wave',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.25) +
          HingeRight.scale(1.0,0.75),

          DodgeLeft.changeBeats(4).scale(1.0,0.875) +
          HingeRight.scale(1.0,0.75)
      ]),

    AnimatedCall('Reverse Dixie Style to a Wave',
      formation:Formation('Tandem Girls Lead'),
      from:'Tandem',difficulty: 2,
      paths:[
          Stand.changeBeats(2) +
          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Reverse Dixie Style to a Wave',
      formation:Formation('Single Left Quarter Tag'),
      from:'Single Left-Hand Quarter Tag',difficulty: 2,
      paths:[
          Stand.changeBeats(2) +
          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,1.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Reverse Dixie Style to a Wave',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).skew(1.0,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.25) +
          HingeRight.scale(1.0,0.75),

          DodgeLeft.changeBeats(4).scale(1.0,0.875) +
          HingeRight.scale(1.0,0.75),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).skew(1.0,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.25) +
          HingeRight.scale(1.0,0.75),

          DodgeLeft.changeBeats(4).scale(1.0,0.875) +
          HingeRight.scale(1.0,0.75)
      ]),

    AnimatedCall('Reverse Dixie Style to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.15,1.5) +
          ExtendLeft.changeBeats(2).scale(1.15,1.25) +
          QuarterRight.changehands(Hands.LEFT).skew(0.2,-0.75),

          DodgeLeft.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeRight.scale(0.8,0.75),

          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.15,1.5) +
          ExtendLeft.changeBeats(2).scale(1.15,1.25) +
          QuarterRight.changehands(Hands.LEFT).skew(0.2,-0.75),

          DodgeLeft.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeRight.scale(0.8,0.75)
      ]),

    AnimatedCall('Reverse Dixie Style to a Wave',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      from:'Double Pass Thru',difficulty: 2,
      paths:[
          Stand.changeBeats(2) +
          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          HingeRight.scale(1.0,0.5),

          Stand.changeBeats(2) +
          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Reverse Dixie Style to a Wave',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',difficulty: 2,
      paths:[
          Stand.changeBeats(2) +
          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          Stand.changeBeats(2) +
          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,2.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Reverse Dixie Style to a Wave',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-0.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1.5,angle:270),
  ]),
      from:'Tidal Column',difficulty: 3,
      paths:[
          Stand.changeBeats(2) +
          ExtendLeft.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          ExtendRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,1.0) +
          HingeRight.scale(0.5,0.5),

          Stand.changeBeats(2) +
          ExtendLeft.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          ExtendRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,1.0) +
          HingeRight.scale(0.5,0.5)
      ]),
  ];

