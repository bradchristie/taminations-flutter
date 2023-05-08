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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> TrapezoidFormation = [

    AnimatedCall('Trapezoid Brace Thru',
      formation:Formation('Normal Lines'),
      group:'Trapezoid',
      paths:[
          Forward_2 +
          HingeRight +
          LeadLeft.changeBeats(2) +
          BeauWheel,

          LeadLeft.changeBeats(2) +
          HingeRight +
          Forward_2 +
          UmTurnRight,

          Forward_2 +
          HingeRight +
          LeadLeft.changeBeats(2) +
          UmTurnLeft,

          LeadLeft.changeBeats(2) +
          HingeRight +
          Forward_2 +
          BelleWheel
      ]),

    AnimatedCall('Trapezoid Circulate',
      formation:Formation('Two-Faced Lines RH'),
      group:'Trapezoid',
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.5,1.0),

          ExtendLeft.changeBeats(2).scale(2.5,1.0) +
          ExtendLeft.changeBeats(2).scale(1.5,1.0),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Trapezoid Couple Up',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:270),
  ]),
      group:'Trapezoid',
      paths:[
          Forward_2 +
          UmTurnRight,

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          Forward_3 +
          UmTurnRight.skew(1.0,-1.0),

          RunRight.changeBeats(4).skew(-2.0,0.0),

          Forward_2 +
          RunRight
      ]),
  ];

