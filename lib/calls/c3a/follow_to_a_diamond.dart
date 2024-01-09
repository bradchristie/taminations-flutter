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

  final List<AnimatedCall> FollowToADiamond = [

    AnimatedCall('Follow to a Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
  ]),
      from:'Right-Hand Box',
      paths:[
          Forward_2.changeBeats(1.5).skew(0.0,-0.125) +
          SwingRight.scale(0.875,0.875) +
          LeadRight.changeBeats(2).skew(2.0,0.125),

          RunRight.changeBeats(4) +
          Forward_2.changeBeats(2.5)
      ]),

    AnimatedCall('Follow to a Diamond',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          RunLeft.changeBeats(4) +
          Forward_2.changeBeats(2.5),

          Forward_2.changeBeats(1.5).skew(0.0,0.125) +
          SwingLeft.scale(0.875,0.875) +
          LeadLeft.changeBeats(2).skew(2.0,-0.25)
      ]),

    AnimatedCall('Follow to a Diamond',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          Forward_2.changeBeats(1.5).skew(0.0,-0.125) +
          SwingRight.scale(0.875,0.875) +
          LeadRight.changeBeats(2).skew(2.0,0.125),

          RunRight.changeBeats(4) +
          Forward_2.changeBeats(2.5),

          Forward_2.changeBeats(1.5).skew(0.0,-0.125) +
          SwingRight.scale(0.875,0.875) +
          LeadRight.changeBeats(2).skew(2.0,0.125),

          RunRight.changeBeats(4) +
          Forward_2.changeBeats(2.5)
      ]),

    AnimatedCall('Follow to a Diamond',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(4) +
          Forward_2.changeBeats(2.5),

          Forward_2.changeBeats(1.5).skew(0.0,0.125) +
          SwingLeft.scale(0.875,0.875) +
          LeadLeft.changeBeats(2).skew(2.0,-0.125),

          RunLeft.changeBeats(4) +
          Forward_2.changeBeats(2.5),

          Forward_2.changeBeats(1.5).skew(0.0,0.125) +
          SwingLeft.scale(0.875,0.875) +
          LeadLeft.changeBeats(2).skew(2.0,-0.125)
      ]),

    AnimatedCall('Follow to a Diamond',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(5.5) +
          Forward,

          Forward.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(2).skew(0.5,0.25),

          RunRight.changeBeats(5.5).scale(0.5,1.0) +
          Forward,

          Forward.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(2).skew(0.5,0.25)
      ]),

    AnimatedCall('Follow to a Diamond',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward.changeBeats(1.5).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).skew(0.5,-0.25),

          RunLeft.changeBeats(5.5).scale(0.5,1.0) +
          Forward,

          Forward.changeBeats(1.5).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).skew(0.5,-0.25),

          RunLeft.changeBeats(5.5) +
          Forward
      ]),

    AnimatedCall('Follow to a Diamond',
      formation:Formation('T-Bone URUR'),
      from:'T-Bones',
      paths:[
          Forward.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(2).skew(2.0,0.25),

          RunLeft.changeBeats(5).scale(0.5,1.0) +
          Forward,

          Forward.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(2).skew(2.0,0.25),

          RunLeft.changeBeats(5) +
          Forward
      ]),

    AnimatedCall('All 8 Follow to a Diamond',
      formation:Formation('Static MiniWaves RH'),
      group:' ',
      paths:[
          Forward_3.changeBeats(2) +
          SwingRight +
          LeadRight.changeBeats(3).skew(2.0,0.0),

          RunRight.changeBeats(5) +
          Forward_3,

          Forward_3.changeBeats(2) +
          SwingRight +
          LeadRight.changeBeats(3).skew(2.0,0.0),

          RunRight.changeBeats(5) +
          Forward_3
      ]),

    AnimatedCall('As Couples Follow to a Diamond',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          Forward_2.changehands(Hands.RIGHT) +
          RunRight.changeBeats(5).changehands(Hands.RIGHT).scale(2.0,3.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.0),

          Forward_2.changehands(Hands.LEFT) +
          RunRight.changeBeats(5).changehands(Hands.LEFT) +
          Forward.changehands(Hands.LEFT) +
          LeadRight.changeBeats(3).changehands(Hands.LEFT),

          RunRight.changeBeats(8).changehands(Hands.LEFT) +
          Forward_2.changeBeats(3).changehands(Hands.LEFT),

          RunRight.changeBeats(8).changehands(Hands.RIGHT).scale(3.0,3.0) +
          Forward_2.changeBeats(3).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Tandem Follow to a Diamond',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          RunRight.changeBeats(5) +
          Forward_4,

          Forward_2 +
          RunRight.changeBeats(5) +
          Forward_2,

          Forward_2 +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(3).scale(2.0,2.0),

          Forward_2 +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          Forward_2.changeBeats(1.5) +
          QuarterRight.changeBeats(1.5).skew(2.0,0.0)
      ]),
  ];

