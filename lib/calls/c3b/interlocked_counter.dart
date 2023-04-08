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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> InterlockedCounter = [ 

    AnimatedCall('Interlocked Counter',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
  ]),
      from:'Right-Hand Three Quarter Lines',
      paths:[
          LeadRight +
          Forward +
          SwingRight +
          CounterRotateRight_2_0.changehands(2).skew(0.0,1.0),

          LeadRight +
          Forward +
          SwingRight.scale(0.5,1.0) +
          CounterRotateRight_0_m2.changehands(2).skew(0.0,-1.0),

          RunRight.skew(-3.0,-1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward_2,

          RunLeft.skew(-3.0,0.0) +
          SwingRight.scale(0.75,0.75) +
          RunRight.changeBeats(2).scale(1.0,0.75).skew(2.0,0.0)
      ]),

    AnimatedCall('Interlocked Counter',
      formation:Formations.n34LinesLH,
      from:'Left-Hand Three Quarter Lines',
      paths:[
          RunRight.skew(-3.0,-1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward_2,

          RunLeft.skew(-3.0,0.0) +
          SwingRight.scale(0.75,0.75) +
          RunRight.changeBeats(2).scale(1.0,0.75).skew(2.0,0.0),

          LeadLeft +
          Forward +
          SwingLeft +
          CounterRotateLeft_2_0.changehands(1).skew(0.0,-1.0),

          LeadLeft +
          Forward +
          SwingLeft.scale(0.5,1.0) +
          CounterRotateLeft_0_2.changehands(1).skew(0.0,1.0)
      ]),

    AnimatedCall('Interlocked Counter',
      formation:Formations.n34Tag,
      from:'Right-Hand Three Quarter Tag',
      paths:[
          RunRight.changeBeats(5.5).skew(-3.0,-2.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5),

          RunLeft.changeBeats(5.5).skew(-3.0,0.5) +
          SwingRight.scale(0.75,0.75) +
          RunRight.changeBeats(1.5).scale(1.0,0.75).skew(2.0,-0.5),

          QuarterLeft.changeBeats(3).skew(-0.5,-1.0) +
          QuarterLeft.changehands(2).skew(0.0,-0.5) +
          QuarterLeft.changehands(2).skew(-0.5,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          LeadLeft.changehands(1).scale(1.0,0.5) +
          LeadLeft.changehands(1).scale(0.5,1.0) +
          Forward_2 +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5)
      ]),
  ];

