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

  final List<AnimatedCall> InterlockedRamble = [

    AnimatedCall('Interlocked Ramble',
      formation:Formation('3/4 Lines RH'),
      from:'Right-Hand 3/4 Lines',parts:'4',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          UmTurnLeft.skew(-1.0,2.0) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          LeadRight.changeBeats(2) +
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          LeadRight.changeBeats(2) +
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Interlocked Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
  ]),
      from:'Left-Hand 3/4 Lines',parts:'4',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          UmTurnLeft.skew(-1.0,2.0) +
          Forward +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          LeadLeft.changeBeats(2) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          LeadLeft.changeBeats(2) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5)
      ]),
  ];

