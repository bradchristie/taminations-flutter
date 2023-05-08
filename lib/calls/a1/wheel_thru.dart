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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> WheelThru = [

    AnimatedCall('Wheel Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 2, cy1: 0, cx2: 2.5, cy2: -.5, x2: 2.5, y2: -2.5  )),

          QuarterRight.changeBeats(3).skew(0.5,-0.5)
      ]),

    AnimatedCall('Wheel Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,2.0),

          QuarterRight.changeBeats(3).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,2.0),

          QuarterRight.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('Wheel Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          LeadRight.changeBeats(4).scale(2.0,3.0),

          QuarterRight.changeBeats(3).skew(0.0,-1.0),

          LeadRight.changeBeats(4).scale(2.0,3.0),

          QuarterRight.changeBeats(3).skew(0.0,-1.0)
      ]),

    AnimatedCall('Heads Wheel Thru',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          Forward +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 2.4, cy1: 0, cx2: 3, cy2: -.6, x2: 3, y2: -2  )),

          Forward +
          QuarterRight.changeBeats(3).skew(1.0,0.0),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Wheel Thru',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          Path(),

          Path(),

          Forward +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 2.4, cy1: 0, cx2: 3, cy2: -.6, x2: 3, y2: -2  )),

          Forward +
          QuarterRight.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('As Couples Wheel Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',
      paths:[
          LeadRight.changeBeats(3).changehands(2).scale(3.5,3.0) +
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,1.5),

          LeadRight.changeBeats(3).changehands(1).scale(2.5,1.0) +
          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,0.5),

          HingeRight,

          BackHingeLeft
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Wheel Thru').first.xref(title: 'All 8 Wheel Thru').xref(group: ' '),

    AnimatedCall('Left Wheel Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          QuarterLeft.changeBeats(4).skew(0.5,0.5),

          WheelThruLeft.changeBeats(4).scale(0.833,0.833)
      ]),

    AnimatedCall('Left Wheel Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          QuarterLeft.changeBeats(4).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterLeft.changeBeats(4).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,2.0)
      ]),

    AnimatedCall('Left Wheel Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          QuarterLeft.changeBeats(4).skew(0.0,1.0),

          LeadLeft.changeBeats(4).scale(2.0,3.0),

          QuarterLeft.changeBeats(4).skew(0.0,1.0),

          LeadLeft.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Heads Left Wheel Thru',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          Forward +
          QuarterLeft.changeBeats(3).skew(1.0,0.0),

          Forward +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 2.4, cy1: 0, cx2: 3, cy2: .6, x2: 3, y2: 2  )),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Left Wheel Thru',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          Path(),

          Path(),

          Forward +
          QuarterLeft.changeBeats(3).skew(1.0,0.0),

          Forward +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: 2.4, cy1: 0, cx2: 3, cy2: .6, x2: 3, y2: 2  ))
      ]),

    AnimatedCall('As Couples Left Wheel Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',
      paths:[
          BackHingeRight,

          HingeLeft,

          LeadLeft.changeBeats(3).changehands(2).scale(2.5,1.0) +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3).changehands(1).scale(3.5,3.0) +
          ExtendRight.changeBeats(2).changehands(1).scale(2.0,1.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Left Wheel Thru').first.xref(title: 'All 8 Left Wheel Thru').xref(group: ' '),
  ];

