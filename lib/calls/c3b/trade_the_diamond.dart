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

  final List<AnimatedCall> TradeTheDiamond = [

    AnimatedCall('Trade the Diamond',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'6;1.5;3',
      paths:[
          ExtendRight.changeBeats(6).scale(4.0,2.0) +
          HingeRight +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          Stand.changeBeats(1.5),

          RunRight.changeBeats(6).scale(1.0,2.0) +
          Stand.changeBeats(1.5) +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          HingeRight,

          RunRight.changeBeats(6).scale(1.0,2.0) +
          Stand.changeBeats(1.5) +
          LeadRight.changeBeats(3).scale(1.0,3.0) +
          HingeRight,

          RunRight.changeBeats(6).scale(1.0,2.0) +
          HingeRight +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          Stand.changeBeats(1.5)
      ]),

    AnimatedCall('Trade the Diamond',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'6;1.5;3',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0) +
          HingeLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.0) +
          Stand.changeBeats(1.5),

          RunLeft.changeBeats(6).scale(1.0,2.0) +
          Stand.changeBeats(1.5) +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          HingeLeft,

          RunLeft.changeBeats(6).scale(1.0,2.0) +
          Stand.changeBeats(1.5) +
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          HingeLeft,

          ExtendLeft.changeBeats(6).scale(4.0,2.0) +
          HingeLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.0) +
          Stand.changeBeats(1.5)
      ]),

    AnimatedCall('Trade the Diamond',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'6;1.5;3.5',
      paths:[
          ExtendRight.changeBeats(6).scale(4.0,2.0) +
          HingeRight +
          Forward_2 +
          LeadRight,

          RunLeft.changeBeats(6).scale(1.0,2.0) +
          Stand.changeBeats(1.5) +
          QuarterLeft.changeBeats(1.5).skew(0.0,1.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          HingeLeft,

          RunLeft.changeBeats(6).scale(1.0,2.0) +
          Stand.changeBeats(1.5) +
          QuarterLeft.changeBeats(1.5).skew(0.0,1.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          HingeLeft,

          RunRight.changeBeats(6).scale(2.0,2.0) +
          HingeRight +
          Forward_2 +
          LeadRight
      ]),

    AnimatedCall('Trade the Diamond',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'6;1.5;3.5',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0) +
          HingeLeft +
          LeadLeft.changeBeats(3.5).scale(3.0,1.0),

          RunRight.changeBeats(6).scale(1.0,2.0) +
          Stand.changeBeats(1.5) +
          LeadRight.scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight,

          RunRight.changeBeats(6).scale(2.0,2.0) +
          Stand.changeBeats(1.5) +
          LeadRight.scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight,

          ExtendLeft.changeBeats(6).scale(4.0,2.0) +
          HingeLeft +
          LeadLeft.changeBeats(3.5).scale(3.0,1.0)
      ]),
  ];

