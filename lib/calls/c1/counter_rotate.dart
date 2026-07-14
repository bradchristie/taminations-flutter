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

  final List<AnimatedCall> CounterRotate = [

    AnimatedCall('Counter Rotate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:3,y:1.5,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1.5,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1.5,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1.5,angle:90),
  ]),
      from:'Right-Hand Waves',
      taminator: '''
    Turn on Paths in Settings to see the concentric circles the dancers follow.
    ''',
      paths:[
        CounterRotateRight(4.5,-1.5).changeBeats(5),
        CounterRotateLeft(-0.5,2.5).changeBeats(5).changehands(Hands.LEFT),
        CounterRotateLeft(2.5,-0.5).changeBeats(5).changehands(Hands.LEFT),
        CounterRotateRight(1.5,-4.5).changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Ocean Waves LH BGGB Compact'),
      from:'Left-Hand Waves',
      paths:[
        CounterRotateLeft(1.5,4.5).changeBeats(5),
        CounterRotateRight(2.5,0.5).changeBeats(5).changehands(Hands.RIGHT),
        CounterRotateRight(-0.5,-2.5).changeBeats(5).changehands(Hands.RIGHT),
        CounterRotateLeft(4.5,1.5).changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3.5,y:0,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-2.5,y:0,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1.5,y:0,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-.5,y:0,angle:270),
  ]),
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(5).scale(3.5,3.5),

          LeadLeft.changeBeats(5).scale(2.5,2.5),

          LeadRight.changeBeats(5).scale(1.5,1.5),

          LeadLeft.changeBeats(5).scale(0.5,0.5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          LeadRight.changeBeats(5).scale(3.0,3.0),

          CounterRotateRight(5,-1).changeBeats(5),

          HingeLeft.changeBeats(5),

          CounterRotateRight(1,-5).changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Point to Point Diamonds',
      paths:[
          CounterRotateRight(4,2).changeBeats(5).changehands(Hands.RIGHT),

          HingeLeft.changeBeats(5),

          CounterRotateRight(-2,-4).changeBeats(5).changehands(Hands.RIGHT),

          LeadRight.changeBeats(5).scale(5.0,5.0)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Normal Lines Compact'),
      from:'Normal Lines',
      taminator: '''
    Tha dancers cannot follow concentric circles here because they would collide.
    Instead, each dancer needs to know where to go, pass right shoulders
    with the one ahead, then go to that spot.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(3).scale(3,2),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(1,0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(1,-1),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(3).scale(3,1)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Inverted Lines Ends Facing Out Compact'),
      from:'Inverted Lines Centers Facing In',
      paths:[
          LeadLeft.changeBeats(3).scale(1,3) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(1,0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(1,-1),

          LeadRight.changeBeats(3).scale(2,3) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Inverted Lines Ends Facing In Compact'),
      from:'Inverted Lines Centers Facing Out',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(3).scale(3,2),

          QuarterLeft.changeBeats(2).skew(-0.5,1.0) +
          Forward_1p5.changeBeats(3),

          QuarterRight.changeBeats(2).skew(0.5,-1.0) +
          ExtendRight.changeBeats(3).scale(1.5,1.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(3).scale(3,1)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Two-Faced Lines RH Compact'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          CounterRotateRight(4.5,-1.5).changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight(2.5,0.5).changeBeats(5).changehands(Hands.BOTH),

          CounterRotateRight(-0.5,-2.5).changeBeats(5).changehands(Hands.BOTH),

          CounterRotateRight(1.5,-4.5).changeBeats(5).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Two-Faced Lines LH Compact'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          CounterRotateLeft(1.5,4.5).changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft(-0.5,2.5).changeBeats(5).changehands(Hands.BOTH),

          CounterRotateLeft(2.5,-0.5).changeBeats(5).changehands(Hands.BOTH),

          CounterRotateLeft(4.5,1.5).changeBeats(5).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.5) +
          LeadRight.scale(1.0,0.5),

          ExtendRight.changeBeats(3).scale(3.0,1.5) +
          QuarterLeft.skew(1.0,-0.5),

          LeadRight.changeBeats(3).scale(3.0,3.0),

          HingeLeft
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Hourglass Facing RH Box'),
      from:'Facing Hourglass',
      paths:[
          CounterRotateRight(1,-5).changeBeats(5),

          LeadLeft.changeBeats(5).scale(3.0,3.0),

          CounterRotateRight(5,-1).changeBeats(5),

          HingeLeft.changeBeats(5)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          CounterRotateRight(-2,-4).changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight(0,-2).changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight(2,0).changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight(4,2).changeBeats(5).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          CounterRotateLeft(4,-2).changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft(2,0).changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft(0,2).changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft(-2,4).changeBeats(5).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
  ]),
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          CounterRotateLeft(4,-2).changeBeats(5).changehands(Hands.LEFT),

          CounterRotateRight(0,-2).changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight(2,0).changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateLeft(-2,4).changeBeats(5).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('Magic Column LH'),
      from:'Magic Columnns, Left-Hand Centers',
      paths:[
          CounterRotateRight(-2,-4).changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateLeft(2,0).changeBeats(5).changehands(Hands.LEFT),

          CounterRotateLeft(0,2).changeBeats(5).changehands(Hands.LEFT),

          CounterRotateRight(4,2).changeBeats(5).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Counter Rotate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-1.5,y:-3,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1.5,y:-5,angle:180),
  ]),
      from:'Parallelogram',
      paths:[
          CounterRotateRight(2.5,0.5).changehands(Hands.RIGHT),

          CounterRotateRight(-0.5,-2.5).changehands(Hands.RIGHT),

          CounterRotateLeft(4.5,1.5),

          CounterRotateRight(3.5,-6.5)
      ]),

    AnimatedCall('Points Counter Rotate',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          Path(),

          CounterRotateRight(5,-1).changeBeats(5).skew(1.0,0.0),

          Path(),

          CounterRotateRight(1,-5).changeBeats(5).skew(1.0,0.0)
      ]),
  ];

