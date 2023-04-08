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

  final List<AnimatedCall> AnythingTheWindmill = [

    AnimatedCall('Mix the Windmill Right',
      formation:Formations.QuarterTag,
      group:' ',
      paths:[
          QuarterRight +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterRight +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          DodgeRight +
          SwingRight +
          CastLeft,

          RunLeft.changeBeats(6).scale(1.5,2.0) +
          CastLeft
      ]),

    AnimatedCall('Half Tag the Windmill Right',
      formation:Formations.QuarterLinesRH,
      group:' ',
      paths:[
          QuarterRight +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterRight +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          LeadRight +
          Forward_2 +
          CastRight,

          LeadRight +
          Stand.changeBeats(2) +
          CastRight
      ]),

    AnimatedCall('Follow Your Neighbor the Windmill Forward',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',
      paths:[
          Forward_4 +
          RunRight.changeBeats(6.5).scale(3.0,3.0),

          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          RunLeft.changeBeats(4).scale(1.0,0.5) +
          CastRight,

          Forward_2.changeBeats(1.5).skew(0.0,0.125) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25) +
          CastRight,

          RunRight.changeBeats(6.5).scale(3.0,3.0) +
          Forward_4
      ]),

    AnimatedCall('Switch the Windmill Right',
      formation:Formations.QuarterTag,
      group:' ',
      paths:[
          QuarterRight +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterRight +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          RunRight.changeBeats(4).scale(1.0,2.0) +
          CastLeft,

          RunRight.changeBeats(4) +
          BackHingeRight +
          BackHingeRight +
          BackHingeRight
      ]),
  ];

