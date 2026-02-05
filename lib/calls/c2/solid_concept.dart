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

  final List<AnimatedCall> SolidConcept = [

    AnimatedCall('Groups of 4 work Solid, Touch a Quarter',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          CounterRotateRight_4_m2.changeBeats(4).changehands(Hands.RIGHT).skew(0.0,1.0),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          Forward.changehands(Hands.LEFT) +
          CounterRotateRight_2_0.changeBeats(4).changehands(Hands.BOTH).skew(0.0,1.0),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          CounterRotateRight_2_m4.changeBeats(4).changehands(Hands.RIGHT).skew(0.0,-1.0),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          Forward.changehands(Hands.LEFT) +
          CounterRotateRight_0_m2.changeBeats(4).changehands(Hands.BOTH).skew(0.0,-1.0)
      ]),

    AnimatedCall('Centers work Solid, all Swing Thru',
      formation:Formation('Inverted Lines Ends Facing In'),
      group:' ',
      paths:[
          SwingRight.changeBeats(4).scale(1.5,2.0) +
          SwingLeft,

          UmTurnRight.changeBeats(4).changehands(Hands.BOTH),

          SwingRight.changeBeats(4).scale(1.5,2.0),

          Stand.changeBeats(4) +
          SwingLeft
      ]),

    AnimatedCall('Lines of 3 work Solid, all Diamond Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      group:' ',
      paths:[
          LeadRight.changeBeats(5).changehands(Hands.RIGHT).scale(6.0,5.0),

          LeadRight.changeBeats(5).changehands(Hands.BOTH).scale(4.0,3.0),

          LeadRight.changeBeats(5).scale(1.0,3.0),

          LeadRight.changeBeats(5).changehands(Hands.LEFT).scale(2.0,1.0)
      ]),

    AnimatedCall('Outside Triangles work Solid, all Mix',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:1,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      group:' ',
      paths:[
          DodgeRight +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT),

          RunLeft.changeBeats(6).scale(3.0,3.0),

          DodgeRight +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT),

          DodgeRight +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Tandem-Based Triangle work Solid, all Flip the Diamond',
      formation:Formation('Galaxy RH GP'),
      from:'Galaxy',group:' ',
      paths:[
          CounterRotateRight_0_m2.changeBeats(4).skew(2.0,0.0),

          RunRight.changeBeats(4),

          CounterRotateRight_2_0.changeBeats(4).skew(2.0,0.0),

          LeadRight.changeBeats(4).scale(5.2,3.1)
      ]),
  ];

