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

  final List<AnimatedCall> FlipYourLid = [

    AnimatedCall('Flip Your Lid',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]),
      from:'Right-Hand Quarter Tag',
      paths:[
          Forward_3 +
          SwingRight.changeBeats(5).scale(1.0,2.0),

          ExtendRight.scale(1.5,0.25) +
          SwingRight.scale(0.75,0.75) +
          RunRight.changeBeats(5).scale(1.0,1.875).skew(1.5,0.0),

          ExtendRight.scale(1.5,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(5).scale(1.5,0.25),

          RunRight.changeBeats(4) +
          RunRight.changeBeats(5).skew(3.0,0.0)
      ]),

    AnimatedCall('Flip Your Lid',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          ExtendLeft.scale(1.5,0.25) +
          SwingLeft.scale(0.75,0.75) +
          RunLeft.changeBeats(5).scale(1.0,1.875).skew(1.5,0.0),

          Forward_3 +
          SwingLeft.changeBeats(5).scale(1.0,2.0),

          ExtendLeft.scale(1.5,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(5).scale(1.5,0.25),

          RunLeft.changeBeats(4) +
          RunLeft.changeBeats(5).skew(3.0,0.0)
      ]),
  ];

