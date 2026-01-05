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

  final List<AnimatedCall> HocusPocus = [

    AnimatedCall('Hocus Pocus',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,2.5),

          RunRight.changeBeats(5).skew(1.0,0.0),

          FlipLeft.changeBeats(5).skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Hocus Pocus',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          LeadLeft.changeBeats(3).scale(1.5,3.0) +
          LeadLeft.scale(1.0,0.5),

          FlipLeft.changeBeats(4.5).skew(-1.0,0.0),

          RunRight.changeBeats(4.5).skew(-1.0,0.0),

          LeadRight.changeBeats(3).scale(2.5,3.0) +
          LeadRight.scale(1.0,1.5)
      ]),

    AnimatedCall('Hocus Pocus',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          Forward_4.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          SwingLeft.changeBeats(5).skew(-1.0,0.0),

          SwingLeft.changeBeats(5).skew(1.0,0.0),

          RunRight.changeBeats(5).skew(1.0,-2.0)
      ]),

    AnimatedCall('Hocus Pocus',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(5).skew(1.0,2.0),

          SwingRight.changeBeats(5).skew(1.0,0.0),

          SwingRight.changeBeats(5).skew(-1.0,0.0),

          Forward_4.changeBeats(3) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Hocus Pocus',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(5).skew(-1.0,-2.0),

          SwingRight.changeBeats(5).skew(1.0,0.0),

          SwingRight.changeBeats(5).skew(-1.0,0.0),

          ExtendLeft.changeBeats(2.5).scale(2.0,2.0) +
          Forward_3.changeBeats(2.5)
      ]),

    AnimatedCall('Hocus Pocus',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          ExtendRight.changeBeats(2.5).scale(2.0,2.0) +
          Forward_3.changeBeats(2.5),

          SwingLeft.changeBeats(5).skew(-1.0,0.0),

          SwingLeft.changeBeats(5).skew(1.0,0.0),

          RunLeft.changeBeats(5).skew(-1.0,2.0)
      ]),

    AnimatedCall('Hocus Pocus',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          FlipLeft.changeBeats(5).skew(-1.0,2.0),

          RunRight.changeBeats(5).skew(-1.0,-2.0),

          FlipLeft.changeBeats(5).skew(1.0,0.0),

          RunRight.changeBeats(5).skew(1.0,0.0)
      ]),
  ];

