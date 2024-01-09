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

  final List<AnimatedCall> SquareTheBases = [

    AnimatedCall('Square the Bases',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',fractions:'5;2.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(1.5).scale(0.5,1.5) +
          LeadRight.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(2.5).scale(2.0,1.0) +
          RunRight.skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.changeBeats(1.5).scale(0.5,1.5) +
          ExtendRight.changeBeats(2.5).scale(2.0,1.0) +
          FlipLeft.skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.scale(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          ExtendRight.scale(1.0,0.5)
      ]),
  ];

