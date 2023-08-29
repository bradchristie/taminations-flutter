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

  final List<AnimatedCall> SweepAQuarter = [

    AnimatedCall('Flutterwheel and Sweep a Quarter',
      formation:Formation('Facing Couples Compact'),
      group:' ',
      paths:[
          Forward.changeBeats(3.5).changehands(0).scale(0.5,1.0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.0,0.5) +
          CounterRotateRight_2_0.changeBeats(4).changehands(Hands.RIGHT).skew(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.0,0.25) +
          CounterRotateRight_0_2.changeBeats(4).changehands(Hands.LEFT).skew(0.5,0.5)
      ]),

    AnimatedCall('Reverse Flutterwheel and Sweep a Quarter',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',group:' ',
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.5,-0.25) +
          CounterRotateLeft_0_m2.changeBeats(4).changehands(Hands.RIGHT).skew(0.5,-0.5),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.5) +
          RunLeft.changehands(Hands.LEFT).scale(1.5,2.0).skew(1.5,-0.5) +
          CounterRotateLeft_2_0.changeBeats(4).changehands(Hands.LEFT).skew(0.5,-0.5)
      ]),

    AnimatedCall('Ferris Wheel, Centers Sweep a Quarter',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Handed Two-Faced Lines',group:' ',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(3.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(3.0,0.0) +
          CounterRotateRight_0_2.changehands(Hands.LEFT),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ferris Wheel, Centers Sweep a Quarter',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Handed Two-Faced Lines',group:' ',noDisplay: true,
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(3.0,0.0) +
          CounterRotateLeft_0_m2.changehands(Hands.RIGHT),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,2.0).skew(3.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Flutterwheel and Sweep a Quarter',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',
      paths:[
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.5,0.5) +
          CounterRotateRight_2_0.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,0.25) +
          CounterRotateRight_0_2.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,0.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,1.5).skew(1.5,0.5) +
          CounterRotateRight_2_0.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,0.25) +
          CounterRotateRight_0_2.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0)
      ]),

    AnimatedCall('Recycle and Sweep a Quarter',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',group:' ',fractions:'4',
      paths:[
          RunRight.changeBeats(4).skew(1.0,-2.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0) +
          CounterRotateRight_0_2.changehands(Hands.LEFT).skew(0.0,1.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0) +
          CounterRotateRight_0_2.changehands(Hands.LEFT).skew(0.0,1.0),

          RunRight.changeBeats(4).skew(1.0,-2.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0)
      ]),

    AnimatedCall('Reverse Flutterwheel and Sweep a Quarter',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',group:' ',
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.changehands(Hands.BOTH).scale(0.5,0.5) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.0,-0.5) +
          CounterRotateLeft_0_m2.changeBeats(4).changehands(Hands.RIGHT).skew(0.0,-1.0),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          RunLeft.changehands(Hands.LEFT).skew(1.0,0.5) +
          CounterRotateLeft_2_0.changeBeats(4).changehands(Hands.LEFT).skew(0.0,-1.0),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.changehands(Hands.BOTH).scale(0.5,0.5) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.0,-0.5) +
          CounterRotateLeft_0_m2.changeBeats(4).changehands(Hands.RIGHT).skew(0.0,-1.0),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          RunLeft.changehands(Hands.LEFT).skew(1.0,0.5) +
          CounterRotateLeft_2_0.changeBeats(4).changehands(Hands.LEFT).skew(0.0,-1.0)
      ]),

    AnimatedCall('Wheel and Deal, Centers Sweep a Quarter',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',group:' ',fractions:'4',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateLeft_0_m2.changehands(Hands.RIGHT),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Sweep a Quarter Left',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',noDisplay: true,
      paths:[
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.5,0.5),

          CounterRotateRight_0_2.changehands(Hands.LEFT).skew(0.5,0.5)
      ]),

    AnimatedCall('Sweep a Quarter Left',
      formation:Formation('Normal Lines Compact'),
      from:'Normal Lines',noDisplay: true,
      paths:[
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.5,0.0),

          CounterRotateRight_0_2.changehands(Hands.LEFT).skew(0.5,0.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.5,0.0),

          CounterRotateRight_0_2.changehands(Hands.LEFT).skew(0.5,0.0)
      ]),

    AnimatedCall('Sweep a Quarter Left',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',noDisplay: true,
      paths:[
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,0.5),

          CounterRotateRight_0_2.changehands(Hands.LEFT).skew(0.0,0.5),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,0.5),

          CounterRotateRight_0_2.changehands(Hands.LEFT).skew(0.0,0.5)
      ]),

    AnimatedCall('Sweep a Quarter Right',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',noDisplay: true,
      paths:[
          CounterRotateLeft_0_m2.changehands(Hands.RIGHT).skew(0.5,-0.5),

          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.5,-0.5)
      ]),

    AnimatedCall('Sweep a Quarter Right',
      formation:Formation('Normal Lines Compact'),
      from:'Normal Lines',noDisplay: true,
      paths:[
          CounterRotateLeft_0_m2.changehands(Hands.RIGHT).skew(0.5,0.0),

          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.5,0.0),

          CounterRotateLeft_0_m2.changehands(Hands.RIGHT).skew(0.5,0.0),

          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.5,0.0)
      ]),

    AnimatedCall('Sweep a Quarter Right',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',noDisplay: true,
      paths:[
          CounterRotateLeft_0_m2.changehands(Hands.RIGHT).skew(0.0,-0.5),

          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-0.5),

          CounterRotateLeft_0_m2.changehands(Hands.RIGHT).skew(0.0,-0.5),

          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-0.5)
      ]),
  ];

