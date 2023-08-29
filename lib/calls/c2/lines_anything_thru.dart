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

  final List<AnimatedCall> LinesAnythingThru = [

    AnimatedCall('Lines Pass the Ocean Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeLeft.changeBeats(3).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),
  ];

