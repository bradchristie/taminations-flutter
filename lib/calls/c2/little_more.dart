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

  final List<AnimatedCall> LittleMore = [

    AnimatedCall('Little More',
      formation:Formation('Quarter Tag'),
      from:'Right-Hand Quarter Tag',fractions:'6',
      paths:[
          ExtendRight.changeBeats(6).scale(1.0,4.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward_3,

          FlipRight.changeBeats(6).skew(2.0,0.0) +
          Forward_4.changeBeats(3),

          Forward_2.changeBeats(6) +
          RunLeft
      ]),

    AnimatedCall('Little More',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',fractions:'6',
      paths:[
          ExtendRight.changeBeats(6).scale(1.0,4.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward_3,

          FlipLeft.changeBeats(6).skew(2.0,0.0) +
          Forward_4.changeBeats(3),

          Forward_2.changeBeats(6) +
          RunRight
      ]),

    AnimatedCall('Little More',
      formation:Formation('3/4 Tag'),
      from:'Right-Hand 3/4 Tag',fractions:'6',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          Forward_4,

          FlipRight.changeBeats(5).scale(2.0,2.0) +
          Forward.changeBeats(2),

          FlipRight.changeBeats(7).skew(2.0,0.0) +
          Forward_4.changeBeats(3),

          Forward_2.changeBeats(7) +
          RunLeft
      ]),

    AnimatedCall('Little More',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
  ]),
      from:'Left-Hand 3/4 Tag',fractions:'6',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          Forward_4,

          FlipRight.changeBeats(5).scale(2.0,2.0) +
          Forward.changeBeats(2),

          FlipLeft.changeBeats(7).skew(2.0,0.0) +
          Forward_4.changeBeats(3),

          Forward_2.changeBeats(7) +
          RunRight
      ]),

    AnimatedCall('Little More',
      formation:Formation('Mixed Quarter Tag #1'),
      from:'Right-Hand Quarter Waves',fractions:'6',
      paths:[
          LeadRight.scale(0.5,1.0) +
          LeadLeft.changeBeats(3.5).scale(3.0,0.5),

          LeadRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3.5).scale(3.0,1.5),

          FlipRight.changeBeats(5).skew(2.0,0.0) +
          Forward_4.changeBeats(3),

          Forward_2.changeBeats(5) +
          RunLeft
      ]),

    AnimatedCall('Little More',
      formation:Formation('Mixed Quarter Tag #6'),
      from:'Left-Hand Quarter Waves',fractions:'6',
      paths:[
          FlipRight.changeBeats(2).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(4).scale(3.0,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipLeft.changeBeats(6).skew(2.0,0.0) +
          Forward_4.changeBeats(3),

          Forward_2.changeBeats(6) +
          RunRight
      ]),

    AnimatedCall('Scoot and Little More',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',fractions:'5;6',
      paths:[
          ExtendLeft.scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          RunRight.skew(-2.0,0.0) +
          Forward_3,

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.scale(1.5,1.5) +
          RunRight.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0),

          ExtendRight.scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          Forward_2.changeBeats(6) +
          RunLeft.changeBeats(4),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.5,0.5) +
          FlipRight.changeBeats(6).skew(2.0,0.0) +
          Forward_4
      ]),

    AnimatedCall('Scoot and Little More',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',fractions:'5;6',
      paths:[
          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.scale(1.5,1.5) +
          RunLeft.changeBeats(6).scale(1.0,2.0).skew(-1.0,0.0),

          ExtendRight.scale(1.5,1.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          RunLeft.skew(-2.0,0.0) +
          Forward_3,

          ExtendLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          Forward_2.changeBeats(6) +
          RunRight.changeBeats(4),

          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.scale(1.5,0.5) +
          FlipLeft.changeBeats(6).skew(2.0,0.0) +
          Forward_4
      ]),
  ];

