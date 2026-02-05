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

  final List<AnimatedCall> SomethingNew = [

    AnimatedCall('Something New',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
  ]),
      from:'Right-Hand Columns',
      numbers: ['1','8','2','7','3','6','4','5'],
      paths:[
        ExtendLeft.changeBeats(3).scale(3.0,2.0),

        RunRight,

        UmTurnRight.changeBeats(3).skew(1.0,0.0),

        Forward +
            UmTurnRight.changeBeats(2).skew(1.0,0.0),
      ]),

    AnimatedCall('Something New',
        formation: Formation('Column LH GBGB'),
        from: 'Left-Hand Columns',
        paths: [
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          UmTurnLeft.changeBeats(3).skew(1.0,0.0),

          Forward +
              UmTurnLeft.changeBeats(2).skew(1.0,0.0),

          RunLeft,
        ]),

    AnimatedCall('Magic Something New',
        formation: Formation('Magic Column RH'),
        from: 'Magic Column RH Centers',
        paths: [
          Forward.changeBeats(2) +
              ExtendLeft.changeBeats(3).scale(2.0,4.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
              UmTurnLeft.changeBeats(3).skew(1.0,0.0),

          UmTurnLeft.changeBeats(3).skew(1.0,0.0),

          RunLeft,
        ]),

    AnimatedCall('Magic Something New',
        formation: Formation('Magic Column LH'),
        from: 'Magic Column LH Centers',
        paths: [
          RunRight,

          UmTurnRight.changeBeats(3).skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
              UmTurnRight.changeBeats(3).skew(1.0,0.0),

          Forward.changeBeats(2) +
              ExtendRight.changeBeats(3).scale(2.0,4.0),
        ]),

  ];
