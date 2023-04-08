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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> ExpandTheColumn = [

    AnimatedCall('Expand the Column',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
  ]),
      from:'Right-Hand Columns',
      paths:[
          RunRight +
          Forward,

          RunLeft.changeBeats(4).skew(1.0,0.0),

          RunLeft.changeBeats(4).skew(-1.0,0.0),

          Forward_5.changeBeats(4)
      ]),

    AnimatedCall('Magic Expand the Column',
      formation:Formations.MagicColumnRH,
      from:'Right-Hand Magic Columns',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward_3.changeBeats(2),

          RunLeft.changeBeats(5).skew(1.0,0.0),

          RunLeft.changeBeats(5).skew(-1.0,0.0),

          RunLeft.changeBeats(3) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),
  ];

