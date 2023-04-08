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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> TripTheSet = [

    AnimatedCall('Trip the Set',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          LeadLeft.changeBeats(4).scale(1.0,3.0) +
          UmTurnLeft.changeBeats(3).skew(2.0,0.0),

          QuarterRight.skew(-1.0,-1.0) +
          RunRight,

          QuarterLeft.skew(-1.0,1.0) +
          FlipLeft,

          LeadRight.changeBeats(4).scale(2.0,3.0) +
          FlipRight.scale(1.0,0.5).skew(2.0,0.0)
      ]),
  ];

