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

  final List<AnimatedCall> Circle = [ 

    AnimatedCall('Circle Left',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward.changehands(3).scale(0.59,0.59) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(2).scale(0.59,0.59),

          EighthLeft.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(2).scale(0.59,1.0),

          EighthLeft.changeBeats(1).changehands(7).skew(0.5,0.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417)
      ]),

    AnimatedCall('Circle Left 1/8',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',noDisplay: true,
      paths:[
          Forward.changehands(3).scale(0.59,0.59) +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417),

          EighthLeft.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cl +
          Back.changehands(2).scale(0.59,0.59),

          Forward.changehands(3).scale(0.59,1.0) +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417),

          EighthLeft.changeBeats(1).changehands(7).skew(0.5,0.0) +
          cl +
          Back.changehands(2).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Left 1/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward.changehands(3).scale(0.59,0.59) +
          cl +
          cl +
          Back.changehands(2).scale(0.59,0.59),

          EighthLeft.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cl +
          cl +
          Back.changehands(2).scale(0.59,1.0),

          EighthLeft.changeBeats(1).changehands(7).skew(0.5,0.0) +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417)
      ]),

    AnimatedCall('Circle Left 1/2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward.changehands(3).scale(0.59,0.59) +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(2).scale(0.59,0.59),

          EighthLeft.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(2).scale(0.59,1.0),

          EighthLeft.changeBeats(1).changehands(7).skew(0.5,0.0) +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417)
      ]),

    AnimatedCall('Circle Left 3/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward.changehands(3).scale(0.59,0.59) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(2).scale(0.59,0.59),

          EighthLeft.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          Back.changehands(2).scale(0.59,1.0),

          EighthLeft.changeBeats(1).changehands(7).skew(0.5,0.0) +
          cl +
          cl +
          cl +
          cl +
          cl +
          cl +
          EighthRight.changeBeats(1).changehands(1).skew(-0.417,0.417)
      ]),

    AnimatedCall('Circle Right',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(1).scale(0.59,1.0),

          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(1).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Right 1/8',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',noDisplay: true,
      paths:[
          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          Back.changehands(1).scale(0.59,1.0),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417),

          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          Back.changehands(1).scale(0.59,1.0),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417)
      ]),

    AnimatedCall('Circle Right 1/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          cr +
          Back.changehands(1).scale(0.59,1.0),

          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          cr +
          Back.changehands(1).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Right 1/2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(1).scale(0.59,1.0),

          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(1).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Right 3/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(1).scale(0.59,1.0),

          EighthRight.changeBeats(1).changehands(7).skew(0.59,0.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          EighthLeft.changeBeats(1).changehands(2).skew(-0.417,-0.417),

          Forward.changehands(3).scale(0.59,1.0) +
          cr +
          cr +
          cr +
          cr +
          cr +
          cr +
          Back.changehands(1).scale(0.59,1.0)
      ]),

    AnimatedCall('Circle Four Left 1/4',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(2).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.353,-0.353),

          EighthLeft.changehands(1).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Left 1/4',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1),

          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1)
      ]),

    AnimatedCall('Circle Four Left 1/4',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(6) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(5) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707),

          EighthRight.changehands(6) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(5) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Right 1/4',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(2).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.353,-0.353),

          EighthLeft.changehands(1).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Right 1/4',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1),

          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1)
      ]),

    AnimatedCall('Circle Four Right 1/4',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(6) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(5) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707),

          EighthRight.changehands(6) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(5) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Left 1/2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(2).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.353,-0.353),

          EighthLeft.changehands(1).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Left 1/2',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707),

          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Left 1/2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(6) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(6),

          EighthLeft.changehands(5) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(5),

          EighthRight.changehands(6) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(6),

          EighthLeft.changehands(5) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(5)
      ]),

    AnimatedCall('Circle Four Right 1/2',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(2).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.353,-0.353),

          EighthLeft.changehands(1).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Right 1/2',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707),

          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Right 1/2',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(6) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(6),

          EighthLeft.changehands(5) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(5),

          EighthRight.changehands(6) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(6),

          EighthLeft.changehands(5) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(5)
      ]),

    AnimatedCall('Circle Four Left 3/4',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(2).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.353,-0.353),

          EighthLeft.changehands(1).skew(0.5,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Left 3/4',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1),

          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1)
      ]),

    AnimatedCall('Circle Four Left 3/4',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(6) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(5) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707),

          EighthRight.changehands(6) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(5) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          CircleLeftQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707)
      ]),

    AnimatedCall('Circle Four Right 3/4',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          EighthRight.changehands(2).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.353,-0.353),

          EighthLeft.changehands(1).skew(0.5,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.353,0.353)
      ]),

    AnimatedCall('Circle Four Right 3/4',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1),

          EighthRight.changehands(2).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2),

          EighthLeft.changehands(1).skew(1.0,0.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1)
      ]),

    AnimatedCall('Circle Four Right 3/4',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          EighthRight.changehands(6) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(5) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707),

          EighthRight.changehands(6) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthLeft.changehands(2).skew(-0.707,-0.707),

          EighthLeft.changehands(5) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          CircleRightQuarter.scale(2.0,2.0) +
          EighthRight.changehands(1).skew(-0.707,0.707)
      ]),

    AnimatedCall('Single Circle Left 1/4',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtr.skew(0.0,1.3),

          Forward.scale(0.8,1.0) +
          ssqtr.skew(0.0,-0.7)
      ]),

    AnimatedCall('Single Circle Left 1/4',
      formation:Formations.NormalLinesCompact,
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
      formation:Formations.EightChainThru,
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
      formation:Formations.FacingCouplesCompact,
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
      formation:Formations.NormalLinesCompact,
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
      formation:Formations.EightChainThru,
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
      formation:Formations.FacingCouplesCompact,
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
      formation:Formations.NormalLinesCompact,
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
      formation:Formations.EightChainThru,
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
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          Forward.scale(0.8,1.0) +
          ssqtrright.skew(0.0,0.7),

          Forward.scale(0.8,1.0) +
          ssqtrright.skew(0.0,-1.3)
      ]),

    AnimatedCall('Single Circle Right 1/4',
      formation:Formations.NormalLinesCompact,
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
      formation:Formations.EightChainThru,
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
      formation:Formations.FacingCouplesCompact,
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
      formation:Formations.NormalLinesCompact,
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
      formation:Formations.EightChainThru,
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
      formation:Formations.FacingCouplesCompact,
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
      formation:Formations.NormalLinesCompact,
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
      formation:Formations.EightChainThru,
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

