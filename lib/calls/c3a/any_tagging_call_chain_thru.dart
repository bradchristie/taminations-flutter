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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> AnyTaggingCallChainThru = [ 

    AnimatedCall('Tag Chain Thru',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',group:' ',fractions:'3.5',
      paths:[
          QuarterLeft.skew(-1.0,1.0) +
          Stand.changeBeats(2) +
          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward_2,

          QuarterLeft.skew(-1.0,1.0) +
          Forward_2 +
          RunRight,

          LeadRight +
          Forward_2 +
          RunRight,

          LeadRight +
          Stand.changeBeats(2) +
          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight +
          Forward_2
      ]),

    AnimatedCall('Flip Chain Thru',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',group:' ',fractions:'6.5',
      paths:[
          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward_3 +
          RunRight,

          RunRight +
          LeadRight +
          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward_2,

          RunRight +
          LeadRight +
          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight +
          Forward_2,

          LeadRight.changeBeats(3.5).scale(1.0,2.0) +
          Forward_3 +
          RunRight
      ]),
  ];

