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

  final List<AnimatedCall> CycleAndWheel = [

    AnimatedCall('Cycle and Wheel',
        from: 'Single Line 1',
        formation:  Formation('', asymmetric: true, dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:0)]),
        paths: [
          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
              RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0)
        ]),

    AnimatedCall('Cycle and Wheel',
        from: 'Single Line 2',
        formation:  Formation('', asymmetric: true, dancers:[
          Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
          Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:0)]),
        paths:[
          RunLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(2).skew(0.5,0.0) +
              UmTurnLeft.changeBeats(2).skew(-0.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0),
        ]),

    AnimatedCall('Cycle and Wheel',
        from: 'Single Line 3',
        formation:  Formation('', asymmetric: true, dancers:[
          Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
          Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:0)]),
        paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          UmTurnRight.changeBeats(2).skew(-0.5,0.0) +
              UmTurnRight.changeBeats(2).skew(0.5,0.0),

          RunRight.changeBeats(4).skew(1.0,-2.0),
        ]),

    AnimatedCall('Cycle and Wheel',
        from: 'Single Line 4',
        formation:  Formation('', asymmetric: true, dancers:[
          Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
          Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:180)]),
        paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
              RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunLeft.changeBeats(4).skew(1.0,2.0),
        ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 lines #1',
      paths:[
          RunLeft.changeBeats(4).skew(1.0,2.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 lines #2',
      taminator: '''
      Not a recommended formation, as all the dancers are trying
      squeeze into the center
    ''',
      paths:[
          RunRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(2).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(0.5,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 lines #3',
      taminator: '''
      Not a recommended formation, as all the dancers are trying
      squeeze into the center
    ''',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          UmTurnLeft.changeBeats(2).skew(0.5,0.0) +
          UmTurnLeft.changeBeats(2).skew(-0.5,0.0),

          RunLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 lines #4',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 lines #5',
      paths:[
          RunRight.changeBeats(4).skew(1.0,-2.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 lines #6',
      paths:[
          RunLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(2).skew(0.5,0.0) +
          UmTurnLeft.changeBeats(2).skew(-0.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 lines #7',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          UmTurnRight.changeBeats(2).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(0.5,0.0),

          RunRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]),
      from:'3 and 1 lines #8',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunLeft.changeBeats(4).skew(1.0,2.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines Ends Facing Out',
      paths:[
          RunLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(2).skew(0.5,0.0) +
          UmTurnLeft.changeBeats(2).skew(-0.5,0.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines Ends Facing In',
      taminator: '''
      Not a recommended formation, as all the dancers are trying
      squeeze into the center
    ''',
      paths:[
          RunRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(2).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(0.5,0.0),

          UmTurnLeft.changeBeats(2).skew(0.5,0.0) +
          UmTurnLeft.changeBeats(2).skew(-0.5,0.0),

          RunLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]),
      from:'Tidal 3 and 1 Lines #1',
      paths:[
          RunLeft.changeBeats(4).skew(2.0,0.5),

          RunLeft.changeBeats(2).scale(0.5,0.75).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(2.0,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.5,1.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]),
      from:'Tidal 3 and 1 Lines #2',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.25).skew(2.0,0.0),

          RunRight.changeBeats(2).scale(0.5,0.75).skew(-1.0,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-2.0,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,1.25).skew(-2.0,0.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]),
      from:'Tidal 3 and 1 Lines #3',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.25).skew(2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(2.0,0.5),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.25).skew(-1.0,0.0),

          RunLeft.changeBeats(4).skew(-2.0,0.5)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]),
      from:'Tidal 3 and 1 Lines #4',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.25).skew(2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(2.0,0.5),

          RunRight.changeBeats(2).scale(0.5,0.75).skew(-1.0,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0),

          RunRight.changeBeats(4).skew(2.0,-0.5)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]),
      from:'Tidal 3 and 1 Lines #5',
      paths:[
          RunRight.changeBeats(4).skew(2.0,-0.5),

          RunRight.changeBeats(2).scale(0.5,0.75).skew(-1.0,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(2.0,0.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]),
      from:'Tidal 3 and 1 Lines #6',
      paths:[
          RunLeft.changeBeats(4).skew(-2.0,0.5),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.25).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(2.0,0.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]),
      from:'Tidal 3 and 1 Lines #7',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,1.25).skew(-2.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(-2.0,-0.5),

          RunRight.changeBeats(2).scale(0.5,0.75).skew(-1.0,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0),

          RunRight.changeBeats(4).skew(2.0,-0.5)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
  ]),
      from:'Tidal 3 and 1 Lines #8',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.5,1.25).skew(2.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(2.0,-0.5),

          RunLeft.changeBeats(2).scale(0.5,0.75).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0),

          RunLeft.changeBeats(4).skew(2.0,0.5)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line Right-Hand Centers',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.25).skew(2.0,0.0),

          RunRight.changeBeats(2).scale(0.5,0.75).skew(-1.0,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.25).skew(-1.0,0.0),

          RunLeft.changeBeats(4).skew(-2.0,0.5)
      ]),

    AnimatedCall('Cycle and Wheel',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Tidal Inverted Line Left-Hand Centers',
      paths:[
          RunLeft.changeBeats(4).skew(-2.0,0.5),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.25).skew(-1.0,0.0),

          RunRight.changeBeats(2).scale(0.5,0.75).skew(-1.0,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(1.0,0.0),

          RunRight.changeBeats(4).skew(2.0,-0.5)
      ]),
  ];

