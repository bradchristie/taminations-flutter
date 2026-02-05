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
import '../c3b/scramble.dart' as c3b;

  final List<AnimatedCall> CentralConcept = [

    AnimatedCall('Central Choice',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Central',
      paths:[
          LeadRight.changeBeats(4).scale(1.5,3.0) +
          HingeRight.scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(4).scale(1.5,3.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Central Counter',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Central',fractions:'4.5',
      paths:[
          CastRight +
          LeadRight.changeBeats(3).scale(1.5,3.0),

          CastRight +
          HingeLeft.changeBeats(3).scale(0.5,1.0),

          CastRight +
          LeadRight.changeBeats(3).scale(1.5,3.0),

          CastRight +
          HingeLeft.changeBeats(3).scale(0.5,1.0)
      ]),

    AnimatedCall('Central Load the Boat',
      formation:Formation('Normal Lines'),
      group:'Central',
      paths:[
          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2) +
          FlipLeft +
          PassThru,

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight.changeBeats(2) +
          RunRight +
          PassThru,

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2) +
          FlipLeft +
          PassThru,

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight.changeBeats(2) +
          RunRight +
          PassThru
      ]),

    AnimatedCall('Central Ramble',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      group:'Central', isGenderSpecific: true,
      paths:[
          FlipRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          FlipRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          FlipRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          FlipRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Central Spin the Windmill',
      formation:Formation('Ocean Waves RH GBGB'),
      group:'Central',
      paths:[
          SwingRight +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight,

          SwingRight +
          SwingLeft +
          CastRight
      ]),
    c3b.Scramble.where((tam) =>
      tam.title == 'Central Scramble').first.xref(title: 'Central Scramble').xref(group: 'Central'),

    AnimatedCall('Central Stampede',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Central',
      paths:[
          RunRight.changeBeats(4).scale(1.5,2.0) +
          HingeLeft,

          RunLeft.changeBeats(4).scale(1.0,2.0) +
          HingeLeft +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          RunLeft.changeBeats(4).scale(0.5,2.0) +
          HingeLeft +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          RunRight.changeBeats(4).scale(2.0,2.0) +
          HingeLeft
      ]),

    AnimatedCall('Each Wave Central Counter',
      formation:Formation('Ocean Waves RH BGBG'),
      group:' ',fractions:'4.5',
      paths:[
          CastRight +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0),

          CastRight +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0),

          CastRight +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0),

          CastRight +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0)
      ]),
  ];

