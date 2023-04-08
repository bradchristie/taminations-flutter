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

  final List<AnimatedCall> SwitchToAnInterlockedDiamond = [ 

    AnimatedCall('Switch to an Interlocked Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
  ]),
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,3.0),

          RunRight,

          RunRight,

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Switch to an Interlocked Diamond',
      formation:Formations.OceanWavesLHGBBG,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          RunLeft,

          RunLeft,

          LeadLeft.changeBeats(3).scale(3.0,3.0)
      ]),

    AnimatedCall('Switch to an Interlocked Diamond',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,3.0),

          FlipLeft,

          FlipLeft,

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Switch to an Interlocked Diamond',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0),

          FlipRight,

          FlipRight,

          LeadLeft.changeBeats(3).scale(3.0,3.0)
      ]),
  ];

