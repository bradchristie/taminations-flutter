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

  final List<AnimatedCall> CaliforniaTwirl = [

    AnimatedCall('California Twirl',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',notForSequencer: true,
      paths:[
          RunRight.changehands(6),

          FlipLeft.changehands(5)
      ]),

    AnimatedCall('California Twirl',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          FlipLeft.changehands(5),

          RunRight.changehands(6)
      ]),

    AnimatedCall('California Twirl',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',isGenderSpecific:true,
      paths:[
          FlipLeft.changehands(5),

          RunRight.changehands(6),

          FlipLeft.changehands(5),

          RunRight.changehands(6)
      ]),

    AnimatedCall('California Twirl',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',isGenderSpecific:true,
      paths:[
          FlipLeft.changehands(5),

          RunRight.changehands(6),

          FlipLeft.changehands(5),

          RunRight.changehands(6)
      ]),
  ];

