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

  final List<AnimatedCall> SwitchToAnInterlockedDiamond = [

    AnimatedCall('Switch to an Interlocked Diamond',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:3,y:2,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:2,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
  ]),
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,3.0),

          RunRight,

          RunRight,

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Switch to an Interlocked Diamond',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          RunLeft,

          RunLeft,

          LeadLeft.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Switch to an Interlocked Diamond',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,3.0),

          FlipLeft,

          FlipLeft,

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Switch to an Interlocked Diamond',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          FlipRight,

          FlipRight,

          LeadLeft.changeBeats(3).scale(3.0,3.0)
      ]),
  ];

