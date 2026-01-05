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

  final List<AnimatedCall> InterlockedRally = [

    AnimatedCall('Interlocked Rally',
      formation:Formation('Quarter Lines RH'),
      from:'Right-Hand Quarter Lines',
      paths:[
          ExtendRight.changeBeats(4).scale(1.0,4.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward_2 +
          RunLeft.changeBeats(3).scale(0.5,0.25),

          Stand.changeBeats(4) +
          Forward +
          RunLeft.scale(0.5,0.25).skew(-1.0,0.0),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Interlocked Rally',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      from:'Right-Hand 3/4 Lines',
      paths:[
          QuarterRight.skew(-0.5,-1.0) +
          Forward_2 +
          LeadRight.changeBeats(3.5).scale(1.5,2.5),

          QuarterRight.skew(-0.5,-1.0) +
          LeadRight.changeBeats(3).scale(1.5,2.5) +
          RunRight.changeBeats(2.5).scale(0.5,0.5),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          Stand.changeBeats(4) +
          Forward +
          RunLeft.scale(0.5,0.25).skew(-1.0,0.0)
      ]),
  ];

