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

  final List<AnimatedCall> GrandMix = [

    AnimatedCall('Grand Mix',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'3',
      paths:[
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunLeft +
          SwingRight.scale(0.5,0.5),

          RunLeft,

          RunLeft +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Grand Mix',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'3',
      paths:[
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          RunRight +
          SwingLeft.scale(0.5,0.5),

          RunRight,

          RunRight +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Grand Mix',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Tidal Two-Faced Line',parts:'3',
      paths:[
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          RunRight.scale(2.0,1.0) +
          SwingLeft.scale(0.5,0.5),

          RunRight,

          RunLeft +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Grand Mix',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Tidal Two-Faced Line',parts:'3',
      paths:[
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          RunLeft +
          SwingRight.scale(0.5,0.5),

          RunLeft,

          RunRight.scale(2.0,1.0) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Grand Mix',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Right-Hand Tidal Inverted Line',parts:'3',
      paths:[
          DodgeRight.scale(1.0,0.5) +
          RunRight.scale(1.0,0.5),

          FlipLeft +
          SwingRight.scale(0.5,0.5),

          RunRight,

          RunRight +
          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Grand Mix',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Left-Hand Tidal Inverted Line',parts:'3',
      paths:[
          DodgeLeft.scale(1.0,0.5) +
          FlipLeft.scale(1.0,0.5),

          RunRight.scale(2.0,1.0) +
          SwingLeft.scale(0.5,0.5),

          RunLeft,

          RunLeft +
          RunRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Grand Mix',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',parts:'3',
      paths:[
          DodgeRight.scale(1.0,0.5) +
          FlipRight.scale(1.0,0.5),

          RunRight.scale(2.0,1.0) +
          SwingLeft.scale(0.5,0.5),

          RunLeft,

          RunRight.scale(0.5,1.0) +
          RunLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Grand Mix',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',parts:'3',
      paths:[
          RunLeft +
          SwingRight.scale(0.5,0.5),

          DodgeLeft.scale(1.0,0.5) +
          FlipLeft.scale(1.0,0.5),

          RunLeft.scale(0.5,1.0) +
          RunRight.scale(1.0,0.5),

          RunRight.scale(2.0,1.0)
      ]),

    AnimatedCall('Grand Swing and Mix',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'3;3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          RunLeft +
          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          RunLeft +
          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          RunLeft
      ]),

    AnimatedCall('Grand Swing and Mix',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'3',
      paths:[
          SwingLeft.scale(0.5,0.5) +
          RunRight +
          SwingLeft.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          DodgeLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          RunRight +
          SwingLeft.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          RunRight
      ]),

    AnimatedCall('Grand Swing and Mix',
      formation:Formation('Normal Lines'),
      from:'Facing Lines',parts:'5;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          RunLeft +
          SwingRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          RunLeft +
          SwingRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          RunLeft,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          DodgeRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),
  ];

