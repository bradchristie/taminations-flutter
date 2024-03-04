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

  final List<AnimatedCall> TouchAQuarter = [

    AnimatedCall('Touch a Quarter',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          ExtendLeft.scale(1.5,1.0) +
          HingeRight.changeBeats(1).scale(1.0,0.5),

          ExtendLeft.scale(1.5,0.5) +
          HingeRight.changeBeats(1)
      ]),

    AnimatedCall('Touch a Quarter',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 1,
      paths:[
          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).changehands(Hands.GRIPRIGHT).scale(1.0,0.5)
      ]),

    AnimatedCall('Touch a Quarter',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          ExtendLeft +
          QuarterRight.changehands(Hands.RIGHT).skew(1.0,0.0),

          Forward +
          HingeRight,

          ExtendLeft +
          QuarterRight.changehands(Hands.RIGHT).skew(1.0,0.0),

          Forward +
          HingeRight
      ]),

    AnimatedCall('Left Touch a Quarter',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          ExtendRight.scale(1.5,0.5) +
          HingeLeft.changeBeats(1),

          ExtendRight.scale(1.5,1.0) +
          HingeLeft.changeBeats(1).scale(1.0,0.5)
      ]),

    AnimatedCall('Left Touch a Quarter',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          ExtendRight.scale(2.0,0.5) +
          HingeLeft.changeBeats(1).changehands(Hands.GRIPLEFT).scale(1.0,0.5),

          ExtendRight.scale(2.0,0.5) +
          HingeLeft.changeBeats(1).changehands(Hands.GRIPLEFT).scale(1.0,0.5),

          ExtendRight.scale(2.0,0.5) +
          HingeLeft.changeBeats(1).changehands(Hands.GRIPLEFT).scale(1.0,0.5),

          ExtendRight.scale(2.0,0.5) +
          HingeLeft.changeBeats(1).changehands(Hands.GRIPLEFT).scale(1.0,0.5)
      ]),

    AnimatedCall('Left Touch a Quarter',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          Forward +
          HingeLeft,

          ExtendRight +
          QuarterLeft.changehands(Hands.LEFT).skew(1.0,0.0),

          Forward +
          HingeLeft,

          ExtendRight +
          QuarterLeft.changehands(Hands.LEFT).skew(1.0,0.0)
      ]),

    AnimatedCall('Touch a Half',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(3).scale(1.5,2.0) +
          SwingRight,

          Forward.changeBeats(3).scale(1.5,1.0) +
          SwingRight
      ]),
  ];

