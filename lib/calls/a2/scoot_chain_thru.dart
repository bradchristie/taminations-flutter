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

  final List<AnimatedCall> ScootChainThru = [

    AnimatedCall('Scoot Chain Thru',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',parts:'2;3;3;3',
      paths:[
          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight +
          Forward_2,

          Stand.changeBeats(2) +
          RunRight,

          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward_2,

          Stand.changeBeats(2) +
          RunRight
      ]),

    AnimatedCall('Scoot Chain Thru',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',parts:'2;3;3;3',
      paths:[
          Stand.changeBeats(2) +
          RunLeft,

          Forward_2 +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward_2,

          Stand.changeBeats(2) +
          RunLeft,

          Forward_2 +
          SwingLeft +
          SwingRight +
          SwingLeft +
          Forward_2
      ]),

    AnimatedCall('Scoot Chain Thru',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',parts:'2;3;3;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward_2,

          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight +
          Forward_2,

          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward
      ]),

    AnimatedCall('Scoot Chain Thru',
      formation:Formations.QuarterTagLH,
      from:'Left-Handed Quarter Tag',parts:'2;3;3;3',
      paths:[
          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward_2,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward_2 +
          SwingLeft +
          SwingRight +
          SwingLeft +
          Forward_2,

          Forward_2 +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward
      ]),

    AnimatedCall('Half Scoot Chain Thru',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',noDisplay: true,
      paths:[
          Forward_2 +
          SwingRight +
          HingeLeft,

          Stand.changeBeats(2) +
          LeadRight,

          Forward_2 +
          SwingRight,

          Stand.changeBeats(2) +
          LeadRight
      ]),

    AnimatedCall('Half Scoot Chain Thru',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',noDisplay: true,
      paths:[
          Stand.changeBeats(2) +
          LeadLeft,

          Forward_2 +
          SwingLeft,

          Stand.changeBeats(2) +
          LeadLeft,

          Forward_2 +
          SwingLeft +
          HingeRight
      ]),

    AnimatedCall('Half Scoot Chain Thru',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          HingeLeft,

          Forward.changeBeats(2) +
          SwingRight,

          Forward_2 +
          SwingRight +
          HingeLeft,

          Forward_2 +
          SwingRight
      ]),

    AnimatedCall('Half Scoot Chain Thru',
      formation:Formations.QuarterTagLH,
      from:'Left-Handed Quarter Tag',noDisplay: true,
      paths:[
          Forward.changeBeats(2) +
          SwingLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          HingeRight,

          Forward_2 +
          SwingLeft +
          HingeRight,

          Forward_2 +
          SwingLeft
      ]),
  ];

