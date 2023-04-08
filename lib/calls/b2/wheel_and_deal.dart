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

  final List<AnimatedCall> WheelAndDeal = [

    AnimatedCall('Wheel and Deal',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(2.0,2.0).skew(1.5,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.5,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.CompactTwomFacedLineRH,
      from:'Compact Right-Hand Two-Faced Line',difficulty: 1,noDisplay: true,
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.5,1.25).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.0,0.5)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          UmTurnLeft.changeBeats(4).changehands(2).skew(1.5,0.0),

          RunLeft.changeBeats(4).changehands(1).scale(2.0,2.0).skew(1.5,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.CompactTwomFacedLineLH,
      from:'Compact Left-Hand Two-Faced Line',difficulty: 1,noDisplay: true,
      paths:[
          UmTurnLeft.changeBeats(4).changehands(2).skew(1.0,-0.5),

          RunLeft.changeBeats(4).changehands(1).scale(1.5,1.25).skew(1.0,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(2).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      taminator: '''
      Be careful not to do a Ferris Wheel!
    ''',
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Be careful not to do a Ferris Wheel!
    ''',
      paths:[
          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(6).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(6).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.NormalLines,
      from:'Lines Facing In',difficulty: 2,
      taminator: '''
      This is seldom called, because everyone is trying to squeeze into the
      center of the square.
    ''',
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(6).skew(-1.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Tidal Two-Faced Line, Right-Handed',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).changehands(6).skew(2.0,-0.5),

          UmTurnRight.changeBeats(4).changehands(5).skew(2.0,0.5),

          UmTurnRight.changeBeats(4).changehands(5).skew(2.0,0.5),

          RunRight.changeBeats(4).changehands(6).skew(2.0,-0.5)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Tidal Two-Faced Line, Left-Handed',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).changehands(5).skew(2.0,0.5),

          UmTurnLeft.changeBeats(4).changehands(6).skew(2.0,-0.5),

          UmTurnLeft.changeBeats(4).changehands(6).skew(2.0,-0.5),

          RunLeft.changeBeats(4).changehands(5).skew(2.0,0.5)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',difficulty: 3,
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(1.0,1.25).skew(2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(2.0,0.5),

          UmTurnLeft.changeBeats(4).changehands(6).skew(-2.0,-0.5),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,1.25).skew(-2.0,0.0)
      ]),

    AnimatedCall('Wheel and Deal',
      formation:Formations.TidalLineLH,
      from:'Left-Hand Tidal Line',difficulty: 3,
      paths:[
          UmTurnLeft.changeBeats(4).changehands(6).skew(-2.0,-0.5),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,1.25).skew(-2.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(1.0,1.25).skew(2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(2.0,0.5)
      ]),

    AnimatedCall('Left Wheel and Deal',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 3,noDisplay: true,
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(-1.0,0.0),

          RunRight.changeBeats(4).changehands(2).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Left Wheel and Deal',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',difficulty: 3,noDisplay: true,
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(1.0,1.25).skew(-2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(-2.0,0.5),

          UmTurnLeft.changeBeats(4).changehands(6).skew(2.0,-0.5),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,1.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Left Wheel and Deal',
      formation:Formations.TidalLineLH,
      from:'Left-Hand Tidal Line',difficulty: 3,noDisplay: true,
      paths:[
          UmTurnLeft.changeBeats(4).changehands(6).skew(2.0,-0.5),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,1.25).skew(2.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(1.0,1.25).skew(-2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(-2.0,0.5)
      ]),
  ];

