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

  final List<AnimatedCall> Flutterwheel = [

    AnimatedCall('Flutterwheel',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          Stand.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,0.25)
      ]),

    AnimatedCall('Flutterwheel',
      formation:Formation('Facing Couples Far'),
      from:'Facing Couples Far',difficulty: 1,noDisplay: true,
      paths:[
          Stand.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(3.0,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(3.0,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(3.0,0.25)
      ]),

    AnimatedCall('Flutterwheel',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 1,
      paths:[
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,0.25),

          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.0) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,1.75).skew(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,0.25)
      ]),

    AnimatedCall('Flutterwheel',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          Stand.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          RunRight.changehands(Hands.RIGHT).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight.changehands(Hands.BOTH).scale(0.5,0.5) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.0,0.5),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          RunRight.changehands(Hands.RIGHT).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight.changehands(Hands.BOTH).scale(0.5,0.5) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.0,0.5)
      ]),

    AnimatedCall('Reverse Flutterwheel',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.5,-0.25),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.5) +
          RunLeft.changehands(Hands.LEFT).scale(1.5,2.0).skew(1.5,-0.5)
      ]),

    AnimatedCall('Reverse Flutterwheel',
      formation:Formation('Facing Couples Far'),
      from:'Facing Couples Far',difficulty: 1,noDisplay: true,
      paths:[
          ExtendRight.changeBeats(2).scale(3.0,1.75) +
          SwingLeft.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(3.0,-0.25),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(3.0,1.5) +
          RunLeft.changehands(Hands.LEFT).scale(1.5,2.0).skew(3.0,-0.5)
      ]),

    AnimatedCall('Reverse Flutterwheel',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.5,-0.25),

          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.0) +
          RunLeft.changehands(Hands.LEFT).scale(1.5,2.0).skew(1.5,-1.0),

          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.5,-0.25),

          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.5) +
          RunLeft.changehands(Hands.LEFT).scale(1.5,2.0).skew(1.5,-0.5)
      ]),

    AnimatedCall('Reverse Flutterwheel',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.changehands(Hands.BOTH).scale(0.5,0.5) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.0,-0.5),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          RunLeft.changehands(Hands.LEFT).skew(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.changehands(Hands.BOTH).scale(0.5,0.5) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.0,-0.5),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          RunLeft.changehands(Hands.LEFT).skew(1.0,0.5)
      ]),

    AnimatedCall('All 4 Women Lead Flutterwheel',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(4.5).skew(0.0,-1.0) +
          HingeRight.changeBeats(3).scale(3.0,3.0) +
          HingeRight.changeBeats(3).scale(3.0,2.0) +
          QuarterRight.changeBeats(3).changehands(Hands.RIGHT).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          HingeRight +
          HingeRight.changeBeats(3).changehands(Hands.BOTH) +
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(1.5,0.0) +
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(0.0,1.5),

          QuarterLeft.changeBeats(4.5).skew(0.0,-1.0) +
          HingeRight.changeBeats(3).scale(3.0,3.0) +
          HingeRight.changeBeats(3).scale(3.0,2.0) +
          QuarterRight.changeBeats(3).changehands(Hands.RIGHT).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          HingeRight +
          HingeRight.changeBeats(3).changehands(Hands.BOTH) +
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(1.5,0.0) +
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(0.0,1.5)
      ]),

    AnimatedCall('All 4 Men Lead Reverse Flutterwheel',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          HingeLeft +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(1.5,0.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.5),

          QuarterRight.changeBeats(4.5).skew(0.0,1.0) +
          HingeLeft.changeBeats(3).scale(3.0,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,2.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(2.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          HingeLeft +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(1.5,0.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.5),

          QuarterRight.changeBeats(4.5).skew(0.0,1.0) +
          HingeLeft.changeBeats(3).scale(3.0,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,2.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(2.0,0.0)
      ]),
  ];

