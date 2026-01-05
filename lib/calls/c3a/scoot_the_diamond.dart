/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  final List<AnimatedCall> ScootTheDiamond = [

    AnimatedCall('Scoot the Diamond',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',
      paths:[
          ExtendLeft.scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.scale(1.5,1.0) +
          LeadRight.changeBeats(4).scale(1.0,3.0),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.scale(1.5,0.5) +
          LeadRight.changeBeats(4).scale(1.0,3.0),

          ExtendRight.scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          LeadRight.changeBeats(4).scale(3.0,1.0),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(4).scale(3.0,1.0)
      ]),

    AnimatedCall('Scoot the Diamond',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.scale(1.5,0.5) +
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          ExtendRight.scale(1.5,1.5) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.scale(1.5,1.0) +
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          ExtendLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,1.0),

          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.changeBeats(4).scale(3.0,1.0)
      ]),
  ];

