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

final List<AnimatedCall> ContourTheLine = [

  AnimatedCall('Contour the Line',
      formation: Formation('Wave RH'),
      from: 'Right-Hand Wave',
      parts: '1.5;3;3',
      paths:[
        HingeRight +
        Forward_4.changeBeats(3) +
        RunRight +
        HingeRight,

        HingeRight +
            RunRight +
            Forward_4.changeBeats(3) +
            HingeRight,

      ]
  ),

  AnimatedCall('Contour the Line',
      formation: Formation('Wave LH'),
      from: 'Left-Hand Wave',
      parts: '1.5;3;3',
      paths:[
        HingeLeft +
            Forward_4.changeBeats(3) +
            RunLeft +
            HingeLeft,

        HingeLeft +
            RunLeft +
            Forward_4.changeBeats(3) +
            HingeLeft,

      ]
  ),

  AnimatedCall('Contour the Line',
  formation: Formation('Lines Facing Out'),
  from: 'Lines Facing Out',
  parts: '1.5;3;3',
  paths: [
    QuarterLeft.skew(-1, 1) +
        Forward_4.changeBeats(3) +
        RunRight +
        HingeRight,

    LeadRight +
        RunRight +
        Forward_4.changeBeats(3) +
        HingeRight,

    QuarterLeft.skew(-1, 1) +
        RunRight +
        Forward_4.changeBeats(3) +
        HingeRight,

    LeadRight +
        Forward_4.changeBeats(3) +
        RunRight +
        HingeRight
  ])


];