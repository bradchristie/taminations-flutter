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

  final List<AnimatedCall> MiniChase = [ 

    AnimatedCall('Mini Chase',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',
      paths:[
          RunRight.skew(-1.5,0.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          ExtendRight.changeBeats(3).scale(2.0,1.0)
      ]),

    AnimatedCall('Mini Chase',
      formation:Formations.LinesFacingOut,
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
      formation:Formations.TradeBy,
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
      formation:Formations.TmBoneDRLD,
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
      formation:Formations.StaticFacingOut,
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
      formation:Formations.LinesFacingOut,
      group:' ',
      paths:[
          CounterRotateRight_m2_0.changehands(1) +
          UmTurnRight.changeBeats(3).changehands(1).skew(-1.0,-1.0),

          CounterRotateRight_0_m2.changehands(2) +
          RunRight.changehands(2).scale(2.0,2.0).skew(-1.0,-1.0),

          CounterRotateRight_m2_0.changehands(1).skew(1.0,-1.0) +
          Forward_2.changeBeats(3).changehands(1),

          CounterRotateRight_0_m2.changehands(2).skew(1.0,-1.0) +
          Forward_2.changeBeats(3).changehands(2)
      ]),

    AnimatedCall('Concentric Mini Chase',
      formation:Formations.CompletedDoublePassThru,
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
      formation:Formations.LinesFacingOut,
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
      formation:Formations.CompletedDoublePassThru,
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

