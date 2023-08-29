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

  final List<AnimatedCall> Stimulate = [

    AnimatedCall('Stimulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
  ]),
      from:'Right-Hand Columns',fractions:'3;1.5',
      paths:[
          Forward_2.changeBeats(3) +
          Forward.changeBeats(1.5) +
          HingeRight.scale(0.5,1.0) +
          Forward_2.changeBeats(4) +
          LeadRight.changeBeats(1.5).scale(1.0,0.5),

          Forward_2.changeBeats(3) +
          Forward.changeBeats(1.5) +
          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(1.0,-0.5),

          RunRight +
          Forward.changeBeats(1.5) +
          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,1.5),

          Forward_2.changeBeats(3) +
          LeadRight +
          LeadRight.changeBeats(5).scale(3.0,4.0) +
          Forward_2
      ]),

    AnimatedCall('Stimulate',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',fractions:'3;1.5',
      paths:[
          Forward_2.changeBeats(3) +
          Forward.changeBeats(1.5) +
          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(1.0,0.5),

          Forward_2.changeBeats(3) +
          Forward.changeBeats(1.5) +
          HingeLeft.scale(0.5,1.0) +
          Forward_2.changeBeats(4) +
          LeadLeft.changeBeats(1.5).scale(1.0,0.5),

          Forward_2.changeBeats(3) +
          LeadLeft +
          LeadLeft.changeBeats(5).scale(3.0,4.0) +
          Forward_2,

          RunLeft +
          Forward.changeBeats(1.5) +
          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(1.0,1.5)
      ]),
  ];

