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

  final List<AnimatedCall> DelightDilemma = [

    AnimatedCall('Delight',
      formation:Formation('3/4 Tag'),
      group:' ',fractions:'3;3;3',
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(2.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0) +
          Forward_4.changeBeats(4),

          QuarterRight.skew(0.0,-1.0) +
          Forward_2.changeBeats(4) +
          LeadRight.changeBeats(4).scale(2.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          SwingRight +
          SwingLeft +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(6) +
          CastRight
      ]),

    AnimatedCall('Dilemma',
      formation:Formation('3/4 Tag'),
      group:' ',fractions:'3;3;3',
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          Forward_2.changeBeats(4) +
          LeadLeft.changeBeats(4).scale(2.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterLeft.skew(0.0,1.0) +
          LeadLeft.changeBeats(4).scale(2.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0) +
          Forward_4.changeBeats(4),

          SwingRight +
          SwingLeft +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(6) +
          CastRight
      ]),

    AnimatedCall('Tagger\'s Delight',
      formation:Formation('Lines Facing Out'),
      group:' ',
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          SwingRight +
          Stand.changeBeats(6) +
          CastRight,

          QuarterLeft.skew(-0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(2.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0) +
          Forward_4.changeBeats(4),

          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.5) +
          QuarterRight.skew(0.0,-1.0) +
          Forward_2.changeBeats(4) +
          LeadRight.changeBeats(4).scale(2.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          SwingRight +
          SwingLeft +
          SwingLeft +
          CastRight
      ]),
  ];

