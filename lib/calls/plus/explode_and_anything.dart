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
import '../plus/anything_and_roll.dart' as plus;

  final List<AnimatedCall> ExplodeAndAnything = [

    AnimatedCall('Explode and Touch a Quarter and Roll',
      formation:Formation('Wave RH'),
      group:'Explode and',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(2.0,3.0) +
          HingeRight.scale(1.0,0.5) +
          QuarterRight.skew(0.5,1.0),

          LeadLeft.changeBeats(3) +
          HingeRight.scale(1.0,0.5) +
          QuarterRight.skew(-0.5,1.0)
      ]),

    AnimatedCall('Explode and Partner Trade',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Explode and',difficulty: 2,
      paths:[
          LeadRight +
          RunRight,

          QuarterLeft.skew(1.0,-0.5) +
          FlipLeft.skew(-0.5,0.0),

          QuarterLeft.skew(1.0,-0.5) +
          FlipLeft.skew(-0.5,0.0),

          LeadRight +
          RunRight
      ]),

    AnimatedCall('Explode and Right and Left Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Explode and',difficulty: 1,
      taminator: '''
      This animation shows a strict interpretation.  The dancers first
      step forward, then turn in.  Some of the other animations show a smoother
      motion with the dancers stepping forward and turning at the same time.
    ''',
      paths:[
          Forward +
          QuarterRight +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          BeauWheel,

          Forward +
          QuarterLeft +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5) +
          BelleWheel,

          Forward +
          QuarterLeft +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5) +
          BelleWheel,

          Forward +
          QuarterRight +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          BeauWheel
      ]),
    plus.AnythingAndRoll.where((tam) =>
      tam.title == 'Explode and Roll').first.xref(title: 'Explode and Roll').xref(group: 'Explode and'),

    AnimatedCall('Explode and Touch a Quarter',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Explode and',difficulty: 1,
      paths:[
          Forward +
          QuarterRight +
          PullLeft.scale(2.0,0.5) +
          HingeRight.skew(1.0,0.5),

          Forward +
          QuarterLeft +
          PullLeft.scale(2.0,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-0.5),

          Forward +
          QuarterLeft +
          PullLeft.scale(2.0,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-0.5),

          Forward +
          QuarterRight +
          PullLeft.scale(2.0,0.5) +
          HingeRight.skew(1.0,0.5)
      ]),

    AnimatedCall('Explode and Slide Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Explode and',isGenderSpecific:true,difficulty: 2,
      paths:[
          Forward +
          QuarterRight +
          ExtendLeft.scale(2.0,0.5) +
          HingeRight.scale(2.0,0.5),

          Forward +
          QuarterLeft +
          ExtendLeft.scale(2.0,0.5) +
          QuarterLeft.skew(0.0,-0.5),

          Forward +
          QuarterLeft +
          ExtendLeft.scale(2.0,0.5) +
          QuarterLeft.skew(0.0,-0.5),

          Forward +
          QuarterRight +
          ExtendLeft.scale(2.0,0.5) +
          HingeRight.scale(2.0,0.5)
      ]),
  ];

