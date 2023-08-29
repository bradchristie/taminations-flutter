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

  final List<AnimatedCall> Catch = [

    AnimatedCall('Catch 1',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',group:' ',parts:'2;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,1.5) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(3).skew(1.5,0.5),

          Forward_2.scale(0.75,1.0) +
          SwingLeft +
          Forward_2.changeBeats(3).scale(0.75,1.0)
      ]),

    AnimatedCall('Catch 2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',group:' ',parts:'4;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          Stand.changeBeats(3) +
          FlipLeft.changeBeats(3).skew(1.5,-1.5)
      ]),

    AnimatedCall('Catch 3',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',group:' ',parts:'6;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(3).skew(1.5,1.5),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,0.5)
      ]),

    AnimatedCall('Catch 4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',group:' ',parts:'8;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          Stand.changeBeats(3) +
          FlipLeft.changeBeats(3).skew(1.5,-1.5)
      ]),
  ];

