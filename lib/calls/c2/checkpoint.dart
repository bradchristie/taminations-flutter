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

  final List<AnimatedCall> Checkpoint = [

    AnimatedCall('Checkpoint Ah So by Swing Thru',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Checkpoint',
      paths:[
          DodgeRight.changeBeats(2).scale(1.0,0.25) +
          SwingRight +
          SwingLeft,

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,1.75).skew(3.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPLEFT).skew(-3.0,-0.5),

          DodgeRight.changeBeats(2).scale(1.0,0.25) +
          SwingRight
      ]),

    AnimatedCall('Checkpoint Tag the Line by Swing Thru',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Checkpoint',
      paths:[
          DodgeRight +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5),

          QuarterLeft.changeBeats(2).skew(-1.5,0.5) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(1.5,1.5),

          LeadRight.changeBeats(2).scale(1.5,1.0) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(1.0,1.5),

          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Checkpoint Box Circulate by Mix',
      formation:Formation('Diamonds RH PTP Girl Points'),
      group:'Checkpoint',
      paths:[
          ExtendLeft +
          Forward_4,

          RunLeft.changeBeats(5).scale(1.0,2.0),

          RunRight.changeBeats(4).skew(-1.0,-1.0),

          Stand +
          DodgeRight.changeBeats(4).scale(1.0,2.0) +
          SwingRight
      ]),

    AnimatedCall('Checkpoint Counter Rotate by Triangle Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:5.1,angle:180),
  ]),
      group:'Checkpoint',
      paths:[
          Stand.changeBeats(3) +
          RunLeft.skew(-1.0,0.05),

          LeadRight.changeBeats(5).scale(3.0,3.0),

          Stand.changeBeats(3) +
          Forward_2.changeBeats(3),

          DodgeLeft +
          RunLeft.skew(1.0,0.05)
      ]),
  ];

