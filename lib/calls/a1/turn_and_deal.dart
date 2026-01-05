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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> TurnAndDeal = [

    AnimatedCall('Turn and Deal',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-2.0),

          UmTurnRight.changeBeats(4).skew(1.5,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.5,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.5,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,2.0),

          UmTurnRight.changeBeats(4).skew(1.5,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Centers Facing',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-0.5)
      ]),

    AnimatedCall('Turn and Deal',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-1.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,0.5)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          UmTurnRight.changeBeats(4).skew(-1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnRight.changeBeats(4).skew(-1.0,-2.0)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnRight.changeBeats(4).skew(-1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(-1.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      taminator: '''
      This variation is also called Left Shoulder Turn and Deal, and is
      often called from Left-Hand Two-Faced Lines.
    ''',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.5,2.0),

          UmTurnLeft.changeBeats(4).skew(1.5,2.0)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          UmTurnRight.changeBeats(4).skew(-1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(1.5,1.5),

          UmTurnRight.changeBeats(4).skew(-1.5,-0.5)
      ]),

    AnimatedCall('Left Turn and Deal',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(1.5,1.5),

          UmTurnLeft.changeBeats(4).skew(1.5,0.5)
      ]),

    AnimatedCall('As Couples Turn and Deal',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',
      paths:[
          BelleWheel.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,-0.5).skew(1.5,-1.5),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.5,0.5),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.5,2.25).skew(1.5,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.5,0.75).skew(1.55,0.0)
      ]),

    AnimatedCall('As Couples Turn and Deal',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',
      paths:[
          BeauWheel.changeBeats(4).scale(0.5,0.5).skew(-1.5,0.5),

          BelleWheel.changeBeats(4).scale(0.5,0.5).skew(-1.5,1.5),

          QuarterLeft.changeBeats(2).skew(-1.5,0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-0.5,1.5) +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(3.0,1.0)
      ]),

    AnimatedCall('As Couples Turn and Deal',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
          BelleWheel.changeBeats(4).scale(1.0,-0.5).skew(1.5,-1.5),

          BeauWheel.changeBeats(4).scale(0.5,-0.5).skew(1.5,-0.5),

          QuarterLeft.changeBeats(2).skew(-0.5,1.5) +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(3.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.5,0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.0)
      ]),

    AnimatedCall('As Couples Turn and Deal',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          BelleWheel.changeBeats(4).scale(0.5,0.5).skew(-1.5,1.5),

          BeauWheel.changeBeats(4).scale(0.5,0.5).skew(-1.5,0.5),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.5,2.25).skew(1.5,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPLEFT).scale(0.5,0.75).skew(1.55,0.0)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Turn and Deal').first.xref(title: 'All 8 Turn and Deal'),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Turn and Deal').first.xref(title: 'All 8 Turn and Deal'),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Turn and Deal').first.xref(title: 'All 8 Turn and Deal'),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Turn and Deal').first.xref(title: 'All 8 Turn and Deal'),
  ];

