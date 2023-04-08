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

  final List<AnimatedCall> Turnstyle = [ 

    AnimatedCall('Turnstyle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:270),
  ]),
      from:'Single Double Pass Thru',
      paths:[
          QuarterRight,

          ExtendLeft +
          CastRight
      ]),

    AnimatedCall('Turnstyle',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          QuarterRight.skew(1.0,0.0),

          CastLeft,

          CastLeft,

          QuarterRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Turnstyle',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          QuarterRight.skew(-1.0,0.0),

          CastRight,

          CastRight,

          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Turnstyle',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',
      paths:[
          QuarterRight.skew(0.0,1.0),

          QuarterRight.skew(0.0,-1.0),

          CastRight,

          CastRight
      ]),

    AnimatedCall('Turnstyle',
      formation:Formations.QuarterLinesRH,
      from:'Quarter Lines',
      paths:[
          QuarterRight.changeBeats(6).skew(0.0,1.0),

          QuarterRight.changeBeats(6).skew(0.0,-1.0),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33),

          QuarterLeft.changeBeats(2).changehands(2).skew(0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(2).skew(-0.33,0.33)
      ]),

    AnimatedCall('Turnstyle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
  ]),
      from:'3/4 Lines',
      paths:[
          QuarterLeft.changeBeats(2).changehands(2).skew(0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(2).skew(-0.33,0.33),

          QuarterRight.changeBeats(6).skew(0.0,1.0),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33),

          QuarterRight.changeBeats(6).skew(0.0,-1.0)
      ]),
  ];

