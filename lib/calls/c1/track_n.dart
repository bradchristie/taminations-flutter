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

  final List<AnimatedCall> TrackN = [ 

    AnimatedCall('Track Zero',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
  ]),
      group:' ',
      paths:[
          RunLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          RunRight.scale(1.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          Forward_2.changeBeats(2) +
          RunLeft.scale(0.5,1.0),

          Forward_2 +
          RunRight.scale(1.5,1.0)
      ]),

    AnimatedCall('Track One',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
  ]),
      group:' ',
      paths:[
          RunLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,1.0),

          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_3.changeBeats(2),

          Forward_2.changeBeats(2) +
          RunLeft,

          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(4).scale(2.0,1.0)
      ]),

    AnimatedCall('Track Two',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
  ]),
      group:' ',notForSequencer: true,
      paths:[
          RunLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(4).scale(5.0,1.0),

          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_5.changeBeats(3),

          Forward_2.changeBeats(2) +
          RunLeft.changeBeats(4).skew(-1.0,0.0),

          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(4.5).scale(2.0,2.0) +
          Forward
      ]),

    AnimatedCall('Track Three',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
  ]),
      group:' ',
      paths:[
          RunLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(4).scale(5.0,1.0) +
          Forward,

          RunRight.changeBeats(5).scale(2.0,2.0) +
          ExtendRight.changeBeats(4).scale(6.0,2.0),

          Forward_2.changeBeats(2) +
          RunLeft.changeBeats(4).skew(-1.0,0.0) +
          Forward_2,

          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(4.5).scale(2.0,2.0) +
          Forward_3
      ]),

    AnimatedCall('Track Four',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
  ]),
      group:' ',
      paths:[
          RunLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(4).scale(5.0,1.0) +
          Forward,

          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward +
          ExtendRight.changeBeats(4).scale(5.0,2.0),

          Forward_2.changeBeats(2) +
          RunLeft.changeBeats(4).skew(-1.0,0.0) +
          Forward_3,

          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(4.5).scale(2.0,2.0) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0)
      ]),
  ];

