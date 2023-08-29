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

  final List<AnimatedCall> Choice = [

    AnimatedCall('Choice',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Tidal Wave',parts:'3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          SwingRight.scale(0.5,0.5) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5),

          LeadRight.changeBeats(3).scale(1.5,1.5) +
          HingeRight.changeBeats(2).skew(0.0,1.0),

          HingeLeft.changeBeats(3).scale(0.5,0.5) +
          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Lockers Choice',
      formation:Formation('Ocean Waves RH GBGB'),
      from:'Right-Hand Waves',parts:'4;4',
      paths:[
          LeadRight.changeBeats(4).scale(1.5,3.0) +
          HingeLeft.changeBeats(4).scale(1.0,0.5) +
          HingeRight.changeBeats(3),

          HingeLeft.changeBeats(4).scale(0.5,1.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          FlipRight.scale(1.0,0.25).skew(2.0,0.0),

          HingeLeft.changeBeats(4).scale(0.5,1.0) +
          LeadRight.changeBeats(4).scale(3.0,1.5) +
          HingeRight.changeBeats(3),

          LeadRight.changeBeats(4).scale(1.5,3.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Lockers Choice',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'4;4',
      paths:[
          LeadLeft.changeBeats(4).scale(1.5,3.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          HingeRight.changeBeats(4).scale(0.5,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,1.5) +
          HingeLeft.changeBeats(3),

          HingeRight.changeBeats(4).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          FlipLeft.scale(1.0,0.25).skew(2.0,0.0),

          LeadLeft.changeBeats(4).scale(1.5,3.0) +
          HingeRight.changeBeats(4).scale(1.0,0.5) +
          HingeLeft.changeBeats(3)
      ]),

    AnimatedCall('Cut the Diamonder\'s Choice',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2.5,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-2.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-4.5,angle:0),
  ]),
      group:' ',parts:'5',
      paths:[
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          Stand.changeBeats(3).changehands(Hands.LEFT) +
          HingeLeft.changeBeats(3).scale(0.5,0.5) +
          HingeRight.changeBeats(2),

          DodgeLeft.changeBeats(2).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5),

          LeadRight.changeBeats(2) +
          Stand.changeBeats(3).changehands(0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          DodgeLeft.changeBeats(2) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(1.5,1.5) +
          HingeRight.changeBeats(2).skew(0.0,1.0)
      ]),
  ];

