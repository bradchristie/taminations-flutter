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

  final List<AnimatedCall> Checkover = [

    AnimatedCall('Checkover',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      taminator: '''Note that the Slither is blended into the end of Cast Off 3/4.
    ''',
      paths:[
          FlipRight.changeBeats(2).scale(1.0,1.5) +
          Forward_5 +
          QuarterRight.skew(1.0,0.0),

          Forward_2 +
          FlipRight.changeBeats(2).scale(1.0,1.5) +
          Forward_3 +
          QuarterRight.skew(1.0,0.0),

          Forward_2 +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.75,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.75) +
          Forward_2.changehands(Hands.LEFT),

          Forward_2 +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.75,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.75) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5)
      ]),

    AnimatedCall('Checkover',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      taminator: '''Note that the Slither is blended into the end of Cast Off 3/4.
    ''',
      paths:[
          Forward_2 +
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.75,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.75) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5),

          Forward_2 +
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.75,0.5) +
          LeadLeft.changeBeats(2).scale(2.0,0.75) +
          Forward_2.changehands(Hands.RIGHT),

          Forward_2 +
          FlipLeft.changeBeats(2).scale(1.0,1.5) +
          Forward_3 +
          QuarterLeft.skew(1.0,0.0),

          FlipLeft.changeBeats(2).scale(1.0,1.5) +
          Forward_5 +
          QuarterLeft.skew(1.0,0.0)
      ]),
  ];

