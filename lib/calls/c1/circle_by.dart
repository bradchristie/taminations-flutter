/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> CircleBy = [

    AnimatedCall('Circle By Nothing and Nothing',
      formation:Formation('Normal Lines'),
      group:'Circle By',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Circle By Nothing and 1/4',
      formation:Formation('Normal Lines'),
      group:'Circle By',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Circle By Nothing and 1/2',
      formation:Formation('Normal Lines'),
      group:'Circle By',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5)
      ]),

    AnimatedCall('Circle By Nothing and 3/4',
      formation:Formation('Normal Lines'),
      group:'Circle By',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Circle By 1/4 and Nothing',
      formation:Formation('Normal Lines'),
      group:'Circle By',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707),

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707)
      ]),

    AnimatedCall('Circle By 1/4 and 1/4',
      formation:Formation('Normal Lines'),
      group:'Circle By',parts:'4.5',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          HingeRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          HingeRight,

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          HingeRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          HingeRight
      ]),

    AnimatedCall('Circle By 1/4 and 1/2',
      formation:Formation('Normal Lines'),
      group:'Circle By',parts:'4.5',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          SwingRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          SwingRight,

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          SwingRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          SwingRight
      ]),

    AnimatedCall('Circle By 1/4 and 3/4',
      formation:Formation('Normal Lines'),
      group:'Circle By',parts:'4.5',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          CastRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          CastRight,

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          CastRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          CastRight
      ]),

    AnimatedCall('Circle By 1/2 and Nothing',
      formation:Formation('Normal Lines'),
      group:'Circle By',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(0.353,1.06),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(1.06,-0.353),

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(0.353,1.06),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(1.06,-0.353)
      ]),

    AnimatedCall('Circle By 1/2 and 1/4',
      formation:Formation('Normal Lines'),
      group:'Circle By',parts:'6',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(0.353,1.06) +
          HingeRight.scale(1.0,0.5),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(1.06,-0.353) +
          HingeRight.scale(1.0,0.5),

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(0.353,1.06) +
          HingeRight.scale(1.0,0.5),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(1.06,-0.353) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Circle By 1/2 and 1/2',
      formation:Formation('Normal Lines'),
      group:'Circle By',parts:'6',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(0.353,1.06) +
          SwingRight.scale(0.75,0.5),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(1.06,-0.353) +
          SwingRight.scale(0.75,0.5),

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(0.353,1.06) +
          SwingRight.scale(0.75,0.5),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(1.06,-0.353) +
          SwingRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Circle By 1/2 and 3/4',
      formation:Formation('Normal Lines'),
      group:'Circle By',parts:'6',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(0.353,1.06) +
          SwingRight.scale(0.75,0.5) +
          HingeRight.scale(1.0,0.5),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(1.06,-0.353) +
          SwingRight.scale(0.75,0.5) +
          HingeRight.scale(1.0,0.5),

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(0.353,1.06) +
          SwingRight.scale(0.75,0.5) +
          HingeRight.scale(1.0,0.5),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(1.06,-0.353) +
          SwingRight.scale(0.75,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Circle By 3/4 and Nothing',
      formation:Formation('Normal Lines'),
      group:'Circle By',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707),

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707)
      ]),

    AnimatedCall('Circle By 3/4 and 1/4',
      formation:Formation('Normal Lines'),
      group:'Circle By',parts:'7.5',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          HingeRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          HingeRight,

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          HingeRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          HingeRight
      ]),

    AnimatedCall('Circle By 3/4 and 1/2',
      formation:Formation('Normal Lines'),
      group:'Circle By',parts:'7.5',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          SwingRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          SwingRight,

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          SwingRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          SwingRight
      ]),

    AnimatedCall('Circle By 3/4 and 3/4',
      formation:Formation('Normal Lines'),
      group:'Circle By',parts:'7.5',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          CastRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          CastRight,

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changeBeats(2).skew(-0.707,2.1) +
          CastRight,

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changeBeats(2).skew(0.707,-0.707) +
          CastRight
      ]),
  ];

