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

  final List<AnimatedCall> CatchAnythingN = [

    AnimatedCall('Catch Mix 3',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',group:' ',parts:'5;5',
      paths:[
          PullLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          DodgeRight.changeBeats(2).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,0.5),

          PullLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          RunLeft.changeBeats(5) +
          FlipLeft.scale(1.0,0.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Catch Switch to a Diamond 3',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',group:' ',parts:'5;5',
      paths:[
          PullLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.changeBeats(3).scale(1.0,1.5) +
          Forward,

          PullLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          RunRight +
          FoldRight.scale(0.5,0.75)
      ]),
  ];

