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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> SwitchTheLine = [

    AnimatedCall('Switch the Line',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.0),

          RunRight
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.CompactWaveRH,
      from:'Compact Right-Hand Wave',noDisplay: true,
      paths:[
          RunRight.changeBeats(6),

          RunRight.changeBeats(6).scale(0.5,0.5)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          RunLeft
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.CompactWaveLH,
      from:'Compact Left-Hand Wave',noDisplay: true,
      paths:[
          RunLeft.changeBeats(6),

          RunLeft.changeBeats(6).scale(0.5,0.5)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.CompactTwomFacedLineRH,
      from:'Compact Right-Hand Two-Faced Line',noDisplay: true,
      paths:[
          RunRight.changeBeats(4),

          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.CompactTwomFacedLineLH,
      from:'Compact Left-Hand Two-Faced Line',noDisplay: true,
      paths:[
          FlipRight.scale(1.0,0.5),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipRight,

          FlipLeft,

          RunRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0),

          FlipLeft,

          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0),

          FlipRight,

          FlipRight,

          RunLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.OceanWavesRHGBBG,
      from:'Right-Hand Waves',
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.0),

          RunRight,

          RunRight,

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Switch the Line',
      formation:Formations.OceanWavesLHGBBG,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          RunLeft,

          RunLeft,

          RunLeft.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('All 8 Switch the Line',
      formation:Formations.TharRHBoys,
      from:'Thar',
      paths:[
          RunLeft,

          RunLeft.changeBeats(6).scale(1.5,2.0),

          RunLeft,

          RunLeft.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('All 8 Switch the Line',
      formation:Formations.TharLHBoys,
      from:'Wrong Way Thar',
      paths:[
          RunRight,

          RunRight.changeBeats(6).scale(1.5,2.0),

          RunRight,

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('All 8 Switch the Line',
      formation:Formations.StarPromenade,
      from:'Star Promenade',
      paths:[
          FlipRight,

          RunLeft.changeBeats(6).scale(1.5,2.0),

          FlipRight,

          RunLeft.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('All 8 Switch the Line',
      formation:Formations.ReverseStarPromenade,
      from:'Reverse Star Promenade',
      paths:[
          RunRight.changeBeats(6).scale(1.5,2.0),

          FlipLeft,

          RunRight.changeBeats(6).scale(1.5,2.0),

          FlipLeft
      ]),

    AnimatedCall('As Couples Switch the Line',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',
      paths:[
          RunRight.changeBeats(4).scale(3.5,2.5),

          RunRight.changeBeats(4).scale(2.5,1.5),

          RunLeft.scale(0.5,0.5),

          RunLeft.scale(1.5,1.5)
      ]),
  ];

