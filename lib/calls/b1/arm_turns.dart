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

  final List<AnimatedCall> ArmTurns = [

    AnimatedCall('Turn Partner by the Right',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
  ]),
      group:' ',
      paths:[
          ExtendLeft.scale(1.0,0.75) +
          SwingRight.changeBeats(4).scale(0.75,0.75),

          ExtendLeft.scale(1.0,0.75) +
          SwingRight.changeBeats(4).scale(0.75,0.75),

          ExtendLeft.scale(1.0,0.75) +
          SwingRight.changeBeats(4).scale(0.75,0.75),

          ExtendLeft.scale(1.0,0.75) +
          SwingRight.changeBeats(4).scale(0.75,0.75)
      ]),

    AnimatedCall('Turn Partner by the Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
  ]),
      group:' ',
      paths:[
          ExtendRight.scale(1.0,0.75) +
          SwingLeft.changeBeats(4).scale(0.75,0.75),

          ExtendRight.scale(1.0,0.75) +
          SwingLeft.changeBeats(4).scale(0.75,0.75),

          ExtendRight.scale(1.0,0.75) +
          SwingLeft.changeBeats(4).scale(0.75,0.75),

          ExtendRight.scale(1.0,0.75) +
          SwingLeft.changeBeats(4).scale(0.75,0.75)
      ]),

    AnimatedCall('Left Arm Turn 3/4',
      formation:Formation('Ocean Waves LH BGBG'),
      group:' ',
      paths:[
          CastLeft,

          CastLeft,

          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Centers Arm Turn 3/4',
      formation:Formation('Ocean Waves LH BGGB'),
      group:' ',
      paths:[
          Path(),

          CastRight,

          CastRight,

          Path()
      ]),
  ];

