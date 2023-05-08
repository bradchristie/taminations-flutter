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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> DivideTheOcean = [

    AnimatedCall('Divide the Ocean Right',
      formation:Formation('Tidal Wave RH BGGB'),
      group:' ',
      paths:[
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          RunRight.changeBeats(4) +
          Forward,

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          Forward_5,

          HingeRight.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3),

          HingeRight.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(3).skew(1.0,1.0)
      ]),

    AnimatedCall('Divide the Sea Out',
      formation:Formation('Tidal Wave RH BGBG'),
      group:' ',
      paths:[
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          UmTurnRight.changeBeats(5).skew(-1.0,0.0),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          Forward_2,

          HingeRight.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3),

          HingeRight.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3)
      ]),
  ];

