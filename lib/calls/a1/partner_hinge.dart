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

  final List<AnimatedCall> PartnerHinge = [

    AnimatedCall('Partner Hinge',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0)
      ]),

    AnimatedCall('Partner Hinge',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Partner Hinge',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.0),

          QuarterLeft.changeBeats(2).skew(-0.5,1.0),

          LeadRight.changeBeats(2).scale(0.5,1.0),

          QuarterLeft.changeBeats(2).skew(-0.5,1.0)
      ]),

    AnimatedCall('Partner Hinge',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,0.5),

          LeadRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,0.5)
      ]),

    AnimatedCall('Left Partner Hinge',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-1.0),

          LeadLeft.changeBeats(2),

          QuarterRight.changeBeats(2).skew(-1.0,-1.0),

          LeadLeft.changeBeats(2)
      ]),

    AnimatedCall('Left Partner Hinge',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          LeadLeft.changeBeats(2),

          QuarterRight.changeBeats(2).skew(-1.0,-1.0),

          LeadLeft.changeBeats(2),

          QuarterRight.changeBeats(2).skew(-1.0,-1.0)
      ]),

    AnimatedCall('Left Partner Hinge',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          QuarterRight.changeBeats(2).skew(-0.5,-1.0),

          LeadLeft.changeBeats(2).scale(0.5,1.0),

          QuarterRight.changeBeats(2).skew(-0.5,-1.0),

          LeadLeft.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Left Partner Hinge',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(-1.0,-0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5)
      ]),
  ];

