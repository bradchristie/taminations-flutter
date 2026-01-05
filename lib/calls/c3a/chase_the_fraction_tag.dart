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
import '../c1/chase_your_neighbor.dart' as c1;

  final List<AnimatedCall> ChaseTheFractionTag = [

    AnimatedCall('Chase the Tag',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
  ]),
      from:'Back to Back Couples',fractions:'3;2;2',
      paths:[
          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          ExtendRight.changeBeats(2),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2 +
          ExtendRight.changeBeats(2)
      ]),

    AnimatedCall('Chase the Tag',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',fractions:'3;2;2',
      paths:[
          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          Forward.changeBeats(2),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2 +
          Forward.changeBeats(2)
      ]),

    AnimatedCall('Chase and Scatter',
      formation:Formation('Lines Facing Out'),
      group:' ',fractions:'3;2',
      paths:[
          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          LeadRight.changeBeats(3).scale(2.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          RunLeft.changeBeats(6),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Chase Back',
      formation:Formation('Lines Facing Out'),
      group:' ',fractions:'3;2',
      paths:[
          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(6),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(6),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Chase Chain Thru',
      formation:Formation('Lines Facing Out'),
      group:' ',fractions:'3;2',
      paths:[
          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(6),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight +
          Forward_2,

          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(6),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward_2
      ]),

    AnimatedCall('Chase Your Leader',
      formation:Formation('Lines Facing Out'),
      group:' ',
      paths:[
          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          LeadRight +
          Forward_5.changeBeats(3) +
          RunRight.changeBeats(5).scale(2.0,2.0),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25) +
          Forward,

          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          LeadRight +
          Forward +
          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_2,

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25) +
          Forward_3
      ]),

    c1.ChaseYourNeighbor.where((tam) =>
      tam.title == 'Chase Your Neighbor' && tam.from == 'Lines Facing Out').first.xref(title: 'Chase Your Neighbor', group: ' ', notForSequencer: true),

    AnimatedCall('Chaser\'s Delight',
      formation:Formation('Lines Facing Out'),
      group:' ',
      paths:[
          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          LeadRight +
          Forward_4 +
          RunRight.changeBeats(6).scale(3.0,3.0),

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingLeft +
          CastRight,

          UmTurnRight.changeBeats(3).skew(-2.0,0.0) +
          Forward_2 +
          LeadRight +
          RunRight.changeBeats(6).scale(3.0,3.0) +
          Forward_4,

          RunRight.scale(1.0,0.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2) +
          Forward_2 +
          SwingRight +
          Stand.changeBeats(6) +
          CastRight
      ]),
  ];
