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

  final List<AnimatedCall> WheelAndDeal = [

    AnimatedCall('Wheel and Deal',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Compact Two-Faced Line RH'),
      from:'Compact Right-Hand Two-Faced Line',difficulty: 1,noDisplay: true,
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.25).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.5)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.5,0.0),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(2.0,2.0).skew(1.5,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Compact Two-Faced Line LH'),
      from:'Compact Left-Hand Two-Faced Line',difficulty: 1,noDisplay: true,
      paths:[
          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.5,1.25).skew(1.0,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(1.5,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Two-Faced Lines RH Compact'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      taminator: '''
      Be careful not to do a Ferris Wheel!
    ''',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT)
              .scale(1.0,2.0).skew(.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.5,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT)
              .scale(2.0,2.0).skew(1.5,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Two-Faced Lines LH Compact'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Be careful not to do a Ferris Wheel!
    ''',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT)
              .scale(2.0,2.0).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(.5,0.0),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT)
              .scale(1.0,2.0).skew(.5,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 2,
      taminator: '''
      This is seldom called, because everyone is trying to squeeze into the
      center of the square.
    ''',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Tidal Two-Faced Line, Right-Handed',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.5,0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.5,0.5),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.5,-0.5)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Tidal Two-Faced Line, Left-Handed',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.5,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.5,0.5)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',difficulty: 3,
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT)
              .scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.5,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT)
              .scale(1.0,1.25).skew(-1.5,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',difficulty: 3,
      paths:[
          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-1.5,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT)
              .scale(1.0,1.25).skew(-1.5,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT)
              .scale(1.0,1.25).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.5,0.5)
      ]),


    AnimatedCall('Wheel and Deal', noDisplay: true,
        formation:  Formation('', asymmetric: true, dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),

          DancerModel.fromData(gender:Gender.BOY,x:2,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        ]),
        from:'Asymmetric 1',difficulty: 2,
        paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(1.0,0.0)

        ]),


    AnimatedCall('Wheel and Deal', noDisplay: true,
        formation:  Formation('', asymmetric: true, dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),

          DancerModel.fromData(gender:Gender.BOY,x:2,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        ]),
        from:'Asymmetric 2',difficulty: 2,
        paths:[
          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(1.0,0.0)

        ]),

    AnimatedCall('Wheel and Deal', noDisplay: true,
        formation:  Formation('', asymmetric: true, dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),

          DancerModel.fromData(gender:Gender.BOY,x:2,y:-3,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        ]),
        from:'Asymmetric 3',difficulty: 2,
        paths:[
          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,2.0).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(1.0,0.0)

        ]),

    AnimatedCall('Left Wheel and Deal',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 3,noDisplay: true,
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(-1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Left Wheel and Deal',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',difficulty: 3,noDisplay: true,
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,1.25).skew(-2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(-2.0,0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,1.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Left Wheel and Deal',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',difficulty: 3,noDisplay: true,
      paths:[
          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,1.25).skew(2.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,1.25).skew(-2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(-2.0,0.5)
      ]),
  ];

