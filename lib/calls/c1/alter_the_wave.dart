/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> AlterTheWave = [

    AnimatedCall('Alter the Wave',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'3;4.5;4',
      paths:[
          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0) +
          FlipLeft
      ]),

    AnimatedCall('Alter the Wave',
      formation:Formation('Compact Wave RH'),
      from:'Compact Right-Hand Wave',parts:'3;4.5;4',noDisplay: true,
      paths:[
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,0.5),

          SwingRight.scale(0.5,0.5) +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Alter the Wave',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'3;4.5;4',
      paths:[
          SwingLeft +
          CastRight +
          SwingRight.changeBeats(4) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          SwingLeft +
          UmTurnLeft.changeBeats(4.5) +
          LeadRight.changeBeats(2).scale(1.5,3.0) +
          LeadRight.changeBeats(2).scale(3.0,1.5) +
          FlipRight
      ]),

    AnimatedCall('Alter the Wave',
      formation:Formation('Compact Wave LH'),
      from:'Compact Left-Hand Wave',parts:'3;4.5;4',noDisplay: true,
      paths:[
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(1.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          UmTurnLeft.changeBeats(4.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          FlipRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Alter the Wave',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3;4.5;4',
      paths:[
          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0) +
          FlipLeft,

          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(1.5,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,1.5) +
          FlipLeft,

          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Alter the Wave',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3;4.5;4',
      paths:[
          SwingLeft +
          CastRight +
          SwingRight.changeBeats(4) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          SwingLeft +
          UmTurnLeft.changeBeats(4.5) +
          LeadRight.changeBeats(2).scale(1.5,3.0) +
          LeadRight.changeBeats(2).scale(3.0,1.5) +
          FlipRight,

          SwingLeft +
          UmTurnLeft.changeBeats(4.5) +
          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0) +
          FlipRight,

          SwingLeft +
          CastRight +
          SwingRight.changeBeats(4) +
          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Alter the Wave',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Tidal Wave',parts:'3;4.5;4',
      paths:[
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,0.5),

          SwingRight.scale(0.5,0.5) +
          UmTurnRight.changeBeats(4.5) +
          RunLeft.changeBeats(4).scale(1.5,1.5) +
          RunLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          UmTurnRight.changeBeats(4.5) +
          RunLeft.changeBeats(4).scale(1.5,1.5) +
          RunLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,0.5)
      ]),

    AnimatedCall('Alter the Wave',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'3;4.5;4',
      paths:[
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(1.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          UmTurnLeft.changeBeats(4.5) +
          RunRight.changeBeats(4).scale(1.5,1.5) +
          RunRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          UmTurnLeft.changeBeats(4.5) +
          RunRight.changeBeats(4).scale(1.5,1.5) +
          RunRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(1.5,0.5)
      ]),

    AnimatedCall('Alter the Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'5;4.5;4',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Forward.changeBeats(2) +
          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(1.5,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,1.5) +
          FlipLeft,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Forward.changeBeats(2) +
          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0) +
          FlipLeft
      ]),

    AnimatedCall('Left Alter the Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'5;4.5;4',
      taminator: '''
      "Left" tells the dancers to step to a left-hand wave.
    ''',
      paths:[
          Forward.changeBeats(2) +
          SwingLeft +
          UmTurnLeft.changeBeats(4.5) +
          LeadRight.changeBeats(2).scale(1.5,3.0) +
          LeadRight.changeBeats(2).scale(3.0,1.5) +
          FlipRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          SwingRight.changeBeats(4) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          Forward.changeBeats(2) +
          SwingLeft +
          UmTurnLeft.changeBeats(4.5) +
          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0) +
          FlipRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          CastRight +
          SwingRight.changeBeats(4) +
          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Alter the Wave, but Counter Rotate the Diamond 3/4',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'3;4.5;4',
      paths:[
          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          HingeLeft.changeBeats(2) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0) +
          LeadLeft.changeBeats(2).scale(3.0,3.0) +
          FlipLeft
      ]),

    AnimatedCall('As Couples Alter the Wave',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',group:' ',parts:'3;4.5;4',
      paths:[
          SwingRight.scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(2.5,0.5),

          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(1.5,1.5) +
          HingeLeft.scale(1.5,1.5) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          LeadLeft.changeBeats(3).scale(3.5,1.5),

          SwingRight.scale(0.5,0.5) +
          BeauWheel.changeBeats(4.5).scale(0.5,-0.5) +
          RunLeft.changeBeats(4).scale(3.5,3.5) +
          RunLeft.scale(1.5,1.5),

          SwingRight.scale(1.5,1.5) +
          BelleWheel.changeBeats(4.5).scale(0.5,-0.5) +
          RunLeft.changeBeats(4).scale(2.5,2.5) +
          RunLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('All 8 Alter the Wave',
      formation:Formation('Thar LH Boys'),
      from:'Thar',group:' ',parts:'3;4.5;8',
      paths:[
          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0) +
          FlipLeft.changeBeats(3.5),

          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(8).changehands(Hands.BOTH) +
          Forward_2 +
          LeadLeft,

          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0) +
          FlipLeft.changeBeats(3.5),

          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(8).changehands(Hands.BOTH) +
          Forward_2 +
          LeadLeft
      ]),

    AnimatedCall('Concentric Alter the Wave',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Tidal Wave',group:' ',parts:'3;9;6',
      paths:[
          SwingRight.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(2.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.5,2.5) +
          SwingLeft.changeBeats(6).scale(2.5,2.5) +
          LeadLeft.changeBeats(3).scale(3.5,2.5),

          SwingRight.scale(0.5,0.5) +
          UmTurnRight.changeBeats(9) +
          SwingLeft.changeBeats(6).scale(3.5,3.5) +
          RunLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          CastLeft.changeBeats(9).scale(0.5,0.5) +
          SwingLeft.changeBeats(6).changehands(Hands.BOTH).scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(1.5,0.5),

          SwingRight.scale(0.5,0.5) +
          UmTurnRight.changeBeats(9) +
          SwingLeft.changeBeats(6).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Phantom Alter the Wave',
      formation:Formation('Phantom Formation RH'),
      from:'Phantom Formation',group:' ',parts:'3;4.5;4',
      paths:[
          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0) +
          RunLeft,

          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0) +
          RunLeft,

          SwingRight +
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0) +
          RunLeft,

          SwingRight +
          CastLeft +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Tandem Alter the Wave',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',group:' ',parts:'6;9;8',
      paths:[
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changeBeats(4).changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changeBeats(4).changehands(Hands.LEFT) +
          QuarterLeft.changeBeats(5).skew(4.0,-1.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT) +
          QuarterRight.changeBeats(4.5).skew(-1.0,-0.5) +
          QuarterRight.changeBeats(4.5).skew(-0.5,-1.0) +
          CounterRotateLeft_2_4.changeBeats(4) +
          CounterRotateLeft_2_4.changeBeats(4) +
          RunLeft.skew(-1.0,0.0) +
          Forward_2,

          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT) +
          QuarterRight.changeBeats(4.5).skew(1.0,0.5) +
          QuarterRight.changeBeats(4.5).skew(0.5,1.0) +
          CounterRotateLeft_4_2.changeBeats(4) +
          CounterRotateLeft_4_2.changeBeats(4) +
          Forward_2 +
          RunLeft.skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateLeft_0_2.changeBeats(3).changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changeBeats(3).changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changeBeats(3).changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changeBeats(4).changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changeBeats(4).changehands(Hands.LEFT) +
          LeadLeft.changeBeats(4).scale(2.0,3.0)
      ]),
  ];

