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

  final List<AnimatedCall> PassAndRoll = [

    AnimatedCall('Pass and Roll',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:180),
  ]),
      from:'Single Column',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          UmTurnRight.skew(0.0,-1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Pass and Roll',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          Forward_2 +
          SwingRight.scale(0.5,0.75) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          UmTurnRight.skew(0.0,-1.0),

          Forward +
          FlipRight.scale(1.0,0.75) +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Pass and Roll',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          FlipRight,

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          UmTurnRight,

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Pass and Roll',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          Forward_2 +
          SwingRight.scale(0.5,0.75) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          UmTurnRight.skew(0.0,-1.0),

          Forward +
          FlipRight.scale(1.0,0.75) +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          SwingRight.scale(0.5,0.75) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          UmTurnRight.skew(0.0,-1.0),

          Forward +
          FlipRight.scale(1.0,0.75) +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Pass and Roll',
        from:'Tidal Column',
        formation: Formation('',dancers:[
          DancerModel.fromData(gender: Gender.BOY, x: .5, y: 0, angle: 0),
          DancerModel.fromData(gender: Gender.GIRL, x: 1.5, y: 0, angle: 180),
          DancerModel.fromData(gender: Gender.BOY, x: 2.5, y: 0, angle: 0),
          DancerModel.fromData(gender: Gender.GIRL, x: 3.5, y: 0, angle: 180),
        ]),
        paths: [
          ExtendLeft.scale(.5,0.5) +
              Forward +
              SwingRight.scale(0.5,0.5) +
              Forward +
              RunRight.scale(0.5, 0.75),

          ExtendLeft.scale(.5,0.5) +
              Forwardp5 +
              FlipRight.scale(.5,0.5) +
              Forward_1p5 +
              ExtendLeft.changeBeats(2).scale(1,0.5),

          ExtendLeft.scale(.5,0.5) +
              Forwardp5 +
              FlipRight.scale(.5,0.5) +
              Forward_1p5 +
              ExtendLeft.changeBeats(2).scale(1,0.5),

          ExtendLeft.scale(.5,0.5) +
              Forward +
              SwingRight.scale(0.5,0.5) +
              Forward +
              RunRight.scale(0.5, 0.75)

        ]),

    AnimatedCall('Left Pass and Roll',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:180),
  ]),
      from:'Single Column',
      paths:[
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          SwingLeft.scale(0.5,0.5) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          UmTurnLeft.skew(0.0,1.0),

          ExtendRight.scale(1.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.5) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Pass and Roll',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          Forward +
          FlipLeft.scale(1.0,0.75) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          SwingLeft.scale(0.5,0.75) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          UmTurnLeft.skew(0.0,1.0)
      ]),

    AnimatedCall('Left Pass and Roll',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          SwingLeft.scale(0.5,0.5) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          UmTurnLeft,

          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          SwingLeft.scale(0.5,0.5) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          FlipLeft,

          ExtendRight.scale(1.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.5) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          ExtendRight.scale(1.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.5) +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Pass and Roll',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          Forward +
          FlipLeft.scale(1.0,0.75) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          SwingLeft.scale(0.5,0.75) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          UmTurnLeft.skew(0.0,1.0),

          Forward +
          FlipLeft.scale(1.0,0.75) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          SwingLeft.scale(0.5,0.75) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          UmTurnLeft.skew(0.0,1.0)
      ]),

    AnimatedCall('Left Pass and Roll',
        from:'Tidal Column',
        formation: Formation('',dancers:[
          DancerModel.fromData(gender: Gender.BOY, x: .5, y: 0, angle: 0),
          DancerModel.fromData(gender: Gender.GIRL, x: 1.5, y: 0, angle: 180),
          DancerModel.fromData(gender: Gender.BOY, x: 2.5, y: 0, angle: 0),
          DancerModel.fromData(gender: Gender.GIRL, x: 3.5, y: 0, angle: 180),
        ]),
        paths: [
          ExtendRight.scale(.5,0.5) +
              Forward +
              SwingLeft.scale(0.5,0.5) +
              Forward +
              RunLeft.scale(0.5, 0.75),

          ExtendRight.scale(.5,0.5) +
              Forwardp5 +
              FlipLeft.scale(.5,0.5) +
              Forward_1p5 +
              ExtendRight.changeBeats(2).scale(1,0.5),

          ExtendRight.scale(.5,0.5) +
              Forwardp5 +
              FlipLeft.scale(.5,0.5) +
              Forward_1p5 +
              ExtendRight.changeBeats(2).scale(1,0.5),

          ExtendRight.scale(.5,0.5) +
              Forward +
              SwingLeft.scale(0.5,0.5) +
              Forward +
              RunLeft.scale(0.5, 0.75)

        ]),

    AnimatedCall('All 8 Pass and Roll',
      formation:Formation('Static Facing'),
      group:' ',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          SwingRight +
          Forward_3 +
          LeadRight.changeBeats(2) +
          LeadRight.changeBeats(2),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          FlipRight.scale(1.0,0.5) +
          Forward_4.changeBeats(6) +
          Forward_3,

          ExtendLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          SwingRight +
          Forward_3 +
          LeadRight.changeBeats(2) +
          LeadRight.changeBeats(2),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          FlipRight.scale(1.0,0.5) +
          Forward_4.changeBeats(6) +
          Forward_3
      ]),

    AnimatedCall('As Couples Pass and Roll',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          ExtendLeft.changehands(Hands.RIGHT).scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(1.5,1.5) +
          Forward_2 +
          RunRight.changehands(Hands.RIGHT).scale(2.25,2.25),

          ExtendLeft.changehands(Hands.LEFT).scale(1.0,1.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward_2 +
          RunRight.changehands(Hands.LEFT).scale(0.75,0.75),

          ExtendLeft.changehands(Hands.RIGHT).scale(1.0,0.5) +
          RunRight.changeBeats(5).scale(1.5,1.5) +
          Forward_2 +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,1.5),

          ExtendLeft.changehands(Hands.LEFT).scale(1.0,1.5) +
          RunRight.changeBeats(5).scale(0.5,0.5) +
          Forward_2 +
          ExtendLeft.changeBeats(3).changehands(Hands.LEFT).scale(2.0,0.5)
      ]),
  ];

