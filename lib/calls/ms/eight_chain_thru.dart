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

  final List<AnimatedCall> EightChainThru = [

    AnimatedCall('Eight Chain One',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain One',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Eight Chain Two',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'2.5',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5)
      ]),

    AnimatedCall('Eight Chain Two',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'2',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          BelleWheel.changeBeats(2.5),

          Forward.changeBeats(2) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.changeBeats(2.5)
      ]),

    AnimatedCall('Eight Chain Three',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'2.5;2.5',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain Three',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'2;2.5',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain Four',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'2.5;2.5;2.5',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain Four',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'2;2.5;2.5',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5),

          Forward.changeBeats(2) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain Five',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'2.5;2.5;2.5;2.5',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain Five',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'2;2.5;2.5;2.5',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain Six',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'2.5;2.5;2.5;2.5;2.5',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5)
      ]),

    AnimatedCall('Eight Chain Six',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'2;2.5;2.5;2.5;2.5',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5),

          Forward.changeBeats(2) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5)
      ]),

    AnimatedCall('Eight Chain Seven',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'2.5;2.5;2.5;2.5;2.5;2.5',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain Seven',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'2;2.5;2.5;2.5;2.5;2.5',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain Thru',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',parts:'2.5;2.5;2.5;2.5;2.5;2.5;2.5',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain Thru',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'2;2.5;2.5;2.5;2.5;2.5;2.5',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5),

          Forward.changeBeats(2) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5),

          Forward.changeBeats(2) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5)
      ]),

    AnimatedCall('Eight Chain One and a Half',
      formation:Formations.EightChainThru,
      group:'  ',parts:'2.5',difficulty: 3,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          Forward.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,2.0),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BackHingeRight.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          HingeLeft.changeBeats(1.25)
      ]),

    AnimatedCall('Eight Chain Two and a Half',
      formation:Formations.EightChainThru,
      group:'  ',parts:'2.5;2.5',difficulty: 2,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,2.0),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          Forward.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,2.0),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          Forward.changeBeats(1.25)
      ]),

    AnimatedCall('Eight Chain Three and a Half',
      formation:Formations.EightChainThru,
      group:'  ',parts:'2.5;2.5;2.5',difficulty: 3,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BackHingeRight.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          HingeLeft.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          Forward.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,2.0)
      ]),

    AnimatedCall('Eight Chain Four and a Half',
      formation:Formations.EightChainThru,
      group:'  ',parts:'2.5;2.5;2.5;2.5',difficulty: 2,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,2.0),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          Forward.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,2.0),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          Forward.changeBeats(1.25)
      ]),

    AnimatedCall('Eight Chain Five and a Half',
      formation:Formations.EightChainThru,
      group:'  ',parts:'2.5;2.5;2.5;2.5;2.5',difficulty: 3,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          Forward.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,2.0),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BackHingeRight.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          HingeLeft.changeBeats(1.25)
      ]),

    AnimatedCall('Eight Chain Six and a Half',
      formation:Formations.EightChainThru,
      group:'  ',parts:'2.5;2.5;2.5;2.5;2.5;2.5',difficulty: 2,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,2.0),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          Forward.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,2.0),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          Forward.changeBeats(1.25)
      ]),

    AnimatedCall('Eight Chain Seven and a Half',
      formation:Formations.EightChainThru,
      group:'  ',parts:'2.5;2.5;2.5;2.5;2.5;2.5;2.5',difficulty: 3,
      paths:[
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BackHingeRight.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          HingeLeft.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BeauWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          Forward.changeBeats(1.25),

          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          PullRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendLeft.changeBeats(1.25).scale(1.0,0.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          BelleWheel.changeBeats(2.5) +
          PullLeft.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.25).scale(1.0,2.0)
      ]),
  ];

