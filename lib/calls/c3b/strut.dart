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

  final List<AnimatedCall> Strut = [

    AnimatedCall('Strut Right',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          Stand.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(3.0,1.5),

          Stand.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(0.5,0.5) +
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.scale(1.5,0.5) +
          Stand.changehands(0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(0.5,0.5) +
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.scale(1.5,0.5) +
          Stand.changehands(0)
      ]),

    AnimatedCall('Strut Left',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(3.0,1.5),

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(0.5,0.5) +
          QuarterLeft.skew(0.0,1.0) +
          LeadLeft.scale(1.5,0.5) +
          Stand.changehands(0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(0.5,0.5) +
          QuarterLeft.skew(0.0,1.0) +
          LeadLeft.scale(1.5,0.5) +
          Stand.changehands(0)
      ]),

    AnimatedCall('Strut Right Left',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(3.0,1.5),

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(0.5,0.5) +
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.scale(1.5,0.5) +
          Stand.changehands(0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(0.5,0.5) +
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.scale(1.5,0.5) +
          Stand.changehands(0)
      ]),

    AnimatedCall('Strut Left Right',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          Stand.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(3.0,1.5),

          Stand.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(0.5,0.5) +
          QuarterLeft.skew(0.0,1.0) +
          LeadLeft.scale(1.5,0.5) +
          Stand.changehands(0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(0.5,0.5) +
          QuarterLeft.skew(0.0,1.0) +
          LeadLeft.scale(1.5,0.5) +
          Stand.changehands(0)
      ]),
  ];

