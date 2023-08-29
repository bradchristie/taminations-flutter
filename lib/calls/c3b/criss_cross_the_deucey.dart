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

  final List<AnimatedCall> CrissCrossTheDeucey = [

    AnimatedCall('Criss Cross the Deucey',
      formation:Formation('Ocean Waves RH GBGB'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,0.75),

          LeadRight.changeBeats(2) +
          RunRight.changeBeats(6).scale(2.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,0.75),

          LeadRight.changeBeats(2) +
          ExtendRight.changeBeats(6).scale(4.0,2.0)
      ]),

    AnimatedCall('Criss Cross the Deucey',
      formation:Formation('Ocean Waves LH GBGB'),
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(2) +
          ExtendLeft.changeBeats(6).scale(4.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(3.0,0.75),

          LeadLeft.changeBeats(2) +
          RunLeft.changeBeats(6).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(3.0,0.75)
      ]),

    AnimatedCall('Criss Cross the Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]),
      from:'T-Bones',
      paths:[
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          ExtendRight.changeBeats(6).scale(5.0,2.0),

          ExtendLeft.changeBeats(2).scale(1.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(1.0,0.75),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          RunRight.changeBeats(6).scale(2.0,2.0).skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.0,1.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(3.0,0.75)
      ]),

    AnimatedCall('Criss Cross the Deucey',
      formation:Formation('Static MiniWaves RH'),
      from:'Squared Mini-Waves',
      paths:[
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          SwingLeft +
          LeadLeft.changeBeats(2).scale(3.0,1.0),

          RunRight +
          ExtendLeft.changeBeats(3).scale(2.0,1.0) +
          ExtendRight.changeBeats(2),

          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          SwingLeft +
          LeadLeft.changeBeats(2).scale(3.0,1.0),

          RunRight +
          ExtendLeft.changeBeats(3).scale(2.0,1.0) +
          ExtendRight.changeBeats(2)
      ]),
  ];

