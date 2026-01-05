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

  final List<AnimatedCall> SnapTheLock = [

    AnimatedCall('Snap the Lock',
      formation:Formation('Normal Lines'),
      from:'Lines',fractions:'3;1;2',
      paths:[
          LeadRight.changeBeats(2).scale(1.5,1.0) +
          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          HingeLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(1.3).scale(0.5,1.0) +
          ExtendRight.changeBeats(1.7).scale(1.0,0.5) +
          LeadRight.changeBeats(3).scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(2).scale(1.5,1.0) +
          ExtendRight.scale(1.0,0.5) +
          QuarterLeft.changeBeats(3).skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(1.3).scale(0.5,1.0) +
          ExtendRight.changeBeats(1.7).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),
  ];

