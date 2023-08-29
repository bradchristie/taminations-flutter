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

  final List<AnimatedCall> TwoFacedConcept = [

    AnimatedCall('Two-Faced Alter and Circulate',
      formation:Formation('Two-Faced Lines RH'),
      group:'Two-Faced',fractions:'3;7.5;4',
      paths:[
          RunRight +
          CastLeft +
          SwingRight +
          SwingLeft.changeBeats(4) +
          Forward_2.changeBeats(1.5) +
          LeadLeft,

          FlipLeft +
          UmTurnLeft +
          Forward_4.changeBeats(4.5) +
          RunRight.changeBeats(4).scale(1.5,3.0) +
          FlipRight,

          FlipLeft +
          UmTurnLeft +
          RunRight.changeBeats(4.5).scale(3.0,3.0) +
          RunRight.changeBeats(4).scale(1.5,3.0) +
          FlipRight,

          RunRight +
          CastLeft +
          Stand.changeBeats(3) +
          SwingLeft.changeBeats(4) +
          Forward_2.changeBeats(1.5) +
          LeadLeft
      ]),

    AnimatedCall('Two-Faced Alter the Wave',
      formation:Formation('Two-Faced Line RH'),
      group:'Two-Faced',fractions:'3;4.5;4',
      paths:[
          RunRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          Forward_2.changeBeats(1.5) +
          LeadLeft,

          FlipLeft +
          UmTurnLeft.changeBeats(4.5) +
          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0) +
          FlipRight
      ]),

    AnimatedCall('Two-Faced Change the Centers',
      formation:Formation('Two-Faced Line RH'),
      group:'Two-Faced',fractions:'3;3;3',
      paths:[
          RunRight +
          SwingLeft +
          RunLeft.scale(1.0,2.0) +
          Stand.changeBeats(3),

          FlipLeft +
          Stand.changeBeats(3) +
          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Two-Faced Change the Wave',
      formation:Formation('Two-Faced Line RH'),
      group:'Two-Faced',fractions:'3;3;3',
      paths:[
          RunRight +
          SwingLeft +
          RunLeft.scale(1.0,2.0) +
          FlipLeft,

          FlipLeft +
          Stand.changeBeats(3) +
          DodgeLeft +
          RunRight
      ]),

    AnimatedCall('Two-Faced Delight',
      formation:Formation('3/4 Lines RH'),
      group:'Two-Faced',fractions:'3;3;3',
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(2.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0) +
          Forward_4.changeBeats(4),

          QuarterRight.skew(0.0,-1.0) +
          Forward_2.changeBeats(4) +
          LeadRight.changeBeats(4).scale(2.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          FlipLeft +
          Stand.changeBeats(6) +
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33),

          RunRight +
          SwingLeft +
          SwingLeft +
          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33)
      ]),

    AnimatedCall('Two-Faced Peel Chain Thru',
      formation:Formation('3/4 Lines RH'),
      group:'Two-Faced',
      paths:[
          RunRight.changeBeats(4).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.5) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.17,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.17),

          RunLeft.changeBeats(4).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          UmTurnLeft.changeBeats(4).skew(0.0,0.5) +
          Stand.changeBeats(4) +
          HingeRight.skew(0.33,0.5) +
          HingeRight.skew(-0.17,0.33) +
          HingeRight.skew(0.67,0.17),

          RunRight.changeBeats(4).scale(1.0,1.25) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5)
      ]),

    AnimatedCall('Two-Faced Relay the Deucey',
      formation:Formation('Two-Faced Lines RH'),
      group:'Two-Faced',fractions:'3;4.5;3;3;3',
      paths:[
          RunRight +
          CastLeft +
          SwingRight +
          FlipLeft +
          RunRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          FlipLeft +
          RunRight +
          SwingLeft +
          CastRight,

          FlipLeft +
          Forward_2.changeBeats(4.5) +
          Forward_2.changeBeats(3) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 3, cy2: 2, x2: 3, y2: 3  )) +
          FlipLeft +
          CastRight,

          RunRight +
          CastLeft +
          RunRight +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 3, cy1: 0, cx2: 3, cy2: 0, x2: 3, y2: -3  )) +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(4.5)
      ]),

    AnimatedCall('Two-Faced Relay the Shadow',
      formation:Formation('Tidal Line RH'),
      group:'Two-Faced',
      paths:[
          RunRight.scale(1.0,0.5) +
          UmTurnRight.changehands(Hands.LEFT) +
          QuarterRight.changehands(Hands.LEFT).skew(-1.0,-0.5) +
          Stand.changeBeats(1) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.5) +
          QuarterLeft.skew(-1.0,1.0) +
          DodgeLeft,

          RunRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          LeadRight +
          DodgeLeft,

          FlipLeft.scale(1.0,0.5) +
          SwingRight +
          HingeRight.scale(1.0,1.5) +
          Stand.changeBeats(1) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Two-Faced Relay the Top',
      formation:Formation('Two-Faced Lines RH'),
      group:'Two-Faced',fractions:'3;4.5;3',
      paths:[
          RunRight +
          CastLeft +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).changehands(Hands.RIGHT).skew(0.707,-0.793) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          FlipLeft +
          CastRight,

          FlipLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          CastRight,

          RunRight +
          CastLeft +
          RunRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Two-Faced Reverse the Top',
      formation:Formation('Two-Faced Line RH'),
      group:'Two-Faced',fractions:'4.5',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          RunRight,

          CastRight +
          FlipLeft
      ]),

    AnimatedCall('Two-Faced Spin the Top',
      formation:Formation('Two-Faced Line RH'),
      group:'Two-Faced',fractions:'3',
      paths:[
          RunRight +
          CastLeft,

          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),
  ];

