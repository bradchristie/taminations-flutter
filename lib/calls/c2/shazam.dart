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

  final List<AnimatedCall> Shazam = [

    AnimatedCall('Shazam',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',parts:'1.5',
      paths:[
          HingeRight +
          UmTurnRight,

          HingeRight +
          UmTurnRight
      ]),

    AnimatedCall('Shazam',
        formation:Formation('Box RH Close'),
        from:'Tight Right-Hand Box',parts:'1.5',
        noDisplay: true,
        paths:[
          HingeRight.scale(0.5, 1) +
              UmTurnRight,

          HingeRight.scale(0.5, 1) +
              UmTurnRight
        ]),

    AnimatedCall('Shazam',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'1.5',
      paths:[
          HingeLeft +
          UmTurnLeft,

          HingeLeft +
          UmTurnLeft
      ]),

    AnimatedCall('Shazam',
        formation:Formation('Box LH Close'),
        from:'Tight Left-Hand Box',parts:'1.5',
        noDisplay: true,
        paths:[
          HingeLeft.scale(0.5, 1) +
              UmTurnLeft,

          HingeLeft.scale(0.5, 1) +
              UmTurnLeft
        ]),

    AnimatedCall('Shazam',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          HingeRight +
          UmTurnRight,

          HingeRight +
          UmTurnRight
      ]),

    AnimatedCall('Shazam',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'1.5',
      paths:[
          HingeLeft +
          UmTurnLeft,

          HingeLeft +
          UmTurnLeft
      ]),

    AnimatedCall('Shazam',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'1.5',
      paths:[
          HingeRight +
          UmTurnRight,

          HingeRight +
          UmTurnRight,

          HingeRight +
          UmTurnRight,

          HingeRight +
          UmTurnRight
      ]),

    AnimatedCall('Shazam',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'1.5',
      paths:[
          HingeLeft +
          UmTurnLeft,

          HingeLeft +
          UmTurnLeft,

          HingeLeft +
          UmTurnLeft,

          HingeLeft +
          UmTurnLeft
      ]),

    AnimatedCall('Shazam',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',parts:'1.5',
      paths:[
          HingeLeft +
          UmTurnLeft,

          HingeLeft +
          UmTurnLeft,

          HingeRight +
          UmTurnRight,

          HingeRight +
          UmTurnRight
      ]),

    AnimatedCall('Centers Shazam',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',parts:'1.5',
      paths:[
          Path(),

          HingeRight +
          UmTurnRight,

          HingeRight +
          UmTurnRight,

          Path()
      ]),
  ];

