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

  final List<AnimatedCall> SwingThru = [

    AnimatedCall('Swing Thru',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'3',difficulty: 1,
      paths:[
          SwingRight +
          SwingLeft,

          SwingRight
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Compact Wave RH'),
      from:'Compact Right-Hand Wave',parts:'3',noDisplay: true,
      paths:[
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingLeft,

          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Compact Wave LH'),
      from:'Compact Left-Hand Wave',parts:'3',difficulty: 2,noDisplay: true,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',parts:'6',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(3).scale(1.5,2.0) +
          SwingRight +
          SwingLeft,

          Forward.changeBeats(3).scale(1.5,1.0) +
          SwingRight
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3',difficulty: 1,
      paths:[
          SwingRight +
          SwingLeft,

          SwingRight,

          SwingRight,

          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3) +
          SwingLeft,

          SwingRight +
          SwingLeft,

          SwingRight +
          SwingLeft,

          Stand.changeBeats(3) +
          SwingLeft
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'3',difficulty: 2,
      taminator: '''
       Be careful not to do Grand Swing Thru
    ''',
      paths:[
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          Stand.changeBeats(3).changehands(0) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'4',difficulty: 1,
      taminator: '''
      This is an example of the Facing Couples rule.
    ''',
      paths:[
          ExtendLeft.scale(1.0,2.0) +
          SwingRight +
          SwingLeft,

          Forward +
          SwingRight,

          ExtendLeft.scale(1.0,2.0) +
          SwingRight +
          SwingLeft,

          Forward +
          SwingRight
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',parts:'3',difficulty: 1,
      taminator: '''
      The center dancers do not extend to the outside dancers.
      The Facing Couples rule does not apply
      here because the center dancers are already in a wave.
    ''',
      paths:[
          Path(),

          Path(),

          SwingRight +
          SwingLeft,

          SwingRight
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Alamo Wave'),
      from:'Alamo Wave',parts:'3.2',difficulty: 1,
      paths:[
          SxtnthLeft.changehands(Hands.RIGHT) +
          SwingRight +
          SxtnthLeft.changehands(Hands.RIGHT) +
          SxtnthLeft.changehands(Hands.LEFT) +
          SwingLeft +
          SxtnthLeft.changehands(Hands.LEFT),

          SxtnthRight.changehands(Hands.RIGHT) +
          SwingRight +
          SxtnthRight.changehands(Hands.RIGHT) +
          SxtnthRight.changehands(Hands.LEFT) +
          SwingLeft +
          SxtnthRight.changehands(Hands.LEFT),

          SxtnthLeft.changehands(Hands.RIGHT) +
          SwingRight +
          SxtnthLeft.changehands(Hands.RIGHT) +
          SxtnthLeft.changehands(Hands.LEFT) +
          SwingLeft +
          SxtnthLeft.changehands(Hands.LEFT),

          SxtnthRight.changehands(Hands.RIGHT) +
          SwingRight +
          SxtnthRight.changehands(Hands.RIGHT) +
          SxtnthRight.changehands(Hands.LEFT) +
          SwingLeft +
          SxtnthRight.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Swing Thru',
      formation:Formation('Normal Lines'),
      from:'Facing Lines',parts:'5',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'3',difficulty: 1,
      paths:[
          SwingLeft +
          SwingRight,

          SwingLeft
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Compact Wave LH'),
      from:'Compact Left-Hand Wave',parts:'3',difficulty: 1,noDisplay: true,
      paths:[
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingRight,

          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Compact Wave RH'),
      from:'Compact Right-Hand Wave',parts:'3',difficulty: 2,noDisplay: true,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',parts:'5',difficulty: 2,
      taminator: '''
      This is an example of the Facing Couples rule.
      Because this is a Left Swing Thru, dancers first extend to
      a Left-Hand Wave.
    ''',
      paths:[
          Forward_2.scale(0.75,1.0) +
          SwingLeft,

          ExtendRight.changeBeats(2).scale(1.5,2.0) +
          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3',difficulty: 1,
      paths:[
          SwingLeft +
          SwingRight,

          SwingLeft,

          SwingLeft,

          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3) +
          SwingRight,

          SwingLeft +
          SwingRight,

          SwingLeft +
          SwingRight,

          Stand.changeBeats(3) +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          Stand.changeBeats(3).changehands(0) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.75,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5),

          Stand.changeBeats(3).changehands(0) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.75,0.5)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'4',difficulty: 2,
      taminator: '''
      This is an example of the Facing Couples rule.
      Because this is a Left Swing Thru, dancers first extend to
      a Left-Hand Wave.
    ''',
      paths:[
          Forward +
          SwingLeft,

          ExtendRight.scale(1.0,2.0) +
          SwingLeft +
          SwingRight,

          Forward +
          SwingLeft,

          ExtendRight.scale(1.0,2.0) +
          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',parts:'3',difficulty: 2,
      paths:[
          Path(),

          Path(),

          SwingLeft +
          SwingRight,

          SwingLeft
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Alamo Wave'),
      from:'Alamo Wave',parts:'3.2',difficulty: 2,
      paths:[
          SxtnthRight.changehands(Hands.LEFT) +
          SwingLeft +
          SxtnthRight.changehands(Hands.LEFT) +
          SxtnthRight.changehands(Hands.RIGHT) +
          SwingRight +
          SxtnthRight.changehands(Hands.RIGHT),

          SxtnthLeft.changehands(Hands.LEFT) +
          SwingLeft +
          SxtnthLeft.changehands(Hands.LEFT) +
          SxtnthLeft.changehands(Hands.RIGHT) +
          SwingRight +
          SxtnthLeft.changehands(Hands.RIGHT),

          SxtnthRight.changehands(Hands.LEFT) +
          SwingLeft +
          SxtnthRight.changehands(Hands.LEFT) +
          SxtnthRight.changehands(Hands.RIGHT) +
          SwingRight +
          SxtnthRight.changehands(Hands.RIGHT),

          SxtnthLeft.changehands(Hands.LEFT) +
          SwingLeft +
          SxtnthLeft.changehands(Hands.LEFT) +
          SxtnthLeft.changehands(Hands.RIGHT) +
          SwingRight +
          SxtnthLeft.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Left Swing Thru',
      formation:Formation('Normal Lines'),
      from:'Facing Lines',parts:'5',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),
  ];

