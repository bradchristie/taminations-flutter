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

  final List<AnimatedCall> TBoneFormation = [

    AnimatedCall('Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]),
      group:'(T-Bone)',
      paths:[
          RunRight.changeBeats(5),

          RunLeft.changeBeats(5),

          Forward_2.changeBeats(5),

          RunRight.changeBeats(5).scale(2.0,3.0)
      ]),

    AnimatedCall('Split Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]),
      group:'(T-Bone)',
      paths:[
          RunRight,

          RunRight,

          FlipRight,

          RunRight
      ]),

    AnimatedCall('Scoot Back',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:270),
  ]),
      group:'(T-Bone)',
      paths:[
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          RunLeft.changeBeats(5).scale(0.5,1.0),

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          RunLeft.changeBeats(5)
      ]),

    AnimatedCall('Follow Your Neighbor',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
  ]),
      from:'Left-Handed T-Bone',group:'(T-Bone)',
      paths:[
          LeadRight.changeBeats(2.5).scale(2.5,1.0) +
          RunRight.scale(0.5,0.25),

          ExtendLeft.scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          LeadRight.changeBeats(2.5).scale(2.5,1.0) +
          RunRight.scale(0.5,0.25),

          ExtendLeft.scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25)
      ]),
  ];

