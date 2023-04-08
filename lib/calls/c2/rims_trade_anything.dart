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

  final List<AnimatedCall> RimsTradeAnything = [ 

    AnimatedCall('Rims Trade Chase Right',
      formation:Formations.NormalLines,
      group:'Rims Trade',fractions:'3',
      paths:[
          RunRight +
          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          FlipLeft,

          RunRight,

          FlipLeft +
          RunRight.changeBeats(2.5) +
          Forward_4.changeBeats(3.5)
      ]),

    AnimatedCall('Rims Trade Follow Your Neighbor',
      formation:Formations.OceanWavesRHBGGB,
      group:'Rims Trade',fractions:'3',
      paths:[
          SwingRight +
          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          RunLeft.scale(1.0,0.5),

          SwingRight,

          SwingRight,

          SwingRight +
          Forward_2.changeBeats(1.5).skew(0.0,0.125) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25)
      ]),

    AnimatedCall('Rims Trade Pass the Ocean',
      formation:Formations.LinesFacingOut,
      group:'Rims Trade',fractions:'3',
      paths:[
          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward.changeBeats(.5) +
          LeadRight.scale(2.0,1.5),

          RunRight,

          FlipLeft,

          RunRight +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.0,0.5)
      ]),

    AnimatedCall('Rims Trade Pass Thru',
      formation:Formations.LinesFacingOut,
      group:'Rims Trade',fractions:'3',
      paths:[
          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight,

          FlipLeft,

          RunRight +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Hubs Trade Zoom',
      formation:Formations.OceanWavesRHBGGB,
      group:'Hubs Trade',fractions:'3',
      paths:[
          SwingRight,

          SwingRight +
          Forward_4.changeBeats(6),

          SwingRight +
          RunLeft.skew(-2.0,0.0) +
          RunLeft.skew(2.0,0.0),

          SwingRight
      ]),
  ];

