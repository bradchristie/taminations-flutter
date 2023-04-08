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

  final List<AnimatedCall> RelayTheTop = [ 

    AnimatedCall('Relay the Top',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'3;4.5;3',
      paths:[
          SwingRight +
          CastLeft +
          HingeRight.changeBeats(3) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          SwingRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          HingeRight.changeBeats(3) +
          CastLeft,

          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          SwingRight +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Relay the Top',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'3;4.5;3',
      paths:[
          SwingLeft +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          CastRight,

          SwingLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          HingeLeft.changeBeats(3) +
          CastRight,

          SwingLeft +
          CastRight +
          HingeLeft.changeBeats(3) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Relay the Top',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'4.5;4.5;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          HingeRight.changeBeats(3) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          Forward.changeBeats(1.5) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          ExtendLeft.changeBeats(1.5).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward.changeBeats(1.5) +
          SwingRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          HingeRight.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('Left Relay the Top',
      formation:Formations.EightChainThru,
      group:' ',parts:'4.5;4.5;3',
      paths:[
          Forward.changeBeats(1.5) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          CastRight,

          ExtendRight.changeBeats(1.5).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          HingeLeft.changeBeats(3) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          Forward.changeBeats(1.5) +
          SwingLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          HingeLeft.changeBeats(3) +
          CastRight,

          ExtendRight.changeBeats(1.5).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Relay the Top, Turn the Star 1/2',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',parts:'3;4.5;3',
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          CastLeft,

          SwingRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          SwingRight +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Relay the Top, Turn the Star 3/4',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',parts:'3;4.5;4.5',
      paths:[
          SwingRight +
          CastLeft +
          CastRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          SwingRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          CastRight +
          CastLeft,

          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight.changeBeats(4.5) +
          CastLeft,

          SwingRight +
          CastLeft +
          SwingRight.changeBeats(4.5) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Relay the Top, Do Not Turn the Star',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',parts:'3;4.5;3',
      paths:[
          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          CastLeft,

          SwingRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          SwingRight +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Relay the Top, Turn the Star 1/2',
      formation:Formations.OceanWavesLHBGGB,
      group:' ',parts:'3;4.5;3',noDisplay: true,
      paths:[
          SwingLeft +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          CastRight,

          SwingLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          SwingLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          SwingLeft +
          CastRight +
          SwingLeft +
          CastRight
      ]),

    AnimatedCall('Relay the Top, Turn the Star 3/4',
      formation:Formations.OceanWavesLHBGGB,
      group:' ',parts:'3;4.5;4.5',noDisplay: true,
      paths:[
          SwingLeft +
          CastRight +
          SwingLeft.changeBeats(4.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft.changeBeats(4.5) +
          CastRight,

          SwingLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          CastLeft +
          CastRight,

          SwingLeft +
          CastRight +
          CastLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Relay the Top, Do Not Turn the Star',
      formation:Formations.OceanWavesLHBGGB,
      group:' ',parts:'3;4.5;3',noDisplay: true,
      paths:[
          SwingLeft +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          CastRight,

          SwingLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          Stand.changeBeats(3) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          CastRight
      ]),
  ];

