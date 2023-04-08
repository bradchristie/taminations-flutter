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

  final List<AnimatedCall> CaliforniaTwirl = [ 

    AnimatedCall('California Twirl',
      formation:Formations.FacingCouples,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          RunRight.changehands(6),

          FlipLeft.changehands(5)
      ]),

    AnimatedCall('California Twirl',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          FlipLeft.changehands(5),

          RunRight.changehands(6)
      ]),

    AnimatedCall('California Twirl',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',isGenderSpecific:true,
      paths:[
          FlipLeft.changehands(5),

          RunRight.changehands(6),

          FlipLeft.changehands(5),

          RunRight.changehands(6)
      ]),

    AnimatedCall('California Twirl',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',isGenderSpecific:true,
      paths:[
          FlipLeft.changehands(5),

          RunRight.changehands(6),

          FlipLeft.changehands(5),

          RunRight.changehands(6)
      ]),
  ];

