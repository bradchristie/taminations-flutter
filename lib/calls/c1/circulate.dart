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

  final List<AnimatedCall> Circulate = [

    AnimatedCall('Circulate',
      formation:Formation('Thar RH Boys'),
      from:'Thar',
      paths:[
          LeadRight.changeBeats(4).changehands(Hands.RIGHT),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT),

          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Circulate',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',
      paths:[
          LeadLeft.changeBeats(4).changehands(Hands.LEFT),

          LeadRight.changeBeats(4).scale(3.0,3.0),

          LeadLeft.changeBeats(4).changehands(Hands.LEFT),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Circulate',
      formation:Formation('Star Promenade'),
      from:'Star Promenade',
      paths:[
          LeadLeft.changeBeats(4).changehands(Hands.BOTH),

          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0),

          LeadLeft.changeBeats(4).changehands(Hands.BOTH),

          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0)
      ]),

    AnimatedCall('Circulate',
      formation:Formation('Reverse Star Promenade'),
      from:'Reverse Star Promenade',
      paths:[
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0),

          LeadRight.changeBeats(4).changehands(Hands.BOTH),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0),

          LeadRight.changeBeats(4).changehands(Hands.BOTH)
      ]),
  ];

