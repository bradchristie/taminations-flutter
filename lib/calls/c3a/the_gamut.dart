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

  final List<AnimatedCall> TheGamut = [ 

    AnimatedCall('The Gamut',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',fractions:'7.5;4.5',
      paths:[
          Forward_4 +
          RunRight.changeBeats(8).scale(2.0,3.0) +
          DodgeRight +
          SwingRight,

          CastLeft +
          SwingRight +
          RunRight.changeBeats(4.5).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          CastLeft +
          Stand.changeBeats(3) +
          RunLeft.changeBeats(4.5).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          RunRight.changeBeats(8).scale(2.0,3.0) +
          Forward_4 +
          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('The Gamut',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',fractions:'7.5;4.5',
      paths:[
          RunLeft.changeBeats(8).scale(2.0,3.0) +
          Forward_4 +
          DodgeLeft +
          SwingLeft,

          CastRight +
          Stand.changeBeats(3) +
          RunRight.changeBeats(4.5).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          CastRight +
          SwingLeft +
          RunLeft.changeBeats(4.5).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Forward_4 +
          RunLeft.changeBeats(8).scale(2.0,3.0) +
          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('The Gamut',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',fractions:'7.5;4.5',
      paths:[
          Forward_4 +
          RunRight.changeBeats(8).scale(2.0,3.0) +
          DodgeRight +
          SwingRight,

          CastRight +
          Stand.changeBeats(3) +
          RunRight.changeBeats(4.5).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          CastRight +
          SwingLeft +
          RunLeft.changeBeats(4.5).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          RunRight.changeBeats(8).scale(2.0,3.0) +
          Forward_4 +
          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('The Gamut',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',fractions:'7.5;4.5',
      paths:[
          RunLeft.changeBeats(8).scale(2.0,3.0) +
          Forward_4 +
          DodgeLeft +
          SwingLeft,

          CastLeft +
          SwingRight +
          RunRight.changeBeats(4.5).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          CastLeft +
          Stand.changeBeats(3) +
          RunLeft.changeBeats(4.5).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          Forward_4 +
          RunLeft.changeBeats(8).scale(2.0,3.0) +
          DodgeLeft +
          SwingLeft
      ]),
  ];

