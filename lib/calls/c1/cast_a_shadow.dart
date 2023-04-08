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

  final List<AnimatedCall> CastAShadow = [ 

    AnimatedCall('Cast a Shadow',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',
      paths:[
          UmTurnRight.changeBeats(.5).skew(0.0,-0.75) +
          Forward_2.changeBeats(1) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,1.25),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3.5).scale(1.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3.5).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,-0.75)
      ]),

    AnimatedCall('Cast a Shadow',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).skew(2.0,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3.5).scale(1.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3.5).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          UmTurnLeft.changeBeats(.5).skew(0.0,0.75) +
          Forward_2.changeBeats(1) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).skew(2.0,-1.25)
      ]),
  ];

