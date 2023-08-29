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
import '../a2/diamond_chain_thru.dart' as a2;

  final List<AnimatedCall> AnythingChainThru = [

    AnimatedCall('All Eight Recycle Chain Thru',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',group:' ',
      paths:[
          UmTurnRight.changeBeats(3).skew(3.0,0.0) +
          SwingLeft +
          SwingRight +
          HingeRight.skew(0.0,-1.0),

          ExtendLeft.changeBeats(6).scale(3.0,4.0) +
          SwingRight +
          HingeRight.skew(0.0,1.0),

          CrossFoldRight.changeBeats(6).scale(1.5,1.0),

          RunRight.scale(1.0,0.5).skew(-1.5,0.0) +
          RunRight.scale(1.0,0.5).skew(1.5,0.0)
      ]),

    AnimatedCall('Cross Extend Chain Thru',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',group:' ',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          SwingRight +
          SwingLeft +
          HingeLeft.skew(0.0,1.0),

          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Stand.changeBeats(3) +
          SwingLeft +
          HingeLeft.skew(0.0,-1.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),
    a2.DiamondChainThru.where((tam) =>
      tam.title == 'Diamond Chain Thru' && tam.from == 'Right-Hand Diamonds').first.xref(title: 'Diamond Chain Thru').xref(group: ' '),

    AnimatedCall('Inside Triangle Chain Thru',
      formation:Formation('Diamonds RH Girl Points'),
      group:' ',parts:'5;3',
      paths:[
          Stand.changeBeats(8) +
          CastRight,

          LeadRight.changeBeats(5).scale(1.0,3.0) +
          SwingLeft +
          CastRight,

          LeadRight.changeBeats(5).scale(3.0,1.0),

          FlipRight.changeBeats(5).scale(1.0,3.0)
      ]),

    AnimatedCall('Follow Thru Chain Thru',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',group:' ',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.0),

          LeadRight.changeBeats(2).scale(1.5,1.0),

          LeadRight.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(1.5,1.0) +
          Stand.changeBeats(3) +
          BelleReverseWheel.scale(0.5,0.5) +
          BackHingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Follow Your Neighbor Chain Thru',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',group:' ',
      paths:[
          LeadRight.changeBeats(2).scale(1.5,1.0) +
          RunRight.scale(0.5,0.5),

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(0.5,1.0) +
          UmTurnRight +
          Stand.changeBeats(.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Interlocked Diamond Chain Thru',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      from:'Interlocked Diamonds',group:' ',parts:'4;3',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.0),

          LeadRight +
          ExtendLeft.changeBeats(2.5).scale(2.0,2.0) +
          SwingRight +
          CastLeft,

          LeadRight +
          ExtendLeft.changeBeats(2.5).scale(2.0,2.0),

          LeadRight.changeBeats(4).scale(1.0,3.0) +
          Stand.changeBeats(3) +
          BeauWheel +
          BackHingeRight
      ]),

    AnimatedCall('Ping Pong Chain Thru',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',group:' ',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward +
          Stand.changeBeats(2) +
          SwingRight +
          HingeRight.skew(0.0,1.0),

          Forward.changeBeats(3).scale(3.0,3.0) +
          SwingLeft +
          SwingRight +
          HingeRight.skew(0.0,-1.0),

          LeadRight.changeBeats(4).scale(4.0,3.0) +
          LeadRight,

          LeadLeft.changeBeats(4).scale(3.0,1.0) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Single Circle to a Wave Chain Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',
      paths:[
          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,0.5),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,0.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,0.5) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,0.5)
      ]),

    AnimatedCall('Split Recycle Chain Thru',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',group:' ',
      paths:[
          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,-0.5),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.5,2.0).skew(-2.0,1.5),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(2.0,-0.5) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.5,2.0).skew(-2.0,1.5) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),
  ];

