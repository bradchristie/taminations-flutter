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
import '../../moves.dart';

  final List<AnimatedCall> BreakerAnything = [

    AnimatedCall('Breaker 3',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',fractions:'4.5',
      paths:[
          HingeRight.skew(0.333,0.0) +
          HingeRight.skew(0.0,0.333) +
          HingeRight.skew(-0.333,0.0) +
          CastLeft,

          QuarterRight.changeBeats(3).changehands(6).skew(0.0,-2.0) +
          LeadRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,1.0),

          QuarterRight.changeBeats(3).changehands(6).skew(2.0,0.0) +
          Forward.changeBeats(1.5) +
          CastLeft,

          HingeRight.skew(-0.333,0.0) +
          HingeRight.skew(0.0,-0.333) +
          HingeRight.skew(0.333,0.0) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Breaker 3',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',fractions:'4.5',
      paths:[
          HingeLeft.skew(-0.333,0.0) +
          HingeLeft.skew(0.0,0.333) +
          HingeLeft.skew(0.333,0.0) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          QuarterLeft.changeBeats(3).changehands(5).skew(2.0,0.0) +
          Forward.changeBeats(1.5) +
          CastRight,

          QuarterLeft.changeBeats(3).changehands(5).skew(0.0,2.0) +
          LeadLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,1.0),

          HingeLeft.skew(0.333,0.0) +
          HingeLeft.skew(0.0,-0.333) +
          HingeLeft.skew(-0.333,0.0) +
          CastRight
      ]),

    AnimatedCall('Breaker 3',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns',fractions:'4.5',
      paths:[
          HingeLeft.skew(-0.333,0.0) +
          HingeLeft.skew(0.0,0.333) +
          HingeLeft.skew(0.333,0.0) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          QuarterRight.changeBeats(3).changehands(6).skew(0.0,-2.0) +
          LeadRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,3.0),

          QuarterRight.changeBeats(3).changehands(6).skew(2.0,0.0) +
          Forward.changeBeats(1.5) +
          CastLeft,

          HingeLeft.skew(0.333,0.0) +
          HingeLeft.skew(0.0,-0.333) +
          HingeLeft.skew(-0.333,0.0) +
          BackHingeRight +
          BackHingeRight +
          BackHingeRight
      ]),

    AnimatedCall('Breaker Mix',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',fractions:'4.5',
      paths:[
          HingeRight.skew(0.333,0.0) +
          HingeRight.skew(0.0,0.333) +
          HingeRight.skew(-0.333,0.0) +
          DodgeLeft +
          SwingLeft,

          CounterRotateRight_0_m2.changeBeats(3).changehands(2) +
          LeadRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,1.0),

          CounterRotateRight_2_0.changeBeats(3).changehands(2) +
          Forward.changeBeats(1.5) +
          RunRight.scale(1.0,2.0),

          HingeRight.skew(-0.333,0.0) +
          HingeRight.skew(0.0,-0.333) +
          HingeRight.skew(0.333,0.0) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),
  ];

