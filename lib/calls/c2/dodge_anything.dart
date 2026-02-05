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

  final List<AnimatedCall> DodgeAnything = [

    AnimatedCall('Dodge Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',
      paths:[
          Forward_4,

          DodgeLeft.changeBeats(4),

          Forward_4,

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Dodge Hocus Pocus',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          Forward_4 +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward_3,

          DodgeRight.skew(-1.0,0.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          QuarterRight.changeBeats(2).skew(2.0,0.0)
      ]),

    AnimatedCall('Dodge Load the Boat',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:0),
  ]),
      group:' ',
      paths:[
          PassThru +
          LeadLeft.changeBeats(2).scale(1.5,3.5) +
          LeadLeft.changeBeats(2.5).scale(2.5,2.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4),

          PassThru +
          LeadRight.changeBeats(2).scale(2.5,3.5) +
          LeadRight.changeBeats(2.5).scale(3.5,3.5) +
          LeadRight.changeBeats(2.5)
      ]),

    AnimatedCall('Dodge Trade',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          SwingRight,

          DodgeRight,

          Forward_2.changeBeats(3),

          SwingRight
      ]),
  ];

