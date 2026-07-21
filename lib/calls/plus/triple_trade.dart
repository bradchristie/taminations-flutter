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

  final List<AnimatedCall> TripleTrade = [

    AnimatedCall('Triple Trade',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Tidal Wave',
      taminator: '''
    The very centers always trade on a Triple Trade
  ''',
      paths:[
          Stand.changeBeats(3).changehands(0),

          SwingLeft.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Triple Trade',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',
      paths:[
          Stand.changeBeats(3).changehands(0),

          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Triple Trade',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line',
      paths:[
          Path(),

          FlipLeft.scale(1.0,0.5),

          RunRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Triple Trade',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Point-to-Point Diamonds',
      paths:[
          SwingRight,

          SwingLeft,

          SwingRight,

          Stand.changeBeats(3).changehands(0)
      ]),

    AnimatedCall('Triple Trade',
      formation:Formation('Quarter Tag'),
      from:'1/4 Tag',
      paths:[
          RunRight,

          FlipLeft,

          Path(),

          SwingLeft
      ]),

    AnimatedCall('Triple Trade',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',
      paths:[
          FlipLeft,

          RunRight,

          Path(),

          SwingLeft
      ]),
  ];

