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

  final List<AnimatedCall> CrossLockit = [ 

    AnimatedCall('Cross Lockit',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,3.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0)
      ]),

    AnimatedCall('Cross Lockit',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,1.0)
      ]),

    AnimatedCall('Cross Lockit',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,1.0)
      ]),

    AnimatedCall('Cross Lockit',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,1.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),
  ];

