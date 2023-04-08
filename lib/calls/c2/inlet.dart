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

  final List<AnimatedCall> Inlet = [ 

    AnimatedCall('Inlet',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          RunRight.changeBeats(4).changehands(6).skew(2.0,0.0),

          RunRight.changeBeats(4).changehands(6).skew(-2.0,0.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Inlet',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(4).skew(1.0,2.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunLeft.changeBeats(4).changehands(5).skew(-2.0,0.0),

          RunLeft.changeBeats(4).changehands(5).skew(2.0,0.0)
      ]),

    AnimatedCall('Inlet',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines',
      paths:[
          UmTurnRight.changeBeats(4).skew(2.0,-2.0),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 2, x2: 2, y2: 2, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Outlet',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,0.0),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 4, x2: 1, y2: 4, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )),

          RunRight.changeBeats(4).changehands(6).skew(2.0,0.0),

          RunRight.changeBeats(4).changehands(6).skew(-2.0,0.0)
      ]),

    AnimatedCall('Outlet',
      formation:Formations.QuarterLinesRH,
      from:'Quarter Lines',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,0.0),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 4, x2: 1, y2: 4, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 2, cy2: 2, x2: 2, y2: 2, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )),

          UmTurnRight.changeBeats(4).skew(2.0,-2.0)
      ]),

    AnimatedCall('Outlet',
      formation:Formations.MixedQuarterTag1,
      from:'Mixed Quarter Tag 1',
      paths:[
          UmTurnRight.changeBeats(4).changehands(6).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(6).skew(-1.0,-2.0),

          RunRight.changeBeats(4).changehands(6).skew(2.0,0.0),

          RunRight.changeBeats(4).changehands(6).skew(-2.0,0.0)
      ]),

    AnimatedCall('Outlet',
      formation:Formations.MixedQuarterTag3,
      from:'Mixed Quarter Tag 2',
      paths:[
          UmTurnRight.changeBeats(4).changehands(6).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(6).skew(-1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(2.0,-2.0),

      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 2, cy2: 2, x2: 2, y2: 2, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  ))
      ]),

    AnimatedCall('Outlet',
      formation:Formations.MixedQuarterTag6,
      from:'Mixed Quarter Tag 3',
      paths:[
          RunLeft.changeBeats(4).changehands(5).skew(-1.0,2.0),

          UmTurnLeft.changeBeats(4).changehands(5).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(5).skew(2.0,0.0),

          RunLeft.changeBeats(4).changehands(5).skew(-2.0,0.0)
      ]),
  ];

