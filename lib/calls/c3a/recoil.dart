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

  final List<AnimatedCall> Recoil = [

    AnimatedCall('Recoil',
        formation:Formation('Box RH'),
        from:'Right-Hand Box',
        parts:'4',
      paths:[
          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,0.0) +
          Forward_2.changeBeats(4),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(-2.0,0.0) +
              RunRight.changeBeats(4).skew(2.0,0.0)
      ]),

    AnimatedCall('Recoil',
        formation:Formation('Box LH Compact'),
        from:'Left-Hand Box',
        parts: '4',
        paths:[
          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,2.0).skew(-1.5,0.0) +
              RunLeft.changeBeats(4).skew(1.5,0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.5,0.0) +
              Forward_1p5.changeBeats(4)
        ]),

    AnimatedCall('Recoil',
        formation:Formation('Ocean Waves RH BGBG'),
        from:'Right-Hand Waves',
        parts: '4',
        paths:[
          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,-0.5) +
              Forward_2.changeBeats(4).skew(0,-0.5),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.5,2.0).skew(-2.0,1.5) +
              FlipRight.changeBeats(4).scale(1, 0.25).skew(2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,-0.5) +
              Forward_2.changeBeats(4).skew(0,-0.5),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.5,2.0).skew(-2.0,1.5) +
              FlipRight.changeBeats(4).scale(1,0.25).skew(2.0,0.0),

        ]),

    AnimatedCall('Recoil',
        formation:Formation('Ocean Waves LH BGBG'),
        from:'Left-Hand Waves',
        parts: '4',
        paths:[
          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.5,2.0).skew(-2.0,-1.5) +
              FlipLeft.changeBeats(4).scale(1, 0.25).skew(2, 0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(2.0,0.5) +
              Forward_2.changeBeats(4).skew(0,0.5),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.5,2.0).skew(-2.0,-1.5) +
              FlipLeft.changeBeats(4).scale(1, 0.25).skew(2, 0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(2.0,0.5) +
              Forward_2.changeBeats(4).skew(0,0.5),
        ]),

    AnimatedCall('Recoil',
        formation:Formation('Column RH GBGB'),
        from:'Right-Hand Columns',
        parts: '4',
        paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(-1.0,0.0) +
              FlipRight.changeBeats(4).skew(1,0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.0,0.0) +
              Forward.changeBeats(4),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(-1.0,0.0) +
              FlipRight.changeBeats(4).skew(1,0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.0,0.0) +
              Forward.changeBeats(4),

        ]),

    AnimatedCall('Recoil',
        formation:Formation('Column LH GBGB'),
        from:'Left-Hand Columns',
        parts: '4',
        paths:[
          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0) +
              Forward.changeBeats(4),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(-1.0,0.0) +
              FlipLeft.changeBeats(4).skew(1,0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0) +
              Forward.changeBeats(4),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,2.0).skew(-1.0,0.0) +
              FlipLeft.changeBeats(4).skew(1,0),
        ]),

    AnimatedCall('Recoil',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
          Dancer.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        ]),
        from:'3 and 1 Lines',
        parts: '4',
        paths:[
          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,-0.5) +
              Forward_2.changeBeats(4).skew(0,-0.5),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.5,2.0).skew(-2.0,1.5) +
              FlipRight.changeBeats(4).scale(1, 0.25).skew(2.0,0.0),

          UmTurnRight.changeBeats(4).skew(2.0,-0.5) +
              Forward_2.changeBeats(4).skew(0,-0.5),

          Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 2.5, x2: 2, y2: 2.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )) +
              FlipRight.changeBeats(4).scale(1,0.25).skew(2.0,0.0),

        ]),


  ];

