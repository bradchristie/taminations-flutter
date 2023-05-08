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

  final List<AnimatedCall> CheckerboardAnything = [

    AnimatedCall('Checkerboard Bounce the Boys',
      formation:Formation('Two-Faced Lines RH Compact'),
      group:'Checkerboard',isGenderSpecific:true,
      paths:[
          Forward +
          ExtendRight.changeBeats(3).changehands(2).scale(2.0,4.0) +
          UmTurnRight,

          Forward +
          ExtendRight.changeBeats(3).changehands(1).scale(2.0,4.0),

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Checkerboard Swing Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Checkerboard',
      paths:[
          Forward_2 +
          SwingRight +
          SwingLeft +
          Back_2,

          RunLeft.changeBeats(5).scale(1.0,2.0),

          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          Back_2,

          RunRight.changeBeats(5).scale(2.0,2.0)
      ]),

    AnimatedCall('Checkerboard Tag the Line',
      formation:Formation('Two-Faced Lines RH Compact'),
      group:'Checkerboard',
      paths:[
          Forward.scale(1.5,1.0) +
          LeadRight.scale(0.5,1.0) +
          Forward_2 +
          ExtendLeft,

          Forward.scale(1.5,1.0) +
          LeadRight.scale(0.5,1.0) +
          Forward_2 +
          ExtendLeft,

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Checkerboard Recycle',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Checkerboard',
      paths:[
          Forward_2 +
          RunRight.changeBeats(4).skew(0.75,-2.0) +
          Back.skew(-0.25,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          Stand.changeBeats(2) +
          Forward,

          Forward_2 +
          RunRight.changeBeats(2).scale(0.75,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0) +
          Back,

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0) +
          Stand.changeBeats(2) +
          Forward
      ]),

    AnimatedCall('Checkerboard Swap the Wave',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right Hand Waves',
      paths:[
          Forward_2 +
          LeadRight.changeBeats(2).scale(0.5,3.0) +
          LeadRight.changeBeats(2).scale(1.0,2.5),

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          Stand.changeBeats(1) +
          Forward,

          Forward_2 +
          Forward +
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,2.0),

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0) +
          Stand.changeBeats(1) +
          Forward
      ]),

    AnimatedCall('Checkerboard Swap the Wave',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left Hand Waves',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          Forward.changeBeats(2),

          Forward_2 +
          SwingRight.changeBeats(2).scale(1.0,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0) +
          Forward.changeBeats(2),

          Forward_2 +
          ExtendLeft.scale(2.0,2.0)
      ]),

    AnimatedCall('Checkerbox Recycle',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Checkerbox',
      paths:[
          ExtendRight.scale(1.0,1.5) +
          UmTurnRight.skew(1.0,-0.5) +
          Back_2,

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          Forward,

          Forward.scale(0.5,1.0) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -2, cy1: 2, cx2: 1, cy2: 4, x2: 1.5, y2: 4, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )) +
          Back_2,

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0) +
          Forward
      ]),

    AnimatedCall('Checkerbox Turn Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Checkerbox',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          RunLeft.changeBeats(5).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          RunRight.changeBeats(5).scale(2.0,2.0)
      ]),

    AnimatedCall('Checkerbox Swap Around',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Checkerbox',
      paths:[
          FlipRight.changeBeats(5).scale(1.0,2.0),

          RunLeft.changeBeats(5).scale(1.0,2.0),

          ExtendRight.changeBeats(5).scale(4.0,2.0),

          RunRight.changeBeats(5).scale(2.0,2.0)
      ]),
  ];

