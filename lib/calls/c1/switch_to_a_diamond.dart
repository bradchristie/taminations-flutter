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

  final List<AnimatedCall> SwitchToADiamond = [

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
          LeadRight +
          Forward_2,

          FlipLeft
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          FlipRight,

          LeadLeft +
          Forward_2
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
          LeadRight +
          Forward_2.changeBeats(3),

          FlipLeft,

          FlipRight,

          LeadLeft +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          LeadRight +
          Forward_2,

          FlipLeft,

          FlipLeft,

          LeadRight +
          Forward_2
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft +
          Forward_2,

          FlipRight,

          FlipRight,

          LeadLeft +
          Forward_2
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          LeadLeft +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          FlipRight,

          FlipLeft,

          LeadRight +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',
      paths:[
          LeadLeft.changeBeats(3).skew(-2.0,2.0),

          RunLeft,

          RunRight,

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines',
      paths:[
          LeadLeft +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          FlipRight,

          FlipRight,

          LeadRight +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Tidal Two-Faced Line',
      paths:[
          LeadRight.scale(0.75,1.0) +
          Forward.scale(0.5,1.0),

          FlipLeft.scale(1.0,0.5),

          FlipLeft.scale(1.0,0.5),

          LeadRight.scale(0.75,1.0) +
          Forward.scale(0.5,1.0)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',
      paths:[
          LeadRight.scale(0.75,0.5) +
          Forward.changeBeats(2),

          FlipLeft.scale(1.0,0.5),

          FlipRight.scale(1.0,0.5),

          LeadLeft.scale(0.75,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,1.5)
      ]),
  ];

