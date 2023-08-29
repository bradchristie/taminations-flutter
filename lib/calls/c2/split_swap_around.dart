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

  final List<AnimatedCall> SplitSwapAround = [

    AnimatedCall('Split Swap Around',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          QuarterRight.changeBeats(3).skew(0.5,-2.5),

          QuarterRight.changeBeats(3).skew(2.5,-0.5)
      ]),

    AnimatedCall('Split Swap Around',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
          QuarterRight.changeBeats(3).skew(1.0,-2.0),

          QuarterRight.changeBeats(3).skew(3.0,0.0),

          QuarterRight.changeBeats(3).skew(1.0,-2.0),

          QuarterRight.changeBeats(3).skew(3.0,0.0)
      ]),

    AnimatedCall('Split Swap Around',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-3.0),

          QuarterRight.changeBeats(3).skew(2.0,-1.0),

          QuarterRight.changeBeats(3).skew(0.0,-3.0),

          QuarterRight.changeBeats(3).skew(2.0,-1.0)
      ]),

    AnimatedCall('Heads Split Swap Around',
      formation:Formation('Static Square'),
      group:' ',
      paths:[
          QuarterRight.changeBeats(3).skew(2.0,-2.0),

          QuarterRight.changeBeats(3).skew(4.0,0.0),

          Path(),

          Path()
      ]),

    AnimatedCall('As Couples Split Swap Around',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',group:' ',
      paths:[
          HingeRight.changeBeats(4).skew(0.0,-4.0),

          BackHingeLeft.changeBeats(4).skew(0.0,-4.0),

          HingeRight.changeBeats(4).skew(4.0,0.0),

          BackHingeLeft.changeBeats(4).skew(4.0,0.0)
      ]),

    AnimatedCall('Tandem Split Swap Around',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          Stand.changeBeats(1) +
          QuarterRight.changeBeats(4).skew(2.0,-2.0),

          QuarterRight.changeBeats(5).skew(4.0,0.0),

          Stand.changeBeats(1) +
          QuarterRight.changeBeats(4).skew(0.0,-4.0),

          QuarterRight.changeBeats(5).skew(2.0,-2.0)
      ]),

    AnimatedCall('Reverse Split Swap Around',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          QuarterLeft.changeBeats(3).skew(2.5,0.5),

          QuarterLeft.changeBeats(3).skew(0.5,2.5)
      ]),

    AnimatedCall('Reverse Split Swap Around',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          QuarterLeft.changeBeats(3).skew(1.0,2.0),

          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          QuarterLeft.changeBeats(3).skew(1.0,2.0)
      ]),

    AnimatedCall('Reverse Split Swap Around',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          QuarterLeft.changeBeats(3).skew(2.0,1.0),

          QuarterLeft.changeBeats(3).skew(0.0,3.0),

          QuarterLeft.changeBeats(3).skew(2.0,1.0),

          QuarterLeft.changeBeats(3).skew(0.0,3.0)
      ]),

    AnimatedCall('Heads Reverse Split Swap Around',
      formation:Formation('Static Square'),
      group:' ',
      paths:[
          QuarterLeft.changeBeats(3).skew(4.0,0.0),

          QuarterLeft.changeBeats(3).skew(2.0,2.0),

          Path(),

          Path()
      ]),

    AnimatedCall('As Couples Reverse Split Swap Around',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',group:' ',
      paths:[
          BackHingeRight.changeBeats(4).skew(4.0,0.0),

          HingeLeft.changeBeats(4).skew(4.0,0.0),

          BackHingeRight.changeBeats(4).skew(0.0,4.0),

          HingeLeft.changeBeats(4).skew(0.0,4.0)
      ]),

    AnimatedCall('Tandem Reverse Split Swap Around',
      formation:Formation('Double Pass Thru'),
      group:' ',
      paths:[
          QuarterLeft.changeBeats(5).skew(4.0,0.0),

          Stand.changeBeats(1) +
          QuarterLeft.changeBeats(4).skew(2.0,2.0),

          QuarterLeft.changeBeats(5).skew(2.0,2.0),

          Stand.changeBeats(1) +
          QuarterLeft.changeBeats(4).skew(0.0,4.0)
      ]),

    AnimatedCall('Sides Reverse Split Swap Around',
      formation:Formation('Static Square'),
      group:' ',noDisplay: true,
      paths:[
          Path(),

          Path(),

          QuarterLeft.changeBeats(3).skew(4.0,0.0),

          QuarterLeft.changeBeats(3).skew(2.0,2.0)
      ]),
  ];

