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

  final List<AnimatedCall> Coordinate = [

    AnimatedCall('Coordinate',
        formation: Formation('Column RH GBGB'),
        from: 'Right-Hand Columns',
        parts: '2;1;2.5',
        difficulty: 1,
        paths: [
          RunRight.changeBeats(2) +
              Forward +
              SwingRight.changeBeats(2.5).scale(0.5, 1.0).skew(0.5,0),
          Forward.changeBeats(2).scale(2.0, 1.0) +
              LeadRight +
              Stand.changeBeats(2).changehands(0) +
              LeadRight.changeBeats(2.5).scale(3.0, 2.5),
          Forward_2 +
              Forward +
              SwingRight.changeBeats(2.5).scale(0.5, 1.0).skew(-0.5,0),
          Forward_2 +
              Forward +
              SwingRight.changeBeats(2.5).scale(0.5, 1.0) +
              ExtendLeft.changeBeats(2.5).scale(1.5, 2.0)
        ]),

    AnimatedCall('Coordinate',
        formation: Formation('Column LH GBGB'),
        from: 'Left-Hand Columns',
        parts: '2;1;2.5',
        difficulty: 2,
        paths: [
          Forward_2 +
              Forward +
              SwingLeft.changeBeats(2.5).scale(0.5, 1.0) +
              ExtendRight.changeBeats(2.5).scale(1.5, 2.0),
          Forward_2 +
              Forward +
              SwingLeft.changeBeats(2.5).scale(0.5, 1.0).skew(-0.5,0),
          Forward.changeBeats(2).scale(2.0, 1.0) +
              LeadLeft +
              Stand.changeBeats(2).changehands(0) +
              LeadLeft.changeBeats(2.5).scale(3.0, 2.5),
          RunLeft.changeBeats(2) +
              Forward +
              SwingLeft.changeBeats(2.5).scale(0.5, 1.0).skew(0.5,0)
        ]),

  ];

