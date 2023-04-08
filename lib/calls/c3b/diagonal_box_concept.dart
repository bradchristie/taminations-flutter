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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> DiagonalBoxConcept = [

    AnimatedCall('Diagonal Box Circulate',
      formation:Formations.OceanWavesRHBGBG,
      group:'Diagonal Box',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,2.0) +
          HingeRight +
          LeadLeft.changeBeats(1.5),

          RunRight.changeBeats(4.5),

          LeadLeft.changeBeats(1.5) +
          HingeRight +
          ExtendLeft.changeBeats(1.5).scale(2.0,2.0),

          RunRight.changeBeats(4.5)
      ]),

    AnimatedCall('Diagonal Box Counter Rotate',
      formation:Formations.OceanWavesRHGBGB,
      group:'Diagonal Box',
      paths:[
          LeadRight.changeBeats(5).scale(3.0,4.0),

          CounterRotateRight_0_m2.changeBeats(5).skew(-1.0,0.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(2.0,0.0),

          CounterRotateRight_0_m2.changeBeats(5).skew(-1.0,0.0)
      ]),

    AnimatedCall('Diagonal Box Scoot Back',
      formation:Formations.OceanWavesRHBGBG,
      group:'Diagonal Box',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,2.0) +
          CastRight +
          LeadLeft.changeBeats(1.5),

          RunRight.changeBeats(4.5),

          LeadLeft.changeBeats(1.5) +
          CastRight +
          ExtendLeft.changeBeats(1.5).scale(2.0,2.0),

          RunRight.changeBeats(4.5)
      ]),
  ];

