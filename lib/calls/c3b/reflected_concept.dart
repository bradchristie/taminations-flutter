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

  final List<AnimatedCall> ReflectedConcept = [

    AnimatedCall('Reflected Flip the Line',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',group:' ',
      paths:[
          LeadRight +
          Forward_4.changeBeats(3) +
          CounterRotateRight_m1_m3 +
          ExtendRight,

          RunRight +
          LeadRight +
          CounterRotateRight_3_1 +
          Forward_2 +
          ExtendRight
      ]),

    AnimatedCall('Reflected Tag the Line',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          LeadRight +
          Forward +
          CounterRotateRight_2_0 +
          Forward +
          ExtendRight.scale(0.5,1.0),

          LeadRight +
          Forward +
          CounterRotateRight_0_m2 +
          ExtendRight.scale(0.5,1.0),

          LeadRight +
          Forward +
          CounterRotateRight_0_m2 +
          ExtendRight.scale(0.5,1.0),

          LeadRight +
          Forward +
          CounterRotateRight_2_0 +
          Forward +
          ExtendRight.scale(0.5,1.0)
      ]),
  ];

