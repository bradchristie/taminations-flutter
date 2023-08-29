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

  final List<AnimatedCall> Ignore = [

    AnimatedCall('Ignore the Very Centers, Fan the Top',
      formation:Formation('Tidal Wave RH BGGB'),
      group:' ',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.5),

          SwingLeft.changeBeats(2.5).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.changeBeats(2.5).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          Stand.changeBeats(4).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Ignore the Head Men, Motivate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
  ]),
      group:' ',isGenderSpecific:true,fractions:'4;4.5;3',
      paths:[
          Path(),

          Forward_4 +
          CastLeft +
          SwingRight +
          CastLeft,

          RunLeft.changeBeats(4) +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          ExtendLeft.changeBeats(4).scale(4.0,1.0) +
          LeadRight.changeBeats(4.5).scale(3.0,4.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Ignore the Lead End, Lines of 3 Out Roll Circulate',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          FlipRight.changeBeats(4),

          FlipRight.changeBeats(4),

          RunRight.changeBeats(4).scale(1.5,2.0),

          Stand.changeBeats(4)
      ]),

    AnimatedCall('Ignore the Head Men, Wave-Based Triangle Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-5,angle:180),
  ]),
      group:' ',isGenderSpecific:true,
      paths:[
          FlipRight,

          Stand.changeBeats(3).changehands(Hands.LEFT),

          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),
  ];

