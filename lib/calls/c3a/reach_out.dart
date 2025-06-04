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

  final List<AnimatedCall> ReachOut = [

    AnimatedCall('Reach Out',
      formation:Formation('Box RH Compact'),
      from:'Right-Hand Box',
      paths:[
        Forward_1p5 + RunLeft,
        RunRight + Forward_1p5,
      ]),

    AnimatedCall('Reach Out',
      formation:Formation('Box LH Compact'),
      from:'Left-Hand Box',
      paths:[
          RunLeft +
          Forward_1p5,

          Forward_1p5 +
          RunRight
      ]),

    AnimatedCall('Reach Out',from: 'T-Bone Box 1',
        formation: Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
    ]),
        paths: [
          Forward + RunLeft,
          RunLeft + Forward,
        ]),

    AnimatedCall('Reach Out',from: 'T-Bone Box 2',
        formation: Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        ]),
        paths: [
          Forward + RunRight,
          RunRight + Forward,
        ]),

    AnimatedCall('Reach Out',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          Forward_2 +
          RunLeft.scale(1.0,0.25),

          RunRight +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          RunLeft.scale(1.0,0.25),

          RunRight +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Reach Out',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          RunLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          RunRight.scale(1.0,0.25),

          RunLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
          RunRight.scale(1.0,0.25)
      ]),

    AnimatedCall('Reach Out',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_2 +
          FlipLeft.scale(1.0,0.25),

          Forward_2 +
          FlipRight.scale(1.0,0.25),

          FlipLeft +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          RunRight +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Reach Out',
        formation:Formation('Two-Faced Lines LH'),
        from:'Left-Hand Two-Faced Lines',
        paths:[
          FlipLeft +
              ExtendLeft.changeBeats(2).scale(2.0,0.5),

          RunRight +
              ExtendRight.changeBeats(2).scale(2.0,0.5),

          Forward_2 +
              FlipLeft.scale(1.0,0.25),

          Forward_2 +
              FlipRight.scale(1.0,0.25),

        ]),

    AnimatedCall('Reach Out',
        formation:Formation('Double Pass Thru'),
        from:'Double Pass Thru',
        paths:[
          Forward + FlipLeft,

          Forward + FlipRight,

          RunRight + Forward.changeBeats(2),

          FlipLeft + Forward.changeBeats(2),
        ]),

    AnimatedCall('Reach Out',
        formation:Formation('Completed Double Pass Thru'),
        from:'Completed Double Pass Thru',
        paths:[
          FlipLeft + Forward.changeBeats(2),

          RunRight + Forward.changeBeats(2),

          Forward + FlipRight,

          Forward + FlipLeft,
        ]),

    AnimatedCall('Reach Out',
      formation:Formation('T-Bone DLDL'),
      from:'T-Bones',
      paths:[
          RunLeft +
          Forward,

          Forward +
          FlipLeft.scale(1.0,0.5),

          RunLeft +
          Forward,

          Forward +
          FlipLeft.scale(1.0,0.5)
      ]),
  ];

