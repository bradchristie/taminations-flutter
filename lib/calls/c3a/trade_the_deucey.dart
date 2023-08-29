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

  final List<AnimatedCall> TradeTheDeucey = [

    AnimatedCall('Trade the Deucey',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
          Forward.changeBeats(1.5) +
          ExtendRight.changeBeats(4.5).scale(3.0,2.0),

          RunRight.changeBeats(6).scale(1.0,2.0),

          FlipLeft.changeBeats(6).scale(1.0,2.0),

          ExtendLeft.changeBeats(4.5).scale(3.0,2.0) +
          Forward.changeBeats(1.5)
      ]),

    AnimatedCall('Trade the Deucey',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,2.0),

          FlipLeft.changeBeats(6).scale(1.0,2.0),

          RunRight.changeBeats(6).scale(1.0,2.0),

          RunRight.changeBeats(6).scale(3.0,2.0)
      ]),

    AnimatedCall('Trade the Deucey',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          ExtendRight.changeBeats(6).scale(4.0,2.0),

          HingeRight.changeBeats(2) +
          LeadRight.changeBeats(4).scale(3.0,1.0),

          HingeRight.changeBeats(2) +
          LeadRight.changeBeats(4).scale(3.0,1.0),

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Trade the Deucey',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          HingeLeft.changeBeats(2) +
          LeadLeft.changeBeats(4).scale(3.0,1.0),

          HingeLeft.changeBeats(2) +
          LeadLeft.changeBeats(4).scale(3.0,1.0),

          ExtendLeft.changeBeats(6).scale(4.0,2.0)
      ]),

    AnimatedCall('Trade the Deucey',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(6).scale(4.0,2.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,0.5),

          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,0.5),

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Trade the Deucey',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(6).scale(1.5,2.0),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          LeadRight.changeBeats(4).scale(3.0,0.5),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          LeadRight.changeBeats(4).scale(3.0,0.5),

          ExtendLeft.changeBeats(6).scale(4.0,2.0)
      ]),

    AnimatedCall('Trade the Deucey',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Stand +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Trade the Deucey',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          HingeRight.changeBeats(2).scale(0.5,1.0) +
          LeadRight.changeBeats(4).scale(1.5,0.5),

          ExtendRight.changeBeats(6).scale(4.0,2.0),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          LeadRight.changeBeats(4).scale(1.5,0.5),

          LeadRight.changeBeats(4) +
          LeadRight.changeBeats(4).scale(3.0,1.0)
      ]),

    AnimatedCall('Trade the Deucey',
      formation:Formation('Thar LH Boys'),
      from:'Thar',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          LeadRight.changeBeats(4).scale(2.0,2.0) +
          ExtendRight.changeBeats(2),

          RunLeft.changeBeats(6).scale(1.0,2.0),

          LeadRight.changeBeats(4).scale(2.0,2.0) +
          ExtendRight.changeBeats(2)
      ]),
  ];

