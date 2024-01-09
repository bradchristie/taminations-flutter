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

  final List<AnimatedCall> Fascinate = [

    AnimatedCall('Fascinate',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_4.changeBeats(3) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          RunRight.changeBeats(5).changehands(Hands.RIGHT).scale(2.0,2.0).skew(3.0,-2.0),

          CastRight.changeBeats(6) +
          UmTurnRight.changeBeats(5).changehands(Hands.LEFT).skew(3.0,-2.0),

          CastRight.changeBeats(6) +
          SwingLeft.changeBeats(5),

          LeadRight.changeBeats(3).scale(2.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          Forward_2 +
          LeadRight.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Fascinate',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,3.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.0) +
          Forward_2 +
          LeadLeft.changeBeats(3).scale(3.0,3.0),

          CastLeft.changeBeats(6) +
          SwingRight.changeBeats(5),

          CastLeft.changeBeats(6) +
          UmTurnLeft.changeBeats(5).changehands(Hands.RIGHT).skew(3.0,2.0),

          Forward_4.changeBeats(3) +
          LeadLeft.changeBeats(3).scale(3.0,3.0) +
          RunLeft.changeBeats(5).changehands(Hands.LEFT).scale(2.0,2.0).skew(3.0,2.0)
      ]),

    AnimatedCall('Fascinating Recycle',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',group:'Fascinating',
      paths:[
          Forward_4.changeBeats(3) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          RunRight.changeBeats(5).scale(1.0,3.0).skew(3.0,0.0),

          CastLeft.changeBeats(6) +
          SwingRight.changeBeats(5),

          CastLeft.changeBeats(6) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(-1.0,0.0) +
          RunRight.changeBeats(3).scale(0.5,1.5).skew(2.0,0.0),

          LeadRight.changeBeats(3).scale(2.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          Forward_2 +
          LeadRight.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Fascinating Turn and Deal',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',group:'Fascinating',
      paths:[
          Forward_4.changeBeats(3) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          RunRight.changeBeats(5).skew(3.0,-2.0),

          CastRight.changeBeats(6) +
          RunRight.changeBeats(5).skew(3.0,-2.0),

          CastRight.changeBeats(6) +
          SwingLeft.changeBeats(5),

          LeadRight.changeBeats(3).scale(2.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          Forward_2 +
          LeadRight.changeBeats(3).scale(3.0,3.0)
      ]),
  ];

