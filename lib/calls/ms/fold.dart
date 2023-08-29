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
import '../../common_dart.dart';
import '../../moves.dart';

  final List<AnimatedCall> Fold = [

    AnimatedCall('Boys Fold',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',notForSequencer: true,
      paths:[
          Path(),

          FoldRight,

          Path(),

          FoldRight
      ]),

    AnimatedCall('Boys Fold',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Ocean Waves',notForSequencer: true,
      paths:[
          FoldLeft,

          Path(),

          FoldLeft,

          Path()
      ]),

    AnimatedCall('Girls Fold',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',notForSequencer: true,
      paths:[
          FoldLeft,

          Path(),

          FoldLeft,

          Path()
      ]),

    AnimatedCall('Girls Fold',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Ocean Waves',notForSequencer: true,
      paths:[
          Path(),

          FoldRight,

          Path(),

          FoldRight
      ]),

    AnimatedCall('Ends Fold',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
          RunRight.skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Fold',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          Path(),

          RunLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Ends Fold',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          RunRight.skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Fold',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          RunLeft.skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Fold',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          FoldLeft.skew(-1.0,0.0),

          Back.changeBeats(2),

          Back.changeBeats(2),

          FoldRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Ends Fold',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',
      paths:[
          FoldRight,

          Path(),

          Path(),

          FoldRight
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          Path(),

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(2.0,0.0)
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          Back.changeBeats(3).changehands(Hands.LEFT),

          Back.changeBeats(3).changehands(Hands.RIGHT),

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',
      paths:[
          LeadRight.scale(1.5,3.0) +
          QuarterRight.skew(1.0,0.5),

          Path(),

          Path(),

          FoldRight.scale(1.0,2.0)
      ]),
  ];

