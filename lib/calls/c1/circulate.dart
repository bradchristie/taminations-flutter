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

  final List<AnimatedCall> Circulate = [ 

    AnimatedCall('Circulate',
      formation:Formations.TharRHBoys,
      from:'Thar',
      paths:[
          LeadRight.changeBeats(4).changehands(2),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          LeadRight.changeBeats(4).changehands(2),

          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Circulate',
      formation:Formations.TharLHBoys,
      from:'Wrong Way Thar',
      paths:[
          LeadLeft.changeBeats(4).changehands(1),

          LeadRight.changeBeats(4).scale(3.0,3.0),

          LeadLeft.changeBeats(4).changehands(1),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Circulate',
      formation:Formations.StarPromenade,
      from:'Star Promenade',
      paths:[
          LeadLeft.changeBeats(4).changehands(3),

          LeadLeft.changeBeats(4).changehands(1).scale(3.0,3.0),

          LeadLeft.changeBeats(4).changehands(3),

          LeadLeft.changeBeats(4).changehands(1).scale(3.0,3.0)
      ]),

    AnimatedCall('Circulate',
      formation:Formations.ReverseStarPromenade,
      from:'Reverse Star Promenade',
      paths:[
          LeadRight.changeBeats(4).changehands(2).scale(3.0,3.0),

          LeadRight.changeBeats(4).changehands(3),

          LeadRight.changeBeats(4).changehands(2).scale(3.0,3.0),

          LeadRight.changeBeats(4).changehands(3)
      ]),
  ];

