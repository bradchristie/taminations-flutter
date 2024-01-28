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

  final List<AnimatedCall> Circle = [

    AnimatedCall('Circle Left',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      taminator: '''
      This animation shows the dancers circling all the way around once.
      However, in general dancers continue to circle left until the next call is given.
    ''',
      paths:[
          Forward.changehands(Hands.BOTH).scale(0.59,0.59) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,0.59),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,1.0),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.5,0.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417)
      ]),

    AnimatedCall('Circle Left 1/8',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',noDisplay: true,
      paths:[
          Forward.changehands(Hands.BOTH).scale(0.59,0.59) +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,0.59),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.5,0.0) +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Left 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
          Forward.changehands(Hands.BOTH).scale(0.59,0.59) +
          cl +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,0.59),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cl +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,1.0),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.5,0.0) +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417)
      ]),

    AnimatedCall('Circle Left 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
          Forward.changehands(Hands.BOTH).scale(0.59,0.59) +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,0.59),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,1.0),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.5,0.0) +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417)
      ]),

    AnimatedCall('Circle Left 3/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
          Forward.changehands(Hands.BOTH).scale(0.59,0.59) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,0.59),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(Hands.RIGHT).scale(0.59,1.0),

          EighthLeft.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.5,0.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(Hands.LEFT).skew(-0.417,0.417)
      ]),

    AnimatedCall('Circle Right',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      taminator: '''
      This animation shows the dancers circling all the way around once.
      However, in general dancers continue to circle right until the next call is given.
    ''',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0),

          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Right 1/8',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',noDisplay: true,
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417),

          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417)
      ]),

    AnimatedCall('Circle Right 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0),

          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Right 1/2',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0),

          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Right 3/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0),

          EighthRight.changeBeats(1).changehands(Hands.GRIPBOTH).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(Hands.RIGHT).skew(-0.417,-0.417),

          Forward.changehands(Hands.BOTH).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(Hands.LEFT).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Four Left 1/4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.353,-0.353),

          EighthLeft.changehands(Hands.LEFT).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Left 1/4',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT),

          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Circle Four Left 1/4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707),

          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Right 1/4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.353,-0.353),

          EighthLeft.changehands(Hands.LEFT).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Right 1/4',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT),

          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Circle Four Right 1/4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707),

          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Left 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.353,-0.353),

          EighthLeft.changehands(Hands.LEFT).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Left 1/2',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707),

          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Left 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.GRIPRIGHT),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.GRIPLEFT),

          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.GRIPRIGHT),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.GRIPLEFT)
      ]),

    AnimatedCall('Circle Four Right 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.353,-0.353),

          EighthLeft.changehands(Hands.LEFT).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Right 1/2',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707),

          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Right 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.GRIPRIGHT),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.GRIPLEFT),

          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.GRIPRIGHT),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.GRIPLEFT)
      ]),

    AnimatedCall('Circle Four Left 3/4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.353,-0.353),

          EighthLeft.changehands(Hands.LEFT).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Left 3/4',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT),

          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Circle Four Left 3/4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707),

          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Right 3/4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.353,-0.353),

          EighthLeft.changehands(Hands.LEFT).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Right 3/4',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT),

          EighthRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT),

          EighthLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Circle Four Right 3/4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707),

          EighthRight.changehands(Hands.GRIPRIGHT) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(Hands.RIGHT).skew(-0.707,-0.707),

          EighthLeft.changehands(Hands.GRIPLEFT) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(Hands.LEFT).skew(-0.707,0.707)
      ]),

    AnimatedCall('Single Circle Left 1/4',
        formation: Formation('Facing Dancers'),
        from:'Facing Dancers',
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtr.skew(0.0,0.8)
        ]),

    AnimatedCall('Single Circle Left 1/4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtr.skew(0.0,1.3),

          Forward.scale(0.8,1.0) +
          ssqtr.skew(0.0,-0.7)
      ]),

    AnimatedCall('Single Circle Left 1/4',
      formation:Formation('Normal Lines Compact'),
      from:'Lines',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtr.skew(0.0,-0.2),

          Forward.scale(0.8,1.0) +
          ssqtr.skew(0.0,-0.2),

          Forward.scale(0.8,1.0) +
          ssqtr.skew(0.0,-0.2),

          Forward.scale(0.8,1.0) +
          ssqtr.skew(0.0,-0.2)
      ]),

    AnimatedCall('Single Circle Left 1/4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          Forward.scale(0.3,1.0) +
          ssqtr.skew(1.0,1.3),

          Forward.scale(0.3,1.0) +
          ssqtr.skew(1.0,-0.7),

          Forward.scale(0.3,1.0) +
          ssqtr.skew(-1.0,1.3),

          Forward.scale(0.3,1.0) +
          ssqtr.skew(-1.0,-0.7)
      ]),

    AnimatedCall('Single Circle Left 1/2',
        formation: Formation('Facing Dancers'),
        from:'Facing Dancers',
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtr +
              ssqtr.skew(0.0,0.8)
        ]),

    AnimatedCall('Single Circle Left 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.8),

          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.8)
      ]),

    AnimatedCall('Single Circle Left 1/2',
      formation:Formation('Normal Lines Compact'),
      from:'Lines',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.8),

          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.8),

          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.8),

          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.8)
      ]),

    AnimatedCall('Single Circle Left 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          Forward.scale(0.3,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.3),

          Forward.scale(0.3,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.3),

          Forward.scale(0.3,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.3),

          Forward.scale(0.3,1.0) +
          ssqtr +
          ssqtr.skew(0.0,0.3)
      ]),

    AnimatedCall('Single Circle Left 3/4',
        formation: Formation('Facing Dancers'),
        from:'Facing Dancers',
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtr +
              ssqtr +
              ssqtr.skew(0.0,0.8)
        ]),

    AnimatedCall('Single Circle Left 3/4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(0.0,-0.7),

          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(0.0,1.3)
      ]),

    AnimatedCall('Single Circle Left 3/4',
      formation:Formation('Normal Lines Compact'),
      from:'Lines',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(0.0,-0.2),

          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(0.0,-0.2),

          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(0.0,-0.2),

          Forward.scale(0.8,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(0.0,-0.2)
      ]),

    AnimatedCall('Single Circle Left 3/4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          Forward.scale(0.3,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(-1.0,-0.7),

          Forward.scale(0.3,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(-1.0,1.3),

          Forward.scale(0.3,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(1.0,-0.7),

          Forward.scale(0.3,1.0) +
          ssqtr +
          ssqtr +
          ssqtr.skew(1.0,1.3)
      ]),

    AnimatedCall('Single Circle Right 1/4',
        formation: Formation('Facing Dancers'),
        from:'Facing Dancers',
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtrright.skew(0.0,-0.8)
        ]),

    AnimatedCall('Single Circle Right 1/4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtrright.skew(0.0,0.7),

          Forward.scale(0.8,1.0) +
          ssqtrright.skew(0.0,-1.3)
      ]),

    AnimatedCall('Single Circle Right 1/4',
      formation:Formation('Normal Lines Compact'),
      from:'Lines',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtrright.skew(0.0,0.2),

          Forward.scale(0.8,1.0) +
          ssqtrright.skew(0.0,0.2),

          Forward.scale(0.8,1.0) +
          ssqtrright.skew(0.0,0.2),

          Forward.scale(0.8,1.0) +
          ssqtrright.skew(0.0,0.2)
      ]),

    AnimatedCall('Single Circle Right 1/4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          Forward.scale(0.3,1.0) +
          ssqtrright.skew(1.0,0.7),

          Forward.scale(0.3,1.0) +
          ssqtrright.skew(1.0,-1.3),

          Forward.scale(0.3,1.0) +
          ssqtrright.skew(-1.0,0.7),

          Forward.scale(0.3,1.0) +
          ssqtrright.skew(-1.0,-1.3)
      ]),

    AnimatedCall('Single Circle Right 1/2',
        formation: Formation('Facing Dancers'),
        from:'Facing Dancers',
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtrright +
              ssqtrright.skew(0.0,-0.8)
        ]),

    AnimatedCall('Single Circle Right 1/2',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.8),

          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.8)
      ]),

    AnimatedCall('Single Circle Right 1/2',
      formation:Formation('Normal Lines Compact'),
      from:'Lines',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.8),

          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.8),

          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.8),

          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.8)
      ]),

    AnimatedCall('Single Circle Right 1/2',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          Forward.scale(0.3,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.3),

          Forward.scale(0.3,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.3),

          Forward.scale(0.3,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.3),

          Forward.scale(0.3,1.0) +
          ssqtrright +
          ssqtrright.skew(0.0,-0.3)
      ]),

    AnimatedCall('Single Circle Right 3/4',
        formation: Formation('Facing Dancers'),
        from:'Facing Dancers',
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtrright +
              ssqtrright +
              ssqtrright.skew(0.0,-0.8)
        ]),

    AnimatedCall('Single Circle Right 3/4',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(0.0,-1.3),

          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(0.0,0.7)
      ]),

    AnimatedCall('Single Circle Right 3/4',
      formation:Formation('Normal Lines Compact'),
      from:'Lines',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(0.0,0.2),

          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(0.0,0.2),

          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(0.0,0.2),

          Forward.scale(0.8,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(0.0,0.2)
      ]),

    AnimatedCall('Single Circle Right 3/4',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          Forward.scale(0.3,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(-1.0,-1.3),

          Forward.scale(0.3,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(-1.0,0.7),

          Forward.scale(0.3,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(1.0,-1.3),

          Forward.scale(0.3,1.0) +
          ssqtrright +
          ssqtrright +
          ssqtrright.skew(1.0,0.7)
      ]),
  ];

