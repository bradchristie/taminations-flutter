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

  final List<AnimatedCall> AnythingTheTop = [

    AnimatedCall('Chase the Top',
      formation:Formation('Lines Facing Out'),
      group:' ',fractions:'6',
      paths:[
          UmTurnRight.skew(-2.0,0.0) +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          LeadRight.changeBeats(1.5).scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          RunRight +
          Forward_2.changeBeats(3) +
          SwingRight +
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          UmTurnRight.skew(-2.0,0.0) +
          Forward_3 +
          QuarterLeft.changeBeats(1.5).skew(-0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          RunRight +
          Forward_2.changeBeats(3) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(1.5,3.0)
      ]),

    AnimatedCall('Flip the Top',
      formation:Formation('Ocean Waves LH BGGB'),
      group:' ',fractions:'7.5',
      paths:[
          LeadLeft.changeBeats(3.5).scale(0.5,2.0) +
          Forward_2 +
          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          LeadLeft.changeBeats(1.5).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          RunLeft +
          LeadLeft +
          Forward_2.changeBeats(3) +
          SwingLeft +
          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          RunLeft +
          LeadLeft +
          Forward_2.changeBeats(3) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(1.5,3.0),

          LeadLeft.changeBeats(3.5).scale(1.0,2.0) +
          Forward_4 +
          QuarterRight.changeBeats(1.5).skew(-0.5,-1.0) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Tag the Top',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
  ]),
      group:' ',fractions:'4.5',
      paths:[
          LeadRight +
          Forward_2.changeBeats(3) +
          SwingRight +
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          LeadRight +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          LeadRight.changeBeats(1.5).scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          LeadRight +
          Forward_2.changeBeats(3) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(1.5,3.0),

          LeadRight +
          Forward_3 +
          QuarterLeft.changeBeats(1.5).skew(-0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),
  ];

