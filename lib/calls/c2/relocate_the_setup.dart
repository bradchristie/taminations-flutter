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

  final List<AnimatedCall> RelocateTheSetup = [

    AnimatedCall('Relocate the Diamond',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Twin Diamonds',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          CounterRotateRight_5_m1.changeBeats(4.5),

          CastLeft,

          CounterRotateRight_1_m5.changeBeats(4.5)
      ]),

    AnimatedCall('Relocate the Diamond',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Point to Point Diamonds',
      paths:[
          CounterRotateRight_4_2.changeBeats(4.5).changehands(2),

          CastLeft,

          CounterRotateRight_m2_m4.changeBeats(4.5).changehands(2),

          LeadRight.changeBeats(4.5).scale(5.0,5.0)
      ]),

    AnimatedCall('Relocate the Hourglass',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
  ]),
      from:'Right-Hand Hourglass',
      paths:[
          CounterRotateRight_1_m5.changeBeats(4.5),

          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          CounterRotateRight_5_m1.changeBeats(4.5),

          CastRight
      ]),

    AnimatedCall('Relocate the Hourglass',
      formation:Formations.HourglassFacingRHBox,
      from:'Facing Hourglass',
      paths:[
          CounterRotateRight_1_m5.changeBeats(4.5),

          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          ExtendRight.changeBeats(1.5),

          CounterRotateRight_5_m1.changeBeats(4.5),

          CastLeft
      ]),

    AnimatedCall('Relocate the Setup',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',
      paths:[
          CounterRotateRight_4_2.changeBeats(4.5),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-1.0),

          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          CastLeft
      ]),

    AnimatedCall('Relocate the Setup',
      formation:Formations.TidalWaveRHBGGB,
      from:'Tidal Wave',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.5,3.5),

          LeadLeft.changeBeats(4.5).scale(2.5,2.5),

          LeadRight.changeBeats(4.5).scale(1.5,1.5),

          CastLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Relocate the Setup',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.5,3.5),

          LeadRight.changeBeats(4.5).scale(2.5,2.5),

          LeadRight.changeBeats(4.5).scale(1.5,1.5),

          CastRight.scale(0.5,0.5)
      ]),
  ];

