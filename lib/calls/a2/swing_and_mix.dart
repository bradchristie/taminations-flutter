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

  final List<AnimatedCall> SwingAndMix = [

    AnimatedCall('Swing and Mix',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',parts:'5;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          SwingRight +
          RunLeft.scale(1.0,2.0),

          Forward_2 +
          SwingRight +
          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'3;3',
      paths:[
          SwingRight +
          RunLeft.scale(1.0,2.0),

          SwingRight +
          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'3;3',
      paths:[
          SwingLeft +
          RunRight.scale(1.0,2.0),

          SwingLeft +
          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Normal Lines'),
      from:'Lines',parts:'5;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          RunLeft,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          RunLeft,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3;3',
      paths:[
          SwingRight +
          RunLeft.scale(1.0,2.0),

          SwingRight +
          DodgeRight +
          SwingRight,

          SwingRight +
          DodgeRight +
          SwingRight,

          SwingRight +
          RunLeft.scale(1.0,2.0)
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3;3',
      paths:[
          SwingLeft +
          RunRight.scale(1.0,2.0),

          SwingLeft +
          DodgeLeft +
          SwingLeft,

          SwingLeft +
          DodgeLeft +
          SwingLeft,

          SwingLeft +
          RunRight.scale(1.0,2.0)
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',parts:'3;3',
      paths:[
          SwingRight +
          RunLeft.scale(1.0,2.0),

          SwingRight +
          DodgeRight +
          RunRight,

          SwingLeft +
          DodgeLeft +
          FlipLeft,

          SwingLeft +
          RunRight.scale(2.0,2.0)
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',parts:'3;3',
      paths:[
          SwingLeft +
          RunRight.scale(2.0,2.0),

          SwingLeft +
          DodgeLeft +
          FlipLeft,

          SwingRight +
          DodgeRight +
          RunRight,

          SwingRight +
          RunLeft.scale(1.0,2.0)
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'5;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          RunLeft.scale(1.0,2.0),

          Forward.changeBeats(2) +
          SwingRight +
          DodgeRight +
          SwingRight,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          RunLeft.scale(1.0,2.0),

          Forward.changeBeats(2) +
          SwingRight +
          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'3;3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          RunLeft,

          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          RunLeft
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'3;3',
      paths:[
          SwingLeft.scale(0.5,0.5) +
          RunRight,

          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          RunRight
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line',parts:'3;3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          RunLeft,

          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          RunRight.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          FlipLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          Forward.changeBeats(.5) +
          RunRight.changeBeats(2.5).skew(-1.0,0.0)
      ]),

    AnimatedCall('Swing and Mix',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Tidal Inverted Line',parts:'3;3',noDisplay: true,
      paths:[
          SwingLeft.scale(0.5,0.5) +
          Forward.changeBeats(.5) +
          RunRight.changeBeats(2.5).skew(-1.0,0.0),

          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          FlipLeft.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          RunRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          RunLeft
      ]),

    AnimatedCall('Left Swing and Mix',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',parts:'5;3',
      paths:[
          Forward_2 +
          SwingLeft +
          DodgeLeft +
          SwingLeft,

          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          SwingLeft +
          RunRight.scale(1.0,2.0)
      ]),

    AnimatedCall('Left Swing and Mix',
      formation:Formation('Normal Lines'),
      from:'Lines',parts:'5;3',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          RunRight,

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          RunRight
      ]),

    AnimatedCall('Left Swing and Mix',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'5;3',
      paths:[
          Forward.changeBeats(2) +
          SwingLeft +
          DodgeLeft +
          SwingLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          RunRight.scale(1.0,2.0),

          Forward.changeBeats(2) +
          SwingLeft +
          DodgeLeft +
          SwingLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          RunRight.scale(1.0,2.0)
      ]),

    AnimatedCall('All 8 Swing and Mix',
      formation:Formation('Thar LH Girls'),
      from:'Right-Hand Thar',parts:'3;4.5',
      paths:[
          SwingRight +
          Stand.changeBeats(1.5) +
          DodgeRight +
          SwingRight,

          SwingRight +
          HingeLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          SwingRight +
          Stand.changeBeats(1.5) +
          DodgeRight +
          SwingRight,

          SwingRight +
          HingeLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('All 8 Swing and Mix',
      formation:Formation('Thar RH Girls'),
      from:'Left-Hand Thar',parts:'3;4.5',
      paths:[
          SwingLeft +
          Stand.changeBeats(1.5) +
          DodgeLeft +
          SwingLeft,

          SwingLeft +
          HingeRight +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          SwingLeft +
          Stand.changeBeats(1.5) +
          DodgeLeft +
          SwingLeft,

          SwingLeft +
          HingeRight +
          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('As Couples Swing and Mix',
      formation:Formation('Normal Lines'),
      group:' ',parts:'5;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(1.5,1.5) +
          RunLeft.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          SwingRight.scale(0.5,0.5) +
          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(3.0,2.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(1.5,1.5) +
          DodgeRight +
          SwingRight.scale(1.5,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          SwingRight.scale(0.5,0.5) +
          DodgeRight +
          SwingRight.scale(0.5,0.5)
      ]),
  ];

