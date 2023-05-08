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
import '../../moves.dart';

  final List<AnimatedCall> InterlockedPlenty = [

    AnimatedCall('Interlocked Plenty',
      formation:Formation('Quarter Lines RH'),
      from:'Right-Hand Quarter Line',fractions:'6;6',
      paths:[
          ExtendRight.changeBeats(6).scale(1.0,4.0) +
          Forward.changeBeats(3).scale(3.5,1.0) +
          RunLeft +
          Forward.changeBeats(2).scale(1.5,1.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward_3 +
          RunLeft.skew(-0.5,0.0) +
          Forward_3 +
          RunLeft.skew(-1.5,0.0),

          Forward_2.changeBeats(6) +
          RunLeft.skew(-0.5,0.0) +
          Forward_3 +
          RunLeft.changeBeats(5).scale(1.0,2.0).skew(1.5,0.0),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(2.0,0.0) +
          Forward.changeBeats(3).scale(3.5,1.0) +
          RunLeft +
          Forward_3 +
          RunLeft.skew(1.5,0.0)
      ]),

    AnimatedCall('Interlocked Plenty',
      formation:Formation('Quarter Lines LH'),
      from:'Left-Hand Quarter Line',fractions:'6;7',
      paths:[
          ExtendRight.changeBeats(6).scale(1.0,4.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.75) +
          Forward_2,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward_4 +
          FlipLeft.scale(1.0,0.75) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunLeft.skew(-2.0,0.0),

          Stand.changeBeats(4) +
          Forward_2 +
          RunRight.scale(1.0,1.25) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.changeBeats(5).scale(1.0,2.0).skew(1.0,0.0),

          RunLeft.changeBeats(6).scale(1.0,2.0).skew(2.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          RunRight.scale(1.0,1.25) +
          ExtendLeft.changeBeats(2).scale(3.0,1.0) +
          RunRight.scale(1.0,1.5).skew(2.0,0.0)
      ]),

    AnimatedCall('Interlocked Plenty',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
  ]),
      from:'Right-Hand 3/4 Line',fractions:'6;7',
      paths:[
          FlipRight.skew(-2.0,0.0) +
          Forward_3 +
          RunRight.scale(1.0,1.25) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.skew(-2.0,0.0),

          FlipRight.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          RunRight.scale(1.0,1.25) +
          Forward_2,

          Stand.changeBeats(4) +
          Forward_2 +
          FlipLeft.scale(1.0,0.75) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunLeft.changeBeats(5).scale(1.0,2.0).skew(1.0,0.0),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(2.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.0) +
          RunLeft.scale(1.0,1.5).skew(2.0,0.0)
      ]),

    AnimatedCall('Interlocked Plenty',
      formation:Formation('3/4 Lines LH'),
      from:'Left-Hand 3/4 Line',fractions:'6;6',
      paths:[
          RunRight.skew(-2.0,0.0) +
          Forward_3 +
          RunRight +
          Forward_4.changeBeats(3) +
          RunRight.skew(-2.0,0.0),

          RunRight.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_2,

          Stand.changeBeats(4) +
          Forward_2 +
          RunRight +
          Forward_4.changeBeats(3) +
          RunRight.changeBeats(5).scale(1.0,2.0).skew(1.0,0.0),

          RunLeft.changeBeats(6).scale(1.0,2.0).skew(2.0,0.0) +
          Forward_4.changeBeats(3) +
          RunRight +
          Forward_3.changeBeats(2) +
          RunRight.skew(2.0,0.0)
      ]),

    AnimatedCall('Interlocked Scoot and Plenty',
      formation:Formation('Quarter Lines RH'),
      from:'Right-Hand Quarter Line',fractions:'8;6;7',
      paths:[
          Forward.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,1.0) +
          FlipRight.skew(-2.0,0.0) +
          Forward_3 +
          RunRight.scale(1.0,1.25) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.skew(-2.0,0.0),

          Forward.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,1.0) +
          FlipRight.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          RunRight.scale(1.0,1.25) +
          Forward_2,

          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,2.0) +
          RunRight.changeBeats(6).scale(1.0,2.0).skew(2.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.0) +
          RunLeft.scale(1.0,1.5).skew(2.0,0.0),

          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,2.0) +
          Stand.changeBeats(4) +
          Forward_2 +
          FlipLeft.scale(1.0,0.75) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunLeft.changeBeats(5).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Interlocked Scoot and Plenty',
      formation:Formation('Quarter Lines LH'),
      from:'Left-Hand Quarter Line',fractions:'8;6;6',
      paths:[
          Forward.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,1.0) +
          FlipLeft.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.75) +
          Forward_2,

          Forward.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,1.0) +
          FlipLeft.skew(-2.0,0.0) +
          Forward_3 +
          FlipLeft.scale(1.0,0.75) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunLeft.skew(-2.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,2.0) +
          RunLeft.changeBeats(6).scale(1.0,2.0).skew(2.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          RunRight.scale(1.0,1.25) +
          ExtendLeft.changeBeats(2).scale(3.0,1.0) +
          RunRight.scale(1.0,1.5).skew(2.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,2.0) +
          Stand.changeBeats(4) +
          Forward_2 +
          RunRight.scale(1.0,1.25) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.changeBeats(5).scale(1.0,2.0).skew(1.0,0.0)
      ]),
  ];

