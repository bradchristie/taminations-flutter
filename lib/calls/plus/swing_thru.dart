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

final List<AnimatedCall> SwingThru = [

  AnimatedCall('Swing Thru',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',parts:'3',difficulty: 1,
      paths:[
        SwingRight,

        SwingRight + SwingLeft,

        SwingRight,

        SwingRight + SwingLeft
      ]),

  AnimatedCall('Swing Thru',
      formation:Formation('Thar RH Boys'),
      from:'Thar',parts:'3',difficulty: 2,
      paths:[
        SwingRight + SwingLeft,

        Stand.changeBeats(3) + SwingLeft,

        SwingRight + SwingLeft,

        Stand.changeBeats(3) + SwingLeft,
      ]),

  AnimatedCall('Left Swing Thru',
      formation:Formation('Thar RH Boys'),
      from:'Thar',parts:'3',difficulty: 1,
      paths:[
        SwingLeft,

        SwingLeft + SwingRight,

        SwingLeft,

        SwingLeft + SwingRight,
      ]),

  AnimatedCall('Left Swing Thru',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',parts:'3',difficulty: 2,
      paths:[
        SwingLeft + SwingRight,

        Stand.changeBeats(3) + SwingRight,

        SwingLeft + SwingRight,

        Stand.changeBeats(3) + SwingRight
      ]),

];