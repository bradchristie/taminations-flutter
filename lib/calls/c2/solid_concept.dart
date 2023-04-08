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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> SolidConcept = [ 

    AnimatedCall('Groups of 4 work Solid, Touch a Quarter',
      formation:Formations.DoublePassThru,
      group:' ',
      paths:[
          ExtendLeft.changeBeats(2).changehands(2).scale(1.0,2.0) +
          Forward.changehands(2) +
          CounterRotateRight_4_m2.changeBeats(4).changehands(2).skew(0.0,1.0),

          ExtendLeft.changeBeats(2).changehands(1).scale(1.0,2.0) +
          Forward.changehands(1) +
          CounterRotateRight_2_0.changeBeats(4).changehands(3).skew(0.0,1.0),

          ExtendLeft.changeBeats(2).changehands(2).scale(1.0,2.0) +
          Forward.changehands(2) +
          CounterRotateRight_2_m4.changeBeats(4).changehands(2).skew(0.0,-1.0),

          ExtendLeft.changeBeats(2).changehands(1).scale(1.0,2.0) +
          Forward.changehands(1) +
          CounterRotateRight_0_m2.changeBeats(4).changehands(3).skew(0.0,-1.0)
      ]),

    AnimatedCall('Centers work Solid, all Swing Thru',
      formation:Formations.InvertedLinesEndsFacingIn,
      group:' ',
      paths:[
          SwingRight.changeBeats(4).scale(1.5,2.0) +
          SwingLeft,

          UmTurnRight.changeBeats(4).changehands(3),

          SwingRight.changeBeats(4).scale(1.5,2.0),

          Stand.changeBeats(4) +
          SwingLeft
      ]),

    AnimatedCall('Lines of 3 work Solid, all Diamond Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      group:' ',
      paths:[
          LeadRight.changeBeats(5).changehands(2).scale(6.0,5.0),

          LeadRight.changeBeats(5).changehands(3).scale(4.0,3.0),

          LeadRight.changeBeats(5).scale(1.0,3.0),

          LeadRight.changeBeats(5).changehands(1).scale(2.0,1.0)
      ]),

    AnimatedCall('Outside Triangles work Solid, all Mix',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
  ]),
      group:' ',
      paths:[
          DodgeRight +
          CounterRotateRight_0_m2.changeBeats(3).changehands(2) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(2),

          RunLeft.changeBeats(6).scale(3.0,3.0),

          DodgeRight +
          CounterRotateRight_2_0.changeBeats(3).changehands(2) +
          CounterRotateRight_2_0.changeBeats(3).changehands(2),

          DodgeRight +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Tandem-Based Triangle work Solid, all Flip the Diamond',
      formation:Formations.GalaxyRHGP,
      from:'Galaxy',group:' ',
      paths:[
          CounterRotateRight_0_m2.changeBeats(4).skew(2.0,0.0),

          RunRight.changeBeats(4),

          CounterRotateRight_2_0.changeBeats(4).skew(2.0,0.0),

          LeadRight.changeBeats(4).scale(5.2,3.1)
      ]),
  ];

