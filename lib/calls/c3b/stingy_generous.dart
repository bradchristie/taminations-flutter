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
import '../a1/quarter_thru.dart' as a1;

  final List<AnimatedCall> StingyGenerous = [

    AnimatedCall('Generous Dixie Style to a Wave',
      formation:Formation('Double Pass Thru'),
      group:'Generous',fractions:'2',
      paths:[
          Stand.changeBeats(2) +
          Forward.changeBeats(2) +
          SwingLeft,

          Stand.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          Forward.changeBeats(2) +
          SwingLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft
      ]),

    AnimatedCall('Generous Lockit',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Generous',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5) +
          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2).scale(1.0,0.5) +
          HingeLeft.changeBeats(2),

          LeadRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Generous Mix',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',group:'Generous',fractions:'3',
      paths:[
          DodgeRight +
          CastRight,

          RunLeft.scale(1.0,2.0),

          RunLeft.scale(1.0,2.0),

          DodgeRight +
          CastRight
      ]),

    AnimatedCall('Generous Reset',
      formation:Formation('Column RH GBGB'),
      group:'Generous',fractions:'3;3;3',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          SwingLeft +
          UmTurnRight.changeBeats(3).skew(-2.0,-0.5) +
          HingeRight.scale(1.0,0.5),

          Forward.changeBeats(3) +
          SwingLeft +
          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5),

          RunLeft.skew(-1.0,0.0) +
          SwingLeft +
          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5),

          Forward.changeBeats(3) +
          SwingLeft +
          UmTurnRight.changeBeats(3).skew(-2.0,-0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Generous Six-Two Acey Deucey',
      formation:Formation('Hourglass RH BP'),
      group:'Generous',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          Forward_4,

          CastRight.changeBeats(4)
      ]),

    AnimatedCall('Generous Spin the Windmill Forward',
      formation:Formation('Ocean Waves RH GBBG'),
      group:'Generous',
      paths:[
          Forward_4.changeBeats(5) +
          RunRight.changeBeats(7).scale(2.5,3.0),

          CastLeft +
          SwingRight +
          CastLeft,

          CastLeft +
          Stand.changeBeats(3) +
          CastLeft,

          RunRight.changeBeats(7).scale(2.5,3.0) +
          Forward_4.changeBeats(5)
      ]),

    AnimatedCall('Generous Scoot Back',
      formation:Formation('Quarter Tag'),
      group:'Generous',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,1.75) +
          CastRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(1.0,1.75),

          ExtendRight.changeBeats(2).scale(1.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25),

          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(1.0,0.25),

          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25)
      ]),

    AnimatedCall('Generous Sets in Motion',
      formation:Formation('Diamonds Facing Girl Points'),
      group:'Generous',
      paths:[
          SwingRight +
          SwingLeft +
          QuarterLeft.skew(-0.5,1.0) +
          Forward_3 +
          FlipLeft.scale(1.0,0.25),

          RunLeft.changeBeats(5.5).scale(2.0,3.0) +
          Forward_2,

          SwingRight +
          QuarterRight +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          FlipRight.changeBeats(3).skew(2.0,0.5),

          Forward_4.changeBeats(5.5) +
          RunLeft.changeBeats(4) +
          Forward_2
      ]),
    a1.QuarterThru.where((tam) =>
      tam.title == '3/4 Thru' && tam.from == 'Ocean Waves').first.xref(title: 'Generous Swing Thru').xref(group: 'Generous'),

    AnimatedCall('Stingy Cut the Diamond',
      formation:Formation('Diamonds RH Girl Points'),
      group:'Stingy',
      paths:[
          Forward_2 +
          LeadRight,

          DodgeRight +
          HingeRight,

          Forward_2 +
          LeadRight,

          DodgeRight +
          HingeRight
      ]),

    AnimatedCall('Stingy Follow Your Neighbor',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Stingy',
      paths:[
          Forward_2.skew(0.0,-0.25) +
          HingeRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          RunRight.scale(1.0,0.5),

          Forward_2.skew(0.0,-0.25) +
          HingeRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadRight.changeBeats(2).scale(2.0,1.0) +
          RunRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Stingy Spin the Top',
      formation:Formation('Box RH'),
      group:'Stingy',fractions:'2',
      paths:[
          HingeRight.changeBeats(2) +
          CastLeft.changeBeats(4),

          HingeRight.changeBeats(2) +
          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Stingy Split Square Chain Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      group:'Stingy',fractions:'1;2;6',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          HingeLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          HingeLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Stand +
          Forward.changeBeats(2) +
          HingeLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward,

          Stand +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          HingeLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward
      ]),
    a1.QuarterThru.where((tam) =>
      tam.title == 'Quarter Thru' && tam.from == 'Right-Hand Waves').first.xref(title: 'Stingy Swing Thru').xref(group: 'Stingy'),

    AnimatedCall('Finally Stingy Spin the Top',
      formation:Formation('Facing Couples'),
      group:' ',fractions:'3;3',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          SwingRight +
          SwingLeft.changeBeats(4),

          Forward_2.changeBeats(3) +
          SwingRight +
          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),
  ];

