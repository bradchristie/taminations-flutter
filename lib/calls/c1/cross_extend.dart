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

  final List<AnimatedCall> CrossExtend = [ 

    AnimatedCall('Cross Extend',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2)
      ]),

    AnimatedCall('Cross Extend',
      formation:Formations.BoxLHGirlsLead,
      from:'Left-Hand Box',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          ExtendLeft.changeBeats(2)
      ]),

    AnimatedCall('Cross Extend',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Extend',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Extend',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',
      paths:[
          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Extend',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('As Couples Cross Extend',
      formation:Formations.TwomFacedLinesRH,
      group:' ',
      paths:[
          DodgeRight.changeBeats(5).changehands(2).scale(1.0,2.0).skew(2.0,0.0),

          DodgeRight.changeBeats(5).changehands(1).scale(1.0,2.0).skew(2.0,0.0),

          DodgeRight.changehands(1).skew(1.0,0.0),

          DodgeRight.changehands(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Cross Extend',
      formation:Formations.ColumnRHGBGB,
      group:' ',
      paths:[
          Forward +
          ExtendRight,

          Forward +
          ExtendRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward,

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),
  ];

