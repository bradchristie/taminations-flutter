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
import '../../common_dart.dart';
import '../../moves.dart';

  final List<AnimatedCall> MiniChase = [

    AnimatedCall('Mini Chase',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',
      paths:[
          RunRight.skew(-1.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(3).scale(2.0,1.0)
      ]),

    AnimatedCall('Mini Chase',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          RunRight.scale(1.0,0.5).skew(-1.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(3),

          RunRight.scale(1.0,0.25).skew(-1.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,0.5),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(3)
      ]),

    AnimatedCall('Mini Chase',
      formation:Formation('Trade By'),
      from:'Trade By',
      paths:[
          RunRight.skew(-0.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          Forward_2.changeBeats(3),

          RunRight.skew(-0.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Mini Chase',
      formation:Formation('T-Bone DRLD'),
      from:'T-Bones',
      paths:[
          RunRight.scale(1.0,0.5).skew(-0.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          Forward.changeBeats(3),

          RunRight.scale(1.0,0.5).skew(-0.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          Forward.changeBeats(3)
      ]),

    AnimatedCall('All 8 Mini Chase',
      formation:Formation('Static Facing Out'),
      group:' ',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          RunRight.scale(1.0,1.5).skew(-1.5,0.0) +
          LeadRight.changeBeats(2).scale(2.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          RunRight.scale(1.0,1.5).skew(-1.5,0.0) +
          LeadRight.changeBeats(2).scale(2.5,1.0)
      ]),

    AnimatedCall('As Couples Mini Chase',
      formation:Formation('Lines Facing Out'),
      group:' ',
      paths:[
          CounterRotateRight_m2_0.changehands(Hands.LEFT) +
          UmTurnRight.changeBeats(3).changehands(Hands.LEFT).skew(-1.0,-1.0),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          RunRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-1.0,-1.0),

          CounterRotateRight_m2_0.changehands(Hands.LEFT).skew(1.0,-1.0) +
          Forward_2.changeBeats(3).changehands(Hands.LEFT),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(1.0,-1.0) +
          Forward_2.changeBeats(3).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Concentric Mini Chase',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',
      paths:[
          RunRight.scale(1.0,1.5).skew(-0.5,0.0) +
          LeadRight.changeBeats(3).scale(3.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(4).scale(3.0,2.0),

          RunRight.scale(1.0,0.5).skew(-0.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          Forward.changeBeats(3)
      ]),

    AnimatedCall('Stretch Mini Chase',
      formation:Formation('Lines Facing Out'),
      group:' ',
      paths:[
          RunRight.scale(1.0,0.5).skew(-1.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(3),

          RunRight.scale(1.0,1.25).skew(-1.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,0.5),

          QuarterRight.changeBeats(2).skew(0.0,-2.0) +
          ExtendRight.changeBeats(3).scale(2.0,1.0)
      ]),

    AnimatedCall('Tandem Mini Chase',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',
      paths:[
          RunRight.scale(1.0,2.0).skew(-1.5,0.0) +
          LeadRight.changeBeats(4).scale(2.5,4.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          Forward +
          RunRight.scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0),

          QuarterRight.changeBeats(2) +
          Forward_2.changeBeats(3)
      ]),
  ];

