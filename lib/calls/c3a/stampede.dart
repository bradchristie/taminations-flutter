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

  final List<AnimatedCall> Stampede = [

    AnimatedCall('Stampede',
      formation:Formations.n34Tag,
      from:'3/4 Tag',parts:'4;1.5',
      paths:[
          RunLeft.changeBeats(5.5).scale(1.5,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          FlipRight.changeBeats(5.5).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,0.5),

          RunRight.changeBeats(4).scale(1.5,1.75) +
          HingeLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4).scale(0.5,1.25) +
          HingeLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('Stampede',
      formation:Formations.n34TagLH,
      from:'Left-Hand 3/4 Tag',parts:'4;1.5',
      paths:[
          RunLeft.changeBeats(5.5).scale(1.5,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          FlipRight.changeBeats(5.5).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,0.5),

          RunLeft.changeBeats(4).scale(0.5,1.75) +
          HingeRight.scale(1.0,0.5),

          RunRight.changeBeats(4).scale(1.5,1.25) +
          HingeRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward
      ]),
  ];

