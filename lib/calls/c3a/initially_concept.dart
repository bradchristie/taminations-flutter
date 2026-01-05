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

  final List<AnimatedCall> InitiallyConcept = [

    AnimatedCall('Initially As Couples Hinge the Lock',
      formation:Formation('Tidal Line RH'),
      group:'Initially As Couples',fractions:'2',
      paths:[
          HingeRight.changeBeats(2).scale(1.5,1.5) +
          HingeRight.changeBeats(2).scale(1.5,1.5),

          HingeRight.changeBeats(2).changehands(Hands.LEFT).scale(0.5,0.5) +
          HingeRight.changeBeats(2).changehands(Hands.BOTH).scale(0.5,0.5),

          QuarterLeft.changeBeats(2).skew(-1.5,0.5) +
          HingeRight.changeBeats(2).scale(1.5,1.5),

          QuarterLeft.changeBeats(2).skew(-0.5,1.5) +
          HingeRight.changeBeats(2).changehands(Hands.BOTH).scale(0.5,0.5)
      ]),

    AnimatedCall('Initially As Couples Lock the Hinge',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'Initially As Couples',fractions:'2',
      paths:[
          LeadRight.changeBeats(3).scale(3.5,3.5) +
          LeadRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          LeadRight.changeBeats(3).scale(2.5,2.5) +
          QuarterLeft.changeBeats(2).scale(0.5,1.0).skew(-1.0,0.5),

          HingeLeft.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(2).scale(0.5,1.0).skew(-1.0,0.5),

          HingeLeft.changeBeats(3).scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0)
      ]),

    AnimatedCall('Initially As Couples Mix',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'Initially As Couples',fractions:'4',
      paths:[
          DodgeRight.changeBeats(4).changehands(Hands.RIGHT) +
          SwingLeft.scale(0.5,0.5),

          DodgeRight.changeBeats(4).changehands(Hands.LEFT),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(2.0,2.5),

          RunLeft.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,1.5) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Initially As Couples Spin the Top',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'Initially As Couples',fractions:'4',
      paths:[
          SwingRight.changeBeats(4).scale(1.5,1.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          SwingRight.changeBeats(4).changehands(Hands.BOTH).scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.changeBeats(4).changehands(Hands.BOTH).scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.changeBeats(4).scale(1.5,1.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5)
      ]),
  ];

