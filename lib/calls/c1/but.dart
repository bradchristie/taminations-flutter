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

final List<AnimatedCall> But = [

  AnimatedCall('Chain Reaction, But 2/3 Recycle',
      formation:Formation('Quarter Tag'),
      group:' ',fractions:'3.5;2',
      paths:[
        ExtendLeft.changeBeats(2).scale(1.5,0.5) +
            ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
            HingeRight.changeBeats(2) +
            CastLeft.changehands(0),

        Forward.changeBeats(2) +
            HingeLeft +
            HingeRight.changeBeats(2) +
            ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

        LeadRight.changeBeats(3.5).scale(5.0,3.0) +
            SwingRight.changeBeats(2) +
            LeadLeft.changeBeats(4.5).scale(1.0,5.0),

        ExtendLeft.changeBeats(2).scale(1.5,0.5) +
            HingeLeft.skew(0.5,-0.5) +
            SwingRight.changeBeats(2) +
            LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

  AnimatedCall('Tally Ho, But Explode the Wave',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',fractions:'2;3',
      paths:[
        Forward_2 +
            HingeRight +
            Forward_2.changeBeats(1.5) +
            LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,2.0) +
            ExtendRight.changeBeats(3).scale(1.0,0.5),

        LeadLeft.changeBeats(2) +
            SwingRight +
            LeadRight.changeBeats(3).scale(3.0,3.0),

        Forward_2 +
            HingeRight +
            LeadRight +
            Forward_2,

        LeadRight.changeBeats(2).scale(3.0,3.0) +
            SwingRight +
            LeadLeft.changeBeats(3).changehands(Hands.RIGHT).scale(0.5,2.0) +
            ExtendRight.changeBeats(3).scale(3.0,0.5)
      ]),
];

