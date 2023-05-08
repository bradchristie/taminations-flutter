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

  final List<AnimatedCall> SeeSaw = [

    AnimatedCall('All Around the Corner, See Saw Your Partner',
      formation:Formation('Static Square'),
      from:'Static Square',fractions:'7',
      paths:[
          LeadLeft.changeBeats(1.5).skew(-0.5,0.0) +
          HingeRight.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadLeft.changeBeats(2).skew(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_2 +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(1.5).skew(-0.5,0.0) +
          HingeRight.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadLeft.changeBeats(2).skew(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_2 +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),
  ];

