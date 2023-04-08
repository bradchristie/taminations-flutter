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
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> CrossCycle = [

    AnimatedCall('Cross Cycle, 3 distinct parts',
      formation:Formations.TwomFacedLineRH,
      group:' ',parts:'3;2',
      paths:[
          DodgeRight.skew(1.0,0.0) +
          CounterRotateRight_0_m2.changehands(2) +
          QuarterRight.skew(0.0,1.0),

          RunRight.skew(1.0,0.0) +
          CounterRotateRight_2_0.changehands(2) +
          QuarterRight.skew(0.0,1.0)
      ]),

    AnimatedCall('Cross Cycle',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',fractions:'4',
      taminator: '''
      For the rest of these animations from lines, the first two parts are danced as
      one movement.
    ''',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,4.0) +
          QuarterRight.skew(0.0,1.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.changeBeats(2) +
          QuarterRight.skew(0.0,1.0)
      ]),

    AnimatedCall('Cross Cycle',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',fractions:'4',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.changeBeats(2) +
          QuarterLeft.skew(0.0,-1.0),

          LeadLeft.changeBeats(4).scale(1.0,4.0) +
          QuarterLeft.skew(0.0,-1.0)
      ]),

    AnimatedCall('Cross Cycle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:1,angle:180),
  ]),
      from:'Facing Couples',
      paths:[
          Forward_2 +
          HingeRight.changehands(2) +
          HingeRight.changeBeats(2).changehands(3),

          QuarterLeft.changeBeats(3.5).skew(0.0,1.0) +
          LeadRight.changeBeats(2).changehands(2).scale(3.0,2.0)
      ]),

    AnimatedCall('Cross Cycle',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          UmTurnRight.changeBeats(4).changehands(6).skew(2.0,0.0) +
          BackSashayLeft.changeBeats(2).scale(1.5,1.0),

          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(-2.0,0.0)
      ]),
  ];

