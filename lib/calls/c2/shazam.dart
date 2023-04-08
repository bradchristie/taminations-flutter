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

  final List<AnimatedCall> Shazam = [ 

    AnimatedCall('Shazam',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',parts:'1.5',
      paths:[
          HingeRight +
          UmTurnRight,

          HingeRight +
          UmTurnRight
      ]),

    AnimatedCall('Shazam',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',parts:'1.5',
      paths:[
          HingeLeft +
          UmTurnLeft,

          HingeLeft +
          UmTurnLeft
      ]),

    AnimatedCall('Shazam',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          HingeRight +
          UmTurnRight,

          HingeRight +
          UmTurnRight
      ]),

    AnimatedCall('Shazam',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',parts:'1.5',
      paths:[
          HingeLeft +
          UmTurnLeft,

          HingeLeft +
          UmTurnLeft
      ]),

    AnimatedCall('Shazam',
      formation:Formations.OceanWavesRHBGGB,
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
      formation:Formations.OceanWavesLHBGGB,
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
      formation:Formations.InvertedLinesEndsFacingOut,
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
      formation:Formations.TwomFacedLinesRH,
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

