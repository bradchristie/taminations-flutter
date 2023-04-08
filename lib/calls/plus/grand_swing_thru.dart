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

  final List<AnimatedCall> GrandSwingThru = [

    AnimatedCall('Grand Swing Thru',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',parts:'3',difficulty: 1,
      paths:[
          SwingRight.scale(0.65,0.5) +
          SwingLeft.scale(0.65,0.5),

          SwingRight.scale(0.65,0.5),

          SwingRight.scale(0.65,0.5) +
          SwingLeft.scale(0.65,0.5),

          SwingRight.scale(0.65,0.5) +
          SwingLeft.scale(0.65,0.5)
      ]),

    AnimatedCall('Grand Swing Thru',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingLeft.scale(0.65,0.5),

          SwingRight.scale(0.65,0.5) +
          SwingLeft.scale(0.65,0.5),

          SwingRight.scale(0.65,0.5) +
          SwingLeft.scale(0.65,0.5),

          SwingRight.scale(0.65,0.5) +
          SwingLeft.scale(0.65,0.5)
      ]),

    AnimatedCall('Grand Swing Thru',
      formation:Formations.NormalLinesCompact,
      from:'Normal Lines',parts:'4',difficulty: 2,
      paths:[
          ExtendLeft.scale(1.5,0.5) +
          SwingRight.scale(0.65,0.5) +
          SwingLeft.scale(0.65,0.5),

          ExtendLeft.scale(1.5,0.5) +
          SwingRight.scale(0.65,0.5) +
          SwingLeft.scale(0.65,0.5),

          ExtendLeft.scale(1.5,0.5) +
          SwingRight.scale(0.65,0.5) +
          SwingLeft.scale(0.65,0.5),

          ExtendLeft.scale(1.5,0.5) +
          SwingRight.scale(0.65,0.5)
      ]),

    AnimatedCall('Grand Left Swing Thru',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',parts:'3',difficulty: 1,
      paths:[
          SwingLeft.scale(0.65,0.5) +
          SwingRight.scale(0.65,0.5),

          SwingLeft.scale(0.65,0.5),

          SwingLeft.scale(0.65,0.5) +
          SwingRight.scale(0.65,0.5),

          SwingLeft.scale(0.65,0.5) +
          SwingRight.scale(0.65,0.5)
      ]),

    AnimatedCall('Grand Left Swing Thru',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingRight.scale(0.65,0.5),

          SwingLeft.scale(0.65,0.5) +
          SwingRight.scale(0.65,0.5),

          SwingLeft.scale(0.65,0.5) +
          SwingRight.scale(0.65,0.5),

          SwingLeft.scale(0.65,0.5) +
          SwingRight.scale(0.65,0.5)
      ]),

    AnimatedCall('Grand Left Swing Thru',
      formation:Formations.NormalLinesCompact,
      from:'Normal Lines',parts:'4',difficulty: 2,
      paths:[
          ExtendRight.scale(1.5,0.5) +
          SwingLeft.scale(0.65,0.5),

          ExtendRight.scale(1.5,0.5) +
          SwingLeft.scale(0.65,0.5) +
          SwingRight.scale(0.65,0.5),

          ExtendRight.scale(1.5,0.5) +
          SwingLeft.scale(0.65,0.5) +
          SwingRight.scale(0.65,0.5),

          ExtendRight.scale(1.5,0.5) +
          SwingLeft.scale(0.65,0.5) +
          SwingRight.scale(0.65,0.5)
      ]),
  ];

