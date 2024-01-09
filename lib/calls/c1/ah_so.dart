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

  final List<AnimatedCall> AhSo = [

    AnimatedCall('Ah So',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          RunRight.changehands(Hands.GRIPRIGHT).scale(1.5,2.0).skew(1.5,0.0),

          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          RunLeft.changehands(Hands.GRIPLEFT).scale(1.5,2.0).skew(1.5,0.0),

          UmTurnLeft.changehands(Hands.GRIPLEFT).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          RunRight.changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(-1.0,0.0),

          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(-1.0,0.0),

          RunRight.changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changehands(Hands.GRIPLEFT).skew(-1.0,0.0),

          UmTurnLeft.changehands(Hands.GRIPLEFT).skew(-1.0,0.0),

          RunLeft.changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',
      paths:[
          RunLeft.changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(-1.0,0.0),

          RunRight.changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines #6',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(-1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(-1.5,0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(-1.5,0.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal 3 and 1 Line #1'),
      from:'Tidal 3 and 1 Lines #1',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal 3 and 1 Line #2'),
      from:'Tidal 3 and 1 Lines #2',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal 3 and 1 Line #3'),
      from:'Tidal 3 and 1 Lines #3',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal 3 and 1 Line #4'),
      from:'Tidal 3 and 1 Lines #4',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(-1.5,0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.5,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal 3 and 1 Line #5'),
      from:'Tidal 3 and 1 Lines #5',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(-1.5,0.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal 3 and 1 Line #6'),
      from:'Tidal 3 and 1 Lines #6',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(-1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal 3 and 1 Line #7'),
      from:'Tidal 3 and 1 Lines #7',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(-1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Tidal 3 and 1 Line #8'),
      from:'Tidal 3 and 1 Lines #8',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Inverted Tidal Line RH'),
      from:'Right-Hand Inverted Tidal Line',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(-1.5,0.0)
      ]),

    AnimatedCall('Ah So',
      formation:Formation('Inverted Tidal Line LH'),
      from:'Left-Hand Inverted Tidal Line',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,1.25).skew(-1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.RIGHT).skew(-1.5,-0.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.25).skew(1.5,0.0)
      ]),

    AnimatedCall('As Couples Ah So',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',group:' ',
      paths:[
          RunRight.changeBeats(5).changehands(Hands.GRIPRIGHT).scale(2.0,3.0).skew(1.5,-0.5),

          RunRight.changeBeats(5).changehands(Hands.GRIPBOTH).scale(1.0,2.0).skew(1.5,0.5),

          UmTurnRight.changeBeats(5).changehands(Hands.GRIPBOTH).skew(-1.5,0.5),

          RunRight.changeBeats(5).changehands(Hands.GRIPRIGHT).scale(1.0,3.0).skew(-1.5,3.5)
      ]),

    AnimatedCall('Concentric Ah So',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Tidal Wave',group:' ',
      paths:[
          RunRight.changehands(Hands.GRIPRIGHT).scale(1.0,2.25).skew(3.0,0.0),

          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(-3.0,1.5),

          RunRight.changehands(Hands.GRIPRIGHT).scale(1.0,1.25).skew(1.0,0.0),

          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(-1.0,-0.5)
      ]),

    AnimatedCall('Stretch Ah So',
      formation:Formation('Ocean Waves RH BGGB Compact'),
      from:'Right-Hand Waves',group:' ',
      paths:[
          RunRight.changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(2.5,0.0),

          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(-2.5,0.0),

          UmTurnRight.changehands(Hands.GRIPRIGHT).skew(-1.5,0.0),

          RunRight.changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(1.5,0.0)
      ]),

    AnimatedCall('Tandem Ah So',
      formation:Formation('Ocean Waves RH BGGB Compact'),
      from:'Right-Hand Waves',group:' ',
      paths:[
          CounterRotateRight_2_0.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,0.0) +
          CounterRotateRight_2_0.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,0.5),

          CounterRotateRight_m1_m3.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.0,1.0) +
          CounterRotateRight_m1_m3.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.0,0.5),

          UmTurnRight.changeBeats(8).changehands(Hands.GRIPRIGHT).skew(0.5,0.0),

          RunRight.changeBeats(8).changehands(Hands.GRIPRIGHT).scale(1.5,2.0).skew(-0.5,0.0)
      ]),
  ];

