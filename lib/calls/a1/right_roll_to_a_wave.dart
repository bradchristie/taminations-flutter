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

  final List<AnimatedCall> RightRollToAWave = [

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',
      paths:[
          FlipRight.changeBeats(4).skew(-2.0,0.0),

          UmTurnRight.changeBeats(4).skew(-2.0,0.0)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          UmTurnRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          RunRight.changeBeats(3).skew(-2.0,0.0),

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      taminator: '''
      This is the same as Step to a Wave.  It emphasizes the trailer's part
      of Right Roll to a Wave.
    ''',
      paths:[
          ExtendLeft.changeBeats(3).scale(1.5,2.0),

          Forward.changeBeats(3).scale(1.5,1.0)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          Forward.changeBeats(3),

          UmTurnRight.changeBeats(3).skew(-1.0,0.0),

          FlipRight.changeBeats(3).skew(-1.0,0.0)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          FlipRight.changeBeats(4).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(4),

          ExtendLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Trade By'),
      from:'Trade By',
      paths:[
          FlipRight.changeBeats(4).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).skew(-1.0,0.0),

          FlipRight.changeBeats(4).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          UmTurnRight.skew(-1.0,-0.5) +
          Forward,

          UmTurnRight.skew(-1.0,-0.5) +
          Forward,

          UmTurnRight.skew(-1.0,-0.5) +
          Forward,

          UmTurnRight.skew(-1.0,-0.5) +
          Forward
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Two-Faced Lines LH'),
      from:'Two-Faced Lines',
      paths:[
          UmTurnRight.skew(-2.0,-0.5),

          UmTurnRight.skew(-2.0,-0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          UmTurnRight.skew(-1.0,0.0),

          ExtendLeft.changeBeats(3).scale(1.0,2.0),

          UmTurnRight.skew(-1.0,0.0),

          ExtendLeft.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward.changeBeats(2),

          RunRight.skew(-1.0,0.0),

          Forward.changeBeats(2),

          RunRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          UmTurnRight.skew(-2.0,-0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          UmTurnRight.skew(-2.0,-0.5)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          UmTurnRight.skew(-2.0,-0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          UmTurnRight.skew(-2.0,-0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Centers Facing',
      paths:[
          UmTurnRight.skew(-2.0,-0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          UmTurnRight.skew(-2.0,-0.5)
      ]),

    AnimatedCall('Right Roll to a Wave',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          UmTurnRight.skew(-2.0,-0.5),

          UmTurnRight.skew(-2.0,-0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Right Roll to a Wave Three Times',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2.5,y:0,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3.5,y:0,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1.5,y:0,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-.5,y:0,angle:180),
  ]),
      from:'Single File Dancers',fractions:'2;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(0.5,1.0) +
          UmTurnRight.skew(-1.0,0.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.skew(-1.0,0.0) +
          UmTurnRight.skew(-2.0,-0.5),

          ExtendLeft.changeBeats(2).scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(1.0,2.0) +
          UmTurnRight.skew(-2.0,-0.5)
      ]),

    AnimatedCall('As Couples Right Roll to a Wave',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          BeauWheel.changehands(Hands.GRIPLEFT).scale(1.0,-1.0).skew(-2.0,-1.5),

          BelleWheel.changehands(Hands.GRIPRIGHT).scale(1.0,-1.0).skew(-2.0,-0.5),

          BeauWheel.changehands(Hands.GRIPLEFT).scale(1.0,-1.0).skew(-2.0,-1.5),

          BelleWheel.changehands(Hands.GRIPRIGHT).scale(1.0,-1.0).skew(-2.0,-0.5)
      ]),

    AnimatedCall('As Couples Right Roll to a Wave',
      formation:Formation('Two-Faced Lines LH'),
      from:'Two-Faced Lines',
      paths:[
          BeauWheel.changehands(Hands.GRIPLEFT).scale(1.0,-1.0).skew(-2.0,-1.5),

          BelleWheel.changehands(Hands.GRIPRIGHT).scale(1.0,-1.0).skew(-2.0,-0.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,0.5),

          ExtendLeft.changeBeats(3).changehands(Hands.LEFT).scale(2.0,1.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Right Roll to a Wave' && tam.from == 'Couples Facing Out').first.xref(title: 'All 8 Right Roll to a Wave').xref(group: ' '),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-2.0,0.0),

          FlipLeft.changeBeats(4).skew(-2.0,0.0)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          Forward_2.changeBeats(3),

          RunLeft.changeBeats(3).skew(-2.0,0.0)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          UmTurnLeft.skew(-2.0,0.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      taminator: '''This is the same as Step to a Left-Hand Wave.''',
      paths:[
          Forward.changeBeats(3).scale(1.5,1.0),

          ExtendRight.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          Forward.changeBeats(3),

          ExtendRight.changeBeats(3).scale(1.0,2.0),

          FlipLeft.skew(-1.0,0.0),

          UmTurnLeft.skew(-1.0,0.0)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,0.0),

          FlipLeft.changeBeats(4).skew(-1.0,0.0),

          ExtendRight.changeBeats(4).scale(1.0,2.0),

          Forward.changeBeats(4)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Trade By'),
      from:'Trade By',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,0.0),

          FlipLeft.changeBeats(4).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).skew(-1.0,0.0),

          FlipLeft.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          UmTurnLeft.skew(-1.0,0.5) +
          Forward,

          UmTurnLeft.skew(-1.0,0.5) +
          Forward,

          UmTurnLeft.skew(-1.0,0.5) +
          Forward,

          UmTurnLeft.skew(-1.0,0.5) +
          Forward
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          ExtendRight.changeBeats(4).scale(2.0,0.5),

          ExtendRight.changeBeats(4).scale(2.0,0.5),

          UmTurnLeft.skew(-1.0,0.5) +
          Forward,

          UmTurnLeft.skew(-1.0,0.5) +
          Forward
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          UmTurnLeft.skew(-1.0,0.5) +
          Forward,

          UmTurnLeft.skew(-1.0,0.5) +
          Forward,

          ExtendRight.changeBeats(4).scale(2.0,0.5),

          ExtendRight.changeBeats(4).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunLeft.skew(-1.0,0.0),

          Forward.changeBeats(2),

          RunLeft.skew(-1.0,0.0),

          Forward.changeBeats(2)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          UmTurnLeft.skew(-1.0,0.0),

          ExtendRight.changeBeats(3).scale(1.0,2.0),

          UmTurnLeft.skew(-1.0,0.0)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          UmTurnLeft.skew(-2.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,0.5),

          UmTurnLeft.skew(-2.0,0.5)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          UmTurnLeft.skew(-2.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,0.5),

          UmTurnLeft.skew(-2.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Centers Facing',
      paths:[
          UmTurnLeft.skew(-2.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,0.5),

          UmTurnLeft.skew(-2.0,0.5)
      ]),

    AnimatedCall('Left Roll to a Wave',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing',
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          UmTurnLeft.skew(-2.0,0.5),

          UmTurnLeft.skew(-2.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('As Couples Left Roll to a Wave',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          BelleWheel.changehands(Hands.GRIPLEFT).skew(-2.0,0.5),

          BeauWheel.changehands(Hands.GRIPRIGHT).skew(-2.0,1.5),

          BelleWheel.changehands(Hands.GRIPLEFT).skew(-2.0,0.5),

          BeauWheel.changehands(Hands.GRIPRIGHT).skew(-2.0,1.5)
      ]),

    AnimatedCall('As Couples Left Roll to a Wave',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',
      paths:[
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,1.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,0.5),

          BelleWheel.changehands(Hands.GRIPLEFT).skew(-2.0,0.5),

          BeauWheel.changehands(Hands.GRIPRIGHT).skew(-2.0,1.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Left Roll to a Wave').first.xref(title: 'All 8 Left Roll to a Wave').xref(group: ' '),
  ];

