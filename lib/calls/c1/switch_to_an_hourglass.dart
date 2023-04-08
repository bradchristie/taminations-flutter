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

  final List<AnimatedCall> SwitchToAnHourglass = [ 

    AnimatedCall('Switch to an Hourglass',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          ExtendRight.changeBeats(4).scale(2.0,2.0),

          FlipLeft.changeBeats(4),

          FlipLeft.changeBeats(4),

          LeadRight.changeBeats(2) +
          Forward_2
      ]),

    AnimatedCall('Switch to an Hourglass',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft.changeBeats(2) +
          Forward_2,

          FlipRight.changeBeats(4),

          FlipRight.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Switch to an Hourglass',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      from:'3 and 1 Lines',
      paths:[
          LeadLeft.changeBeats(2) +
          Forward_2,

          FlipRight.changeBeats(4),

          RunLeft.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(2.0,2.0)
      ]),
  ];

