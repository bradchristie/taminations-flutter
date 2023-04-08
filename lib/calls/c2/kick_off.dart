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

  final List<AnimatedCall> KickOff = [

    AnimatedCall('Boys Kick Off',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          RunRight.changeBeats(2.5).scale(0.75,1.0).skew(1.0,-0.5) +
          QuarterRight.skew(0.5,0.0),

          LeadLeft.changeBeats(4).scale(0.5,2.5)
      ]),

    AnimatedCall('Boys Kick Off',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,3.0),

          RunRight.changeBeats(2.5).scale(1.0,1.5) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Centers Cross Kick Off',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-2.0),

          LeadRight.changeBeats(2).scale(2.0,2.0) +
          RunRight.changeBeats(3).skew(2.0,0.0)
      ]),

    AnimatedCall('Centers Cross Kick Off',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,2.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.changeBeats(3).skew(2.0,0.0),

          LeadLeft.changeBeats(2).scale(2.0,2.0) +
          RunLeft.changeBeats(3).skew(2.0,-1.0),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0)
      ]),

    AnimatedCall('Centers Cross Kick Off',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          QuarterLeft.changeBeats(3).skew(-1.0,2.0),

          LeadRight.changeBeats(2).scale(2.0,2.0) +
          RunRight.changeBeats(3).skew(2.0,1.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.changeBeats(3).skew(2.0,0.0),

          LeadLeft.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Centers Cross Kick Off',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,2.0),

          LeadRight.changeBeats(2).scale(2.0,2.0) +
          RunRight.changeBeats(3).skew(2.0,1.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.changeBeats(3).skew(2.0,0.0),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0)
      ]),

    AnimatedCall('Centers Cross Kick Off',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          QuarterLeft.changeBeats(3).skew(-1.0,2.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.changeBeats(3).skew(2.0,0.0),

          LeadLeft.changeBeats(2).scale(2.0,2.0) +
          RunLeft.changeBeats(3).skew(2.0,-1.0),

          LeadLeft.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Centers Cross Kick Off',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          QuarterLeft.changeBeats(3).skew(-1.0,2.0),

          LeadLeft.scale(0.5,1.0) +
          RunLeft.changeBeats(3).skew(3.0,-0.5),

          LeadRight.scale(1.5,1.0) +
          RunRight.changeBeats(3).skew(3.0,-0.5),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0)
      ]),

    AnimatedCall('Ends Cross Kick Off',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          LeadRight.changeBeats(2).scale(2.0,2.0) +
          RunRight.changeBeats(3).skew(2.0,0.0),

          QuarterLeft.changeBeats(3).skew(0.0,2.0)
      ]),

    AnimatedCall('Ends Cross Kick Off',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(2).scale(1.5,2.0) +
          RunRight.changeBeats(3).skew(2.0,1.5),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0),

          LeadRight.changeBeats(3).scale(1.0,2.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.changeBeats(3).skew(2.0,0.0)
      ]),

    AnimatedCall('Ends Cross Kick Off',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.changeBeats(3).skew(2.0,0.0),

          LeadLeft.changeBeats(3).scale(1.0,2.0),

          QuarterLeft.changeBeats(3).skew(-1.0,2.0),

          LeadLeft.changeBeats(2).scale(1.5,2.0) +
          RunLeft.changeBeats(3).skew(2.0,-1.5)
      ]),

    AnimatedCall('Ends Cross Kick Off',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          LeadRight.changeBeats(2).scale(1.5,2.0) +
          RunRight.changeBeats(3).skew(2.0,1.5),

          LeadLeft.changeBeats(3).scale(1.0,2.0),

          QuarterLeft.changeBeats(3).skew(-1.0,2.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.changeBeats(3).skew(2.0,0.0)
      ]),

    AnimatedCall('Ends Cross Kick Off',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.changeBeats(3).skew(2.0,0.0),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0),

          LeadRight.changeBeats(3).scale(1.0,2.0),

          LeadLeft.changeBeats(2).scale(1.5,2.0) +
          RunLeft.changeBeats(3).skew(2.0,-1.5)
      ]),

    AnimatedCall('Ends Cross Kick Off',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          RunLeft.skew(1.0,-0.5),

          QuarterRight.changeBeats(3).skew(-1.0,-2.0),

          QuarterLeft.changeBeats(3).skew(-1.0,2.0),

          LeadRight.changeBeats(3).scale(1.5,3.0) +
          RunRight.skew(1.0,-0.5)
      ]),
  ];

