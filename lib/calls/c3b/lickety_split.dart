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

  final List<AnimatedCall> LicketySplit = [ 

    AnimatedCall('Lickety Split',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          Forward_3,

          CounterRotateRight_0_m2.changeBeats(3).skew(-1.0,0.0),

          CounterRotateRight_2_0.changeBeats(3).skew(1.0,0.0),

          RunRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Lickety Split',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.skew(-1.0,0.0),

          CounterRotateLeft_2_0.changeBeats(3).skew(1.0,0.0),

          CounterRotateLeft_0_2.changeBeats(3).skew(-1.0,0.0),

          Forward_3
      ]),

    AnimatedCall('Lickety Split',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          RunRight,

          CounterRotateRight_2_0.changeBeats(3).changehands(2),

          CounterRotateRight_0_m2.changeBeats(3).changehands(2),

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Lickety Split',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          Forward_2.changeBeats(3),

          CounterRotateLeft_0_2.changeBeats(3).changehands(1),

          CounterRotateLeft_2_0.changeBeats(3).changehands(1),

          RunLeft
      ]),

    AnimatedCall('Lickety Split',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:180),
  ]),
      from:'T-Bones 1',
      paths:[
          RunRight.scale(0.5,1.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(2),

          CounterRotateRight_2_0.changeBeats(3).changehands(2),

          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Lickety Split',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
  ]),
      from:'T-Bones 2',
      paths:[
          RunLeft.scale(0.5,1.0),

          CounterRotateLeft_0_2.changeBeats(3),

          CounterRotateLeft_2_0.changeBeats(3),

          Forward_2.changeBeats(3)
      ]),
  ];

