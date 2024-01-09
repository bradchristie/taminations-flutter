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

  final List<AnimatedCall> FollowYourLeader = [

    AnimatedCall('Follow Your Leader',
      formation:Formation('Ocean Waves RH GBGB'),
      from:'Right-Hand Waves',
      paths:[
          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25) +
          Forward,

          LeadRight +
          Forward +
          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_2,

          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25) +
          Forward_3,

          LeadRight +
          Forward_5.changeBeats(3) +
          RunRight.changeBeats(5).scale(2.0,2.0)
      ]),

    AnimatedCall('Follow Your Leader',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          LeadLeft +
          Forward_5.changeBeats(3) +
          RunLeft.changeBeats(5).scale(2.0,2.0),

          Forward_2.changeBeats(1.5).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25) +
          Forward_3,

          LeadLeft +
          Forward +
          RunLeft.changeBeats(5).scale(2.0,2.0) +
          Forward_2,

          Forward_2.changeBeats(1.5).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25) +
          Forward
      ]),

    AnimatedCall('Your Leader',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',
      paths:[
          QuarterRight.changeBeats(.5) +
          Forward_3.changeBeats(1.5) +
          RunRight.changeBeats(3).scale(1.0,2.0) +
          Forward_3,

          QuarterRight.changeBeats(.5) +
          Forward_4.changeBeats(2) +
          RunRight.changeBeats(5.5).scale(2.0,2.0),

          SwingRight.changeBeats(2) +
          HingeRight +
          Forward,

          SwingRight.changeBeats(2) +
          HingeRight +
          Forward.changeBeats(2).skew(2.0,0.0)
      ]),

    AnimatedCall('Your Leader',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Twin Diamonds',
      paths:[
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25) +
          Forward.changeBeats(.5).skew(-0.25,0.0),

          Forward_5.changeBeats(3) +
          RunRight.changeBeats(3.25).scale(2.0,2.0),

          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25) +
          Forward.changeBeats(1.75).skew(1.75,0.0),

          Forward +
          RunRight.changeBeats(4).scale(2.0,2.0) +
          Forward.changeBeats(1.25).skew(1.0,0.0)
      ]),
  ];

