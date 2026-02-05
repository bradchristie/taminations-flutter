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
import '../a2/single_wheel.dart' as a2;

  final List<AnimatedCall> SingleConcept = [

    AnimatedCall('Single Checkmate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
  ]),
      from:'Right-Hand Box',
      paths:[
          Forward_2 +
          LeadRight.changeBeats(4).scale(1.0,3.0),

          RunRight.scale(1.0,1.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.0)
      ]),

    AnimatedCall('Single Checkmate',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          RunLeft.scale(1.0,1.5) +
          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          Forward_2 +
          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Single Checkmate',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          LeadRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterLeft.skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Single Checkmate',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',
      paths:[
          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          RunRight +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Single Checkmate',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      taminator: '''
      This has also been called Split Checkmate
    ''',
      paths:[
          Forward_2 +
          LeadRight.changeBeats(4).scale(1.0,2.0),

          RunRight +
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          Forward_2 +
          LeadRight.changeBeats(4).scale(1.0,2.0),

          RunRight +
          QuarterRight.changeBeats(3).skew(3.0,0.0)
      ]),

    AnimatedCall('Single Checkmate',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft +
          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          Forward_2 +
          LeadLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft +
          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          Forward_2 +
          LeadLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Single Checkmate',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          RunRight.scale(1.0,1.5) +
          QuarterRight.changeBeats(2).skew(2.0,0.0),

          Forward +
          LeadRight.changeBeats(4).scale(1.0,3.0),

          RunRight.scale(0.5,1.5) +
          QuarterRight.changeBeats(2).skew(2.0,0.0),

          Forward +
          LeadRight.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Single Checkmate',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward +
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          RunLeft.scale(0.5,1.5) +
          QuarterLeft.changeBeats(2).skew(2.0,0.0),

          Forward +
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          RunLeft.scale(1.0,1.5) +
          QuarterLeft.changeBeats(2).skew(2.0,0.0)
      ]),

    AnimatedCall('Single Checkmate',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines Ends Facing Out',
      paths:[
          RunLeft.scale(1.0,0.75) +
          Forward_2 +
          QuarterLeft.skew(1.0,-0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          LeadLeft.scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward +
          LeadRight +
          ExtendRight.changeBeats(2).scale(1.5,1.0),

          RunRight.scale(1.0,1.25) +
          Forward_2 +
          LeadRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Single Checkmate',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines Ends Facing In',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward +
          LeadRight +
          ExtendRight.changeBeats(2).scale(1.5,1.0),

          RunRight.scale(1.0,1.25) +
          Forward_2 +
          LeadRight.scale(1.0,0.5),

          RunLeft.scale(1.0,0.75) +
          Forward_2 +
          QuarterLeft.skew(1.0,-0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          LeadLeft.scale(1.0,1.5)
      ]),

    AnimatedCall('Heads Single Checkmate',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',
      taminator: '''
      This has also been called Box Checkmate
    ''',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          QuarterLeft.skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('As Couples Single Checkmate',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          Forward_2.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0) +
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT) +
          Forward_2.changehands(Hands.LEFT),

          FlipRight.changeBeats(4).changehands(Hands.LEFT) +
          Forward_3.changehands(Hands.LEFT) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.0,1.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,3.0) +
          Forward_3.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.0)
      ]),

    AnimatedCall('Stretch Single Checkmate',
      formation:Formation('Ocean Waves RH BGBG'),
      group:' ',
      paths:[
          Forward_2 +
          LeadRight.changeBeats(4).scale(1.0,2.0) +
          Forward_2,

          RunRight +
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          Forward_2 +
          LeadRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(5).scale(1.0,2.0) +
          QuarterRight.changeBeats(3).skew(3.0,0.0)
      ]),

    AnimatedCall('Tandem Single Checkmate',
      formation:Formation('Column RH GBGB'),
      group:' ',
      taminator: '''
      Note how this is different from A-2 Checkmate
    ''',
      paths:[
          RunRight.scale(1.0,1.5) +
          Forward_4 +
          CounterRotateRight_0_m2.skew(0.0,1.0),

          Forward_2 +
          RunRight.scale(1.0,1.5) +
          Forward_2 +
          CounterRotateRight_2_0.skew(0.0,1.0),

          Forward_2 +
          CounterRotateRight_0_m2.changeBeats(5) +
          Forward_2,

          Forward_2 +
          CounterRotateRight_2_0.changeBeats(5) +
          Forward_2
      ]),
    a2.SingleWheel.where((tam) =>
      tam.title == 'Single Wheel' && tam.from == 'Couples Facing Out').first.xref(title: 'Single Turn and Deal'),
    a2.SingleWheel.where((tam) =>
      tam.title == 'Single Wheel' && tam.from == 'Right-Hand Box').first.xref(title: 'Single Turn and Deal'),

    AnimatedCall('Single Turn and Deal',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          UmTurnLeft.skew(-1.0,1.0),

          UmTurnLeft.skew(-1.0,1.0)
      ]),

    AnimatedCall('Single Ferris Wheel',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Single',
      paths:[
          Forward_2 +
          LeadRight +
          QuarterRight.skew(1.0,0.0),

          UmTurnRight.skew(1.0,0.0),

          Forward_2 +
          UmTurnRight.skew(1.0,0.0),

          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Single Polly Wally',
      formation:Formation('Eight Chain Thru'),
      group:'Single',
      paths:[
          UmTurnRight.skew(1.0,0.0),

          FlipRight.skew(1.0,0.0),

          FlipLeft.skew(-1.0,0.0) +
          Forward_2,

          UmTurnLeft.skew(-1.0,0.0) +
          Forward_2
      ]),

    AnimatedCall('Single Rotary Spin',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:90),
  ]),
      group:'Single',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          CastLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5) +
          UmTurnLeft +
          QuarterLeft
      ]),

    AnimatedCall('Single Shakedown',
      formation:Formation('Couples Facing Out Compact'),
      group:'Single',
      paths:[
          RunRight.skew(-0.5,0.0) +
          QuarterRight.skew(1.0,0.0),

          UmTurnRight.changeBeats(3).skew(-1.0,0.0) +
          QuarterRight.skew(0.5,0.0)
      ]),

    AnimatedCall('Single Turn to a Line',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',
      paths:[
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          QuarterLeft,

          QuarterLeft.skew(1.0,0.0) +
          DodgeRight.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft
      ]),

    AnimatedCall('Single Turn to a Line',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',
      paths:[
          QuarterRight.skew(-1.0,0.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          QuarterRight,

          QuarterRight.skew(-1.0,0.0) +
          DodgeRight.changeBeats(2).scale(1.0,0.5) +
          QuarterRight
      ]),

    AnimatedCall('Single Turn to a Line',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          QuarterLeft,

          QuarterRight.skew(-1.0,0.0) +
          DodgeRight.changeBeats(2).scale(1.0,0.5) +
          QuarterRight
      ]),

    AnimatedCall('Single Turn to a Line',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          QuarterRight.skew(-1.0,0.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          QuarterRight,

          QuarterLeft.skew(1.0,0.0) +
          DodgeRight.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft
      ]),
  ];

