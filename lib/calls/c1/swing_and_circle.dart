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

  final List<AnimatedCall> SwingAndCircle = [

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('Quarter Tag'),
      from:'Right-Hand Quarter Tag',
      paths:[
          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          DodgeLeft.changeBeats(4),

          SwingRight +
          SwingLeft.changeBeats(4),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          DodgeRight.changeBeats(4),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          ExtendRight.changeBeats(4).scale(3.0,2.0),

          SwingLeft +
          SwingRight.changeBeats(4),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('3/4 Tag'),
      from:'Right-Hand 3/4 Tag',
      paths:[
          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          RunRight.changeBeats(4).skew(-3.0,0.0),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          FlipRight.changeBeats(4),

          SwingRight +
          SwingLeft.changeBeats(4),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('3/4 Tag LH'),
      from:'Left-Hand 3/4 Tag',
      paths:[
          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          FlipLeft.changeBeats(4),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          RunLeft.changeBeats(4).skew(-3.0,0.0),

          SwingLeft +
          SwingRight.changeBeats(4),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('Mixed Quarter Tag #1'),
      from:'Right-Hand Quarter Waves',
      paths:[
          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          FlipRight.changeBeats(4),

          SwingRight +
          SwingLeft.changeBeats(4),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('Mixed Quarter Tag #6'),
      from:'Left-Hand Quarter Waves',
      paths:[
          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          FlipLeft.changeBeats(4),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          ExtendRight.changeBeats(4).scale(3.0,2.0),

          SwingLeft +
          SwingRight.changeBeats(4),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          SwingRight +
          SwingLeft.changeBeats(4),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          QuarterRight.changeBeats(4).skew(3.0,0.0),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0),

          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          SwingLeft +
          SwingRight.changeBeats(4),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0),

          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          QuarterLeft.changeBeats(4).skew(3.0,0.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('Mixed Quarter Tag #5'),
      from:'Mixed Quarter Tag 1',
      paths:[
          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          RunRight.changeBeats(4).skew(-3.0,0.0),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          DodgeLeft.changeBeats(4),

          SwingRight +
          SwingLeft.changeBeats(4),

          SwingRight +
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('Swing and Circle 1/4',
      formation:Formation('Mixed Quarter Tag #2'),
      from:'Mixed Quarter Tag 2',
      paths:[
          Stand.changeBeats(3).changehands(Hands.RIGHT) +
          DodgeRight.changeBeats(4),

          Stand.changeBeats(3).changehands(Hands.LEFT) +
          RunLeft.changeBeats(4).skew(-3.0,0.0),

          SwingLeft +
          SwingRight.changeBeats(4),

          SwingLeft +
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180)
        ]),
        from:'Right-Hand Quarter Tag',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0),
          DodgeLeft.changeBeats(4),
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
        ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('Quarter Tag LH', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        ]),
        from:'Left-Hand Quarter Tag',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          DodgeRight.changeBeats(4),
          ExtendRight.changeBeats(4).scale(3.0,2.0),
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
        ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        ]),
        from:'Right-Hand 3/4 Tag',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          RunRight.changeBeats(4).skew(-3.0,0.0),
          FlipRight.changeBeats(4),
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
        ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        ]),
        from:'Left-Hand 3/4 Tag',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          FlipLeft.changeBeats(4),
          RunLeft.changeBeats(4).skew(-3.0,0.0),
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
        ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        ]),
        from:'Right-Hand Quarter Waves',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0),
          FlipRight.changeBeats(4),
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
        ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        ]),
        from:'Left-Hand Quarter Waves',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          FlipLeft.changeBeats(4),
          ExtendRight.changeBeats(4).scale(3.0,2.0),
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
        ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        ]),
        from:'Mixed Quarter Tag 1',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          RunRight.changeBeats(4).skew(-3.0,0.0),
          DodgeLeft.changeBeats(4),
          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
        ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        ]),
        from:'Mixed Quarter Tag 2',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          DodgeRight.changeBeats(4),
          RunLeft.changeBeats(4).skew(-3.0,0.0),
          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
        ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
          DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
        ]),
        from:'Right-Hand Diamonds',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          UmTurnRight.changeBeats(4).skew(3.0,-2.0),
          QuarterRight.changeBeats(4).skew(3.0,0.0),
          LeadRight.changeBeats(4).scale(1.0,3.0)
        ]),

    AnimatedCall('and_Circle 1/4',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
        ]),
        from:'Left-Hand Diamonds',
        isPerimeter: true,
        noDisplay: true,
        paths:[
          UmTurnLeft.changeBeats(4).skew(3.0,2.0),
          LeadLeft.changeBeats(4).scale(1.0,3.0),
          QuarterLeft.changeBeats(4).skew(3.0,0.0)
        ]),


  ];

