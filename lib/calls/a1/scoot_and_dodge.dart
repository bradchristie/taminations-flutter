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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> ScootAndDodge = [ 

    AnimatedCall('Scoot and Dodge',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          DodgeRight
      ]),

    AnimatedCall('Scoot and Dodge',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          DodgeLeft,

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Scoot and Dodge',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          DodgeRight,

          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          DodgeRight
      ]),

    AnimatedCall('Scoot and Dodge',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          DodgeLeft,

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25),

          DodgeLeft,

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Scoot and Dodge',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          DodgeRight,

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          DodgeRight,

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Scoot and Dodge',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          DodgeLeft,

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          DodgeLeft
      ]),

    AnimatedCall('As Couples Scoot and Dodge',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',group:' ',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.5) +
          SwingRight.scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,1.5),

          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,0.5),

          DodgeRight.changeBeats(5).changehands(1).scale(1.0,2.0),

          DodgeRight.changeBeats(5).changehands(2).scale(1.0,2.0)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Scoot and Dodge' && tam.from == 'Static Mini-Waves').first.xref(title: 'All 8 Scoot and Dodge').xref(group: ' '),
  ];

