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

  final List<AnimatedCall> SpinChainAndExchangeTheGears = [

    AnimatedCall('Spin Chain and Exchange the Gears',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'3;4.5;3;4.5',difficulty: 1,
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          CastLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadRight.scale(1.5,0.5),

          SwingRight +
          FlipRight.changeBeats(4.5) +
          Stand.changeBeats(3) +
          CastLeft +
          HalfHingeRight.changehands(0).skew(-0.4,-0.45) +
          Forward.changeBeats(3).scale(1.52,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeRight.changehands(0) +
          SwingRight.changehands(0).skew(-0.5,0.0),

          SwingRight +
          FlipRight.changeBeats(4.5) +
          Stand.changeBeats(3) +
          CastLeft +
          HingeLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight.scale(0.5,1.0).skew(0.0,0.3) +
          QuarterRight,

          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          CastLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,0.3) +
          HalfHingeRight.changeBeats(1.5).skew(0.3,0.3)
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'3;4.5;3;4.5',difficulty: 2,
      paths:[
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          CastRight +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,-0.3) +
          HalfHingeLeft.changeBeats(1.5).skew(0.3,-0.3),

          SwingLeft +
          FlipLeft.changeBeats(4.5) +
          Stand.changeBeats(3) +
          CastRight +
          HingeRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft.scale(0.5,1.0).skew(0.0,-0.3) +
          QuarterLeft,

          SwingLeft +
          FlipLeft.changeBeats(4.5) +
          Stand.changeBeats(3) +
          CastRight +
          HalfHingeLeft.changehands(0).skew(-0.4,0.45) +
          Forward.changeBeats(3).scale(1.52,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeLeft.changehands(0) +
          SwingLeft.changehands(0).skew(-0.5,0.0),

          SwingLeft +
          CastRight +
          SwingLeft +
          CastRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadLeft.scale(1.5,0.5)
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'5;4.5;3;4.5',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          SwingRight +
          CastLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadRight.scale(1.5,0.5),

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight.scale(0.5,1.0).skew(0.0,0.3) +
          QuarterRight,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          CastLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,0.3) +
          HalfHingeRight.changeBeats(1.5).skew(0.3,0.3),

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeRight.changehands(0) +
          SwingRight.changehands(0).skew(-0.5,0.0)
      ]),

    AnimatedCall('Left Spin Chain and Exchange the Gears',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',group:' ',parts:'5;4.5;3;4.5',difficulty: 3,
      paths:[
          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          SwingRight +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft.scale(0.5,1.0).skew(0.0,-0.3) +
          QuarterLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          SwingLeft +
          CastRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadLeft.scale(1.5,0.5),

          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeLeft.changehands(0) +
          SwingLeft.changehands(0).skew(-0.5,0.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          CastRight +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,-0.3) +
          HalfHingeLeft.changeBeats(1.5).skew(0.3,-0.3)
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears, Do Not Turn the Star',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',parts:'3;4.5;3;0',difficulty: 3,
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(3).scale(1.6,1.0).skew(0.0,-0.55) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeRight.changehands(0) +
          SwingRight.changehands(0).skew(-0.5,0.0),

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,0.3) +
          HalfHingeRight.changeBeats(1.5).skew(0.3,0.3),

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadRight.scale(1.5,0.5),

          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          HingeLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight.scale(0.5,1.0).skew(0.0,0.3) +
          QuarterRight
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears, Turn the Star One Quarter',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',parts:'3;4.5;3;1.5',difficulty: 2,
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          SwingLeft +
          HingeLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,0.3) +
          HalfHingeRight.changeBeats(1.5).skew(0.3,0.3),

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight.scale(0.5,1.0).skew(0.0,0.3) +
          QuarterRight,

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeRight.changehands(0) +
          SwingRight.changehands(0).skew(-0.5,0.0),

          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          HingeLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadRight.scale(1.5,0.5)
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears, Turn the Star One Half',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',group:' ',parts:'3;4.5;3;3',difficulty: 2,
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          SwingLeft +
          HingeLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight.scale(0.5,1.0).skew(0.0,0.3) +
          QuarterRight,

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadRight.scale(1.5,0.5),

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,0.3) +
          HalfHingeRight.changeBeats(1.5).skew(0.3,0.3),

          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          HingeLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeRight.changehands(0) +
          SwingRight.changehands(0).skew(-0.5,0.0)
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears, Turn the Star a Full Turn',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',group:' ',parts:'3;4.5;3;6',difficulty: 2,
      taminator: '''A common variation.
    ''',
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          SwingLeft +
          HingeLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeRight.changehands(0) +
          SwingRight.changehands(0).skew(-0.5,0.0),

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          CastLeft +
          CastLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,0.3) +
          HalfHingeRight.changeBeats(1.5).skew(0.3,0.3),

          SwingRight +
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadRight.scale(1.5,0.5),

          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          CastLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight.scale(0.5,1.0).skew(0.0,0.3) +
          QuarterRight
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears, Do Not Turn the Star',
      formation:Formations.OceanWavesLHBGGB,
      group:' ',parts:'3;4.5;3;0',difficulty: 3,noDisplay: true,
      paths:[
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          HingeRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft.scale(0.5,1.0).skew(0.0,-0.3) +
          QuarterRight,

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadLeft.scale(1.5,0.5),

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,-0.3) +
          HalfHingeLeft.changeBeats(1.5).skew(0.3,-0.3),

          SwingLeft +
          CastRight +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(3).scale(1.6,1.0).skew(0.0,0.55) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeLeft.changehands(0) +
          SwingLeft.changehands(0).skew(-0.5,0.0)
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears, Turn the Star One Quarter',
      formation:Formations.OceanWavesLHBGGB,
      group:' ',parts:'3;4.5;3;1.5',difficulty: 2,noDisplay: true,
      paths:[
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          HingeRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadLeft.scale(1.5,0.5),

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeLeft.changehands(0) +
          SwingLeft.changehands(0).skew(-0.5,0.0),

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft.scale(0.5,1.0).skew(0.0,-0.3) +
          QuarterLeft,

          SwingLeft +
          CastRight +
          SwingLeft +
          SwingRight +
          HingeRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,-0.3) +
          HalfHingeLeft.changeBeats(1.5).skew(0.3,-0.3)
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears, Turn the Star One Half',
      formation:Formations.OceanWavesLHBGGB,
      group:' ',parts:'3;4.5;3;3',difficulty: 2,noDisplay: true,
      paths:[
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          HingeRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeLeft.changehands(0) +
          SwingLeft.changehands(0).skew(-0.5,0.0),

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          SwingRight +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,-0.3) +
          HalfHingeLeft.changeBeats(1.5).skew(0.3,-0.3),

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadLeft.scale(1.5,0.5),

          SwingLeft +
          CastRight +
          SwingLeft +
          SwingRight +
          HingeRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft.scale(0.5,1.0).skew(0.0,-0.3) +
          QuarterLeft
      ]),

    AnimatedCall('Spin Chain and Exchange the Gears, Turn the Star a Full Turn',
      formation:Formations.OceanWavesLHBGGB,
      group:' ',parts:'3;4.5;3;6',difficulty: 2,noDisplay: true,
      paths:[
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          CastRight +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft.scale(0.5,1.0).skew(0.0,-0.3) +
          QuarterLeft,

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          SwingRight +
          SwingRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadLeft.scale(1.5,0.5),

          SwingLeft +
          Stand.changeBeats(2) +
          FlipLeft.changeBeats(5.5) +
          CastRight +
          CastRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,-0.3) +
          HalfHingeLeft.changeBeats(1.5).skew(0.3,-0.3),

          SwingLeft +
          CastRight +
          SwingLeft +
          SwingRight +
          HingeRight +
          HalfHingeRight +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeLeft +
          HingeLeft +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeLeft.changehands(0) +
          SwingLeft.changehands(0).skew(-0.5,0.0)
      ]),
  ];

