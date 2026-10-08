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

  final List<AnimatedCall> ScootAndDodge = [

    AnimatedCall('Scoot and Dodge',
      formation:Formation('Box RH Compact'),
      from:'Right-Hand Box',
      paths:[
        ExtendRight.changeBeats(1.5).scale(1.5,0.25) +
            SwingRight.scale(0.75,0.75) +
            ExtendLeft.changeBeats(1.5).scale(1.5,0.25),
        DodgeRight
      ]),

    AnimatedCall('Scoot and Dodge',
      formation:Formation('Box LH Compact'),
      from:'Left-Hand Box',
      paths:[
        DodgeLeft,
        ExtendLeft.changeBeats(1.5).scale(1.5,0.25) +
            SwingLeft.scale(0.75,0.75) +
            ExtendRight.changeBeats(1.5).scale(1.5,0.25)
      ]),

    AnimatedCall('Scoot and Dodge',
      formation:Formation('Ocean Waves RH BGBG Compact'),
      from:'Right-Hand Waves',
        paths:[
          ExtendRight.changeBeats(1.5).scale(1.5,0.25) +
              SwingRight.scale(0.75,0.75) +
              ExtendLeft.changeBeats(1.5).scale(1.5,0.25),
          DodgeRight,
          ExtendRight.changeBeats(1.5).scale(1.5,0.25) +
              SwingRight.scale(0.75,0.75) +
              ExtendLeft.changeBeats(1.5).scale(1.5,0.25),
          DodgeRight
        ]),

    AnimatedCall('Scoot and Dodge',
      formation:Formation('Ocean Waves LH BGBG Compact'),
      from:'Left-Hand Waves',
        paths:[
          DodgeLeft,
          ExtendLeft.changeBeats(1.5).scale(1.5,0.25) +
              SwingLeft.scale(0.75,0.75) +
              ExtendRight.changeBeats(1.5).scale(1.5,0.25),
          DodgeLeft,
          ExtendLeft.changeBeats(1.5).scale(1.5,0.25) +
              SwingLeft.scale(0.75,0.75) +
              ExtendRight.changeBeats(1.5).scale(1.5,0.25)
        ]),

    AnimatedCall('Scoot and Dodge',
      formation:Formation('Column RH GBGB'),
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
      formation:Formation('Column LH GBGB'),
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

    AnimatedCall('Boys Scoot Girls Dodge',
        formation:Formation('Normal Lines Compact'),
        group: ' ',
        isGenderSpecific: true,
        paths:[
          ExtendRight.changeBeats(1.5).scale(1.5,0.25) +
              SwingRight.scale(0.75,0.75) +
              ExtendLeft.changeBeats(1.5).scale(1.5,0.25),
          DodgeLeft,
          ExtendRight.changeBeats(1.5).scale(1.5,0.25) +
              SwingRight.scale(0.75,0.75) +
              ExtendLeft.changeBeats(1.5).scale(1.5,0.25),
          DodgeLeft
        ]),

    AnimatedCall('Girls Scoot Boys Dodge',
        formation:Formation('Normal Lines Compact'),
        group: ' ',
        isGenderSpecific: true,
        paths:[
          DodgeRight,
          ExtendLeft.changeBeats(1.5).scale(1.5,0.25) +
              SwingLeft.scale(0.75,0.75) +
              ExtendRight.changeBeats(1.5).scale(1.5,0.25),
          DodgeRight,
          ExtendLeft.changeBeats(1.5).scale(1.5,0.25) +
              SwingLeft.scale(0.75,0.75) +
              ExtendRight.changeBeats(1.5).scale(1.5,0.25),
        ]),

  ];

