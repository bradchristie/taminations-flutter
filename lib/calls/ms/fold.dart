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

  final List<AnimatedCall> Fold = [ 

    AnimatedCall('Boys Fold',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',notForSequencer: true,
      paths:[
          Path(),

          FoldRight,

          Path(),

          FoldRight
      ]),

    AnimatedCall('Boys Fold',
      formation:Formations.OceanWavesLHBGBG,
      from:'Ocean Waves',notForSequencer: true,
      paths:[
          FoldLeft,

          Path(),

          FoldLeft,

          Path()
      ]),

    AnimatedCall('Girls Fold',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',notForSequencer: true,
      paths:[
          FoldLeft,

          Path(),

          FoldLeft,

          Path()
      ]),

    AnimatedCall('Girls Fold',
      formation:Formations.OceanWavesRHBGBG,
      from:'Ocean Waves',notForSequencer: true,
      paths:[
          Path(),

          FoldRight,

          Path(),

          FoldRight
      ]),

    AnimatedCall('Ends Fold',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          RunRight.skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Fold',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          Path(),

          RunLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Ends Fold',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          RunRight.skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Fold',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          RunLeft.skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Fold',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          FoldLeft.skew(-1.0,0.0),

          Back.changeBeats(2),

          Back.changeBeats(2),

          FoldRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Ends Fold',
      formation:Formations.OceanWavesRHBGGB,
      from:'Ocean Waves',
      paths:[
          FoldRight,

          Path(),

          Path(),

          FoldRight
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          Path(),

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(2.0,0.0)
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          Back.changeBeats(3).changehands(1),

          Back.changeBeats(3).changehands(2),

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ends Cross Fold',
      formation:Formations.OceanWavesRHBGGB,
      from:'Ocean Waves',
      paths:[
          LeadRight.scale(1.5,3.0) +
          QuarterRight.skew(1.0,0.5),

          Path(),

          Path(),

          FoldRight.scale(1.0,2.0)
      ]),
  ];

