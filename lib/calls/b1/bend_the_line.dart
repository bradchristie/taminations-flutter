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

  final List<AnimatedCall> BendTheLine = [ 

    AnimatedCall('Bend the Line',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          HingeRight.changeBeats(4),

          BackHingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          BackHingeRight.changeBeats(4),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formations.NormalLines,
      from:'Lines Facing In',difficulty: 2,
      paths:[
          HingeRight.changeBeats(4),

          BackHingeLeft.changeBeats(4),

          BackHingeRight.changeBeats(4),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(4),

          BackHingeRight.changeBeats(4),

          BackHingeLeft.changeBeats(4),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          HingeRight.changeBeats(4),

          BackHingeLeft.changeBeats(4),

          BackHingeLeft.changeBeats(4),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(4),

          BackHingeRight.changeBeats(4),

          BackHingeRight.changeBeats(4),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',difficulty: 1,
      paths:[
          HingeRight.changeBeats(4).changehands(6).scale(1.0,0.5),

          BackHingeLeft.changeBeats(4).changehands(5).scale(1.0,0.5),

          BackHingeLeft.changeBeats(4).changehands(5).scale(1.0,0.5),

          HingeRight.changeBeats(4).changehands(6).scale(1.0,0.5)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Two-Faced Tidal Line',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(4).scale(1.0,0.5),

          BackHingeRight.changeBeats(4).scale(1.0,0.5),

          BackHingeRight.changeBeats(4).scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formations.TidalLineRH,
      from:'Right-Hand Tidal Line',difficulty: 2,
      paths:[
          HingeRight.changeBeats(4).scale(1.0,0.5),

          BackHingeLeft.changeBeats(4).scale(1.0,0.5),

          BackHingeRight.changeBeats(4).scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formations.TidalLineLH,
      from:'Left-Hand Tidal Line',difficulty: 2,
      paths:[
          BackHingeRight.changeBeats(4).scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5),

          HingeRight.changeBeats(4).scale(1.0,0.5),

          BackHingeLeft.changeBeats(4).scale(1.0,0.5)
      ]),

    AnimatedCall('Line of 8, Bend the Line',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',difficulty: 2,
      paths:[
          LeadRight.changeBeats(6).changehands(6).scale(3.0,1.5),

          LeadRight.changeBeats(6).changehands(7).scale(1.0,0.5),

          BackHingeLeft.changeBeats(6).changehands(7).scale(1.0,0.5),

          BackHingeLeft.changeBeats(6).changehands(5).scale(3.0,1.5)
      ]),
  ];

