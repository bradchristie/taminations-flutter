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

  final List<AnimatedCall> Interrupt = [

    AnimatedCall('Scoot and Plenty, Interrupt Before the Split Circulates with an Acey Deucey',
      formation:Formation('Quarter Tag'),
      group:' ',fractions:'10.5;4',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          RunRight +
          Forward.changeBeats(3).scale(3.5,1.0) +
          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward_4 +
          RunRight +
          Forward_2.changeBeats(6),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          LeadRight +
          Forward_3 +
          LeadRight.changeBeats(1.5).scale(1.5,0.5) +
          Forward_4 +
          FlipRight +
          Forward_4 +
          RunRight.changeBeats(6).skew(-2.0,0.0),

          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(6).scale(3.5,1.0) +
          SwingLeft.changeBeats(4) +
          Forward_4 +
          FlipRight +
          Forward_4.changeBeats(3.5) +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          Forward_2 +
          FoldRight.changeBeats(4).scale(0.75,0.75) +
          SwingLeft.changeBeats(4) +
          FlipRight +
          Forward_4 +
          LeadRight.changeBeats(4).scale(2.0,3.0) +
          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Square Chain Thru, Interrupt Before the Last Part with Spin the Top',
      formation:Formation('Normal Lines'),
      group:' ',fractions:'3;3;3;3;4.5',
      paths:[
          PullLeft.scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          SwingRight +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(1.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          SwingRight +
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(1.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Square Thru, Interrupt on the Third Hand with a Swing Thru',
      formation:Formation('Eight Chain Thru'),
      group:' ',fractions:'1;1.5;2;3;3',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3).changehands(0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.changeBeats(2).scale(3.0,0.5) +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight +
          Stand.changeBeats(3).changehands(0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Swing the Fractions, Interrupt after 3/5 with Trade Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',fractions:'1.5;3;4.5;4;3',
      paths:[
          HingeRight +
          SwingLeft +
          CastRight +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          SwingLeft +
          HingeRight,

          HingeRight +
          Stand.changeBeats(3) +
          CastRight +
          RunLeft.changeBeats(4).scale(0.5,2.0) +
          SwingLeft +
          HingeRight,

          HingeRight +
          SwingLeft +
          CastRight +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          SwingLeft,

          HingeRight +
          Stand.changeBeats(3) +
          CastRight +
          RunRight.changeBeats(4).scale(1.5,2.0) +
          SwingLeft
      ]),
  ];

