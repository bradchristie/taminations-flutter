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

  final List<AnimatedCall> ExplodeTheTop = [

    AnimatedCall('Explode the Top',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'2;9.5;1.5',
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(4.5).scale(2.0,0.5) +
          HingeRight +
          Forward_2 +
          LeadRight,

          QuarterLeft.changeBeats(2).skew(1.0,-1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          RunLeft.changeBeats(7.5).scale(1.0,0.75).skew(2.0,0.0) +
          HingeRight +
          HingeRight +
          UmTurnRight,

          QuarterRight.changeBeats(2).skew(1.0,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(7.5).scale(3.0,3.5) +
          HingeRight +
          HingeRight +
          Forward_2 +
          RunRight.scale(0.5,0.5).skew(1.0,0.0) +
          QuarterRight,

          QuarterRight.changeBeats(2).skew(-1.0,-1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          HingeRight +
          HingeRight +
          LeadRight
      ]),

    AnimatedCall('Explode the Top',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'2;9.5;1.5',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(4.5).scale(2.0,0.5) +
          HingeRight +
          Forward_2 +
          LeadRight,

          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          RunLeft.changeBeats(7.5).scale(1.0,0.75).skew(2.0,0.0) +
          HingeRight +
          HingeRight +
          UmTurnRight,

          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          HingeRight +
          HingeRight +
          LeadRight,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          LeadRight.changeBeats(7.5).scale(3.0,3.5) +
          HingeRight +
          HingeRight +
          Forward_2 +
          RunRight.scale(0.5,0.5).skew(1.0,0.0) +
          QuarterRight
      ]),

    AnimatedCall('Explode the Top',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'2;9.5;1.5',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          RunLeft.changeBeats(7.5).scale(1.0,0.75).skew(2.0,0.0) +
          HingeRight +
          HingeRight +
          UmTurnRight,

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(4.5).scale(2.0,0.5) +
          HingeRight +
          Forward_2 +
          LeadRight,

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          LeadRight.changeBeats(7.5).scale(3.0,3.5) +
          HingeRight +
          HingeRight +
          Forward_2 +
          RunRight.scale(0.5,0.5).skew(1.0,0.0) +
          QuarterRight,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          HingeRight +
          HingeRight +
          LeadRight
      ]),
  ];

