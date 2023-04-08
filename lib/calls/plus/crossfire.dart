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

  final List<AnimatedCall> Crossfire = [ 

    AnimatedCall('Crossfire',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(6).scale(2.0,2.0).skew(2.0,0.0),

          SwingRight.changeBeats(3.5) +
          Forward_2.changeBeats(2.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          SwingLeft.changeBeats(3.5) +
          Forward_2.changeBeats(2.5),

          RunLeft.changeBeats(6).scale(2.0,2.0).skew(2.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          SwingRight +
          Forward,

          SwingRight +
          Forward,

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0),

          SwingLeft +
          Forward,

          SwingLeft +
          Forward,

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Tidal Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(5).skew(2.0,-0.5),

          SwingRight.scale(0.75,0.75) +
          Forward_2,

          SwingRight.scale(0.75,0.75) +
          Forward_2,

          RunRight.changeBeats(5).skew(2.0,-0.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Tidal Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          RunLeft.changeBeats(5).skew(2.0,0.5),

          SwingLeft.scale(0.75,0.75) +
          Forward_2,

          SwingLeft.scale(0.75,0.75) +
          Forward_2,

          RunLeft.changeBeats(5).skew(2.0,0.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,
      paths:[
          RunLeft.changeBeats(5).scale(1.0,2.0).skew(1.0,0.0),

          FlipLeft +
          Forward_2,

          RunRight +
          ExtendLeft_2,

          RunRight.changeBeats(5).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Centers Facing In',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          Forward.changeBeats(2),

          RunRight.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          Forward.changeBeats(2),

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Centers Facing Out',difficulty: 3,
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          Forward.changeBeats(2),

          RunRight.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          FlipLeft.changeBeats(4).scale(0.75,2.0).skew(1.0,0.0) +
          Forward.changeBeats(2)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.NormalLines,
      from:'Lines Facing In',difficulty: 3,
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          RunRight.changeBeats(4).scale(0.75,1.0).skew(-1.0,0.0),

          FlipLeft.changeBeats(4).skew(-1.0,0.0),

          FlipLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',difficulty: 3,
      paths:[
          RunRight.changeBeats(5).scale(2.0,1.0).skew(2.0,-0.5),

          RunRight.changeBeats(5).skew(-2.0,0.5),

          FlipLeft.changeBeats(5).skew(-2.0,-0.5),

          RunLeft.changeBeats(5).skew(2.0,0.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.TidalLineLH,
      from:'Tidal Line',difficulty: 3,noDisplay: true,
      paths:[
          RunLeft.changeBeats(5).skew(-2.0,-0.5),

          RunLeft.changeBeats(5).scale(2.0,1.0).skew(2.0,0.5),

          RunRight.changeBeats(5).skew(2.0,-0.5),

          FlipRight.changeBeats(5).skew(-2.0,0.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.TidalInvertedLineRH,
      from:'Tidal Inverted Line',difficulty: 3,
      paths:[
          RunRight.changeBeats(5).scale(2.0,1.0).skew(1.5,-1.0),

          FlipLeft.changeBeats(5).skew(-1.5,-1.0),

          RunRight.changeBeats(5).skew(-1.5,0.0),

          RunLeft.changeBeats(5).skew(1.5,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.TidalInvertedLineLH,
      from:'Tidal Inverted Line',difficulty: 3,noDisplay: true,
      paths:[
          RunLeft.changeBeats(5).skew(1.5,0.0),

          RunRight.changeBeats(5).skew(-1.5,0.0),

          FlipLeft.changeBeats(5).skew(-1.5,-1.0),

          RunRight.changeBeats(5).scale(2.0,1.0).skew(1.5,-1.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds, Right-Hand Centers',difficulty: 3,
      paths:[
          SwingRight.changehands(6).scale(1.0,0.75) +
          ExtendLeft.scale(1.0,0.5),

          CrossFoldLeft.scale(0.5,1.0),

          SwingRight.changehands(6).scale(1.0,0.75) +
          ExtendLeft.scale(1.0,0.5),

          CrossFoldLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.DiamondsFacingLHGirlPoints,
      from:'Facing Diamonds, Left-Hand Centers',difficulty: 3,
      paths:[
          SwingLeft.changehands(5).scale(1.0,0.75) +
          ExtendRight.scale(1.0,0.5),

          CrossFoldRight.scale(0.5,1.0),

          SwingLeft.changehands(5).scale(1.0,0.75) +
          ExtendRight.scale(1.0,0.5),

          CrossFoldRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.DiamondsFacingPTP,
      from:'Point-to-Point Facing Diamonds, Right-Hand Centers',difficulty: 3,
      paths:[
          SwingRight.changehands(6).scale(1.0,0.75).skew(0.5,0.0) +
          ExtendLeft.scale(0.5,0.5),

          RunLeft.skew(1.0,0.0),

          SwingRight.changehands(6).scale(1.0,0.75).skew(-0.5,0.0) +
          ExtendLeft.scale(1.5,0.5),

          RunLeft.scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formations.DiamondsFacingLHPTP,
      from:'Point-to-Point Facing Diamonds, Left-Hand Centers',difficulty: 3,
      paths:[
          SwingLeft.changehands(5).scale(1.0,0.75).skew(-0.5,0.0) +
          ExtendRight.scale(1.5,0.5),

          RunRight.skew(1.0,0.0),

          SwingLeft.changehands(5).scale(1.0,0.75).skew(0.5,0.0) +
          ExtendRight.scale(0.5,0.5),

          RunRight.scale(1.0,2.0).skew(1.0,0.0)
      ]),
  ];

