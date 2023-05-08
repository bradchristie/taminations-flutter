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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> LeadRight = [

    AnimatedCall('Lead Right',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          HingeRight.changeBeats(4).scale(0.5,0.5).skew(2.0,-2.0),

          QuarterRight.changeBeats(4).changehands(1).skew(0.5,-0.5)
      ]),

    AnimatedCall('Lead Right',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          EighthRight.changeBeats(2).changehands(2).skew(0.5,-1.5) +
          EighthRight.changeBeats(2).changehands(2).skew(2.1,0.0),

          QuarterRight.changeBeats(4).changehands(1).skew(0.0,-1.0),

          EighthRight.changeBeats(2).changehands(2).skew(0.5,-1.5) +
          EighthRight.changeBeats(2).changehands(2).skew(2.1,0.0),

          QuarterRight.changeBeats(4).changehands(1).skew(0.0,-1.0)
      ]),

    AnimatedCall('Lead Right',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          HingeRight.changeBeats(4).scale(0.5,0.5).skew(2.5,-1.5),

          QuarterRight.changeBeats(4).changehands(1).skew(1.0,0.0),

          HingeRight.changeBeats(4).scale(0.5,0.5).skew(2.5,-1.5),

          QuarterRight.changeBeats(4).changehands(1).skew(1.0,0.0)
      ]),

    AnimatedCall('Lead Left',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(4).changehands(2).skew(0.5,0.5),

          HingeLeft.changeBeats(4).scale(0.5,0.5).skew(2.0,2.0)
      ]),

    AnimatedCall('Lead Left',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(4).changehands(2).skew(0.0,1.0),

          EighthLeft.changeBeats(2).changehands(1).skew(0.5,1.5) +
          EighthLeft.changeBeats(2).changehands(1).skew(2.1,0.0),

          QuarterLeft.changeBeats(4).changehands(2).skew(0.0,1.0),

          EighthLeft.changeBeats(2).changehands(1).skew(0.5,1.5) +
          EighthLeft.changeBeats(2).changehands(1).skew(2.1,0.0)
      ]),

    AnimatedCall('Lead Left',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(4).changehands(2).skew(1.0,0.0),

          HingeLeft.changeBeats(4).scale(0.5,0.5).skew(2.5,1.5),

          QuarterLeft.changeBeats(4).changehands(2).skew(1.0,0.0),

          HingeLeft.changeBeats(4).scale(0.5,0.5).skew(2.5,1.5)
      ]),

    AnimatedCall('Heads Lead Right',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,
      paths:[
          HingeRight.changeBeats(4).scale(0.5,0.5).skew(3.5,-1.5),

          QuarterRight.changeBeats(4).changehands(1).skew(2.0,0.0),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Lead Left',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,
      paths:[
          QuarterLeft.changeBeats(4).changehands(2).skew(2.0,0.0),

          HingeLeft.changeBeats(4).scale(0.5,0.5).skew(3.5,1.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Lead Right',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,noDisplay: true,
      paths:[
          Path(),

          Path(),

          HingeRight.changeBeats(4).scale(0.5,0.5).skew(3.5,-1.5),

          QuarterRight.changeBeats(4).changehands(1).skew(2.0,0.0)
      ]),

    AnimatedCall('Sides Lead Left',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 1,noDisplay: true,
      paths:[
          Path(),

          Path(),

          QuarterLeft.changeBeats(4).changehands(2).skew(2.0,0.0),

          HingeLeft.changeBeats(4).scale(0.5,0.5).skew(3.5,1.5)
      ]),
  ];

