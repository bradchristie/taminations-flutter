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

  final List<AnimatedCall> RippleTheWave = [

    AnimatedCall('Ends Ripple the Wave',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',group:' ',parts:'3;3',
      paths:[
          SwingRight +
          SwingLeft +
          SwingRight,

          SwingRight +
          Stand.changeBeats(3) +
          SwingRight
      ]),

    AnimatedCall('Very Ends Ripple the Wave',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',group:' ',parts:'3;3',
      paths:[
          RunRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          RunRight.scale(1.0,0.5),

          FlipLeft.scale(1.0,0.5) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3),

          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3),

          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Very Ends Ripple 3',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Tidal Wave',group:' ',parts:'3;3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          Stand.changeBeats(3),

          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3),

          Stand.changeBeats(3) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Very Ends Ripple 7',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',group:' ',parts:'3;3;3;3;3;3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(15) +
          SwingRight.scale(0.5,0.5),

          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(9) +
          SwingLeft.scale(0.5,0.5),

          Stand.changeBeats(6) +
          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Trailing End Like A Ripple Swing, Cast Off 3/4, and Single Wheel',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',fractions:'3;4.5',
      paths:[
          SwingRight +
          CastLeft +
          FlipRight.scale(1.0,0.5).skew(1.0,0.0),

          SwingRight,

          Stand.changeBeats(3) +
          CastLeft,

          Stand.changeBeats(3)
      ]),

    AnimatedCall('Outfacing Points Like a Ripple Jaywalk, Swing, Slip, Cast Off 3/4',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      group:' ',fractions:'3;3;3',
      paths:[
          Forward_2 +
          LeadRight,

          QuarterLeft.changeBeats(1.5).skew(0.0,1.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft +
          SwingRight +
          CastLeft,

          Stand.changeBeats(3) +
          SwingLeft +
          Stand.changeBeats(3) +
          CastLeft,

          Path()
      ]),
  ];

