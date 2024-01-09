/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> SplitTradeCirculate = [

    AnimatedCall('Split Trade Circulate',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines Ends Facing Out',
      paths:[
          RunLeft.changeBeats(4),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward,

          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Split Trade Circulate',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines Ends Facing In',
      paths:[
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          RunRight.changeBeats(4),

          RunLeft.changeBeats(4),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Split Trade Circulate',
      formation:Formation('Magic Column RH'),
      from:'Magic Column RH',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward,

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          RunRight.scale(0.5,1.0),

          RunLeft
      ]),

    AnimatedCall('Split Trade Circulate',
      formation:Formation('Magic Column LH'),
      from:'Magic Column LH',
      paths:[
          RunRight,

          RunLeft.scale(0.5,1.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward,

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),
  ];

