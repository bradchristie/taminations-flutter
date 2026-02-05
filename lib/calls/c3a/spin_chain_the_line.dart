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

  final List<AnimatedCall> SpinChainTheLine = [

    AnimatedCall('Spin Chain the Line',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,y:3.5,x:0,angle:0),
        Dancer.fromData(gender:Gender.GIRL,y:2.5,x:0,angle:180),
        Dancer.fromData(gender:Gender.GIRL,y:1.5,x:0,angle:0),
        Dancer.fromData(gender:Gender.BOY,y:.5,x:0,angle:180),
  ]),
      from:'Right-Hand Tidal Wave',
      paths:[
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          DodgeRight.changeBeats(1).scale(1.0,0.25) +
          CastRight,

          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          DodgeRight.changeBeats(1).scale(1.0,0.25) +
          CastRight,

          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Spin Chain the Line',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,y:3.5,x:0,angle:180),
          Dancer.fromData(gender:Gender.GIRL,y:2.5,x:0,angle:0),
          Dancer.fromData(gender:Gender.GIRL,y:1.5,x:0,angle:180),
          Dancer.fromData(gender:Gender.BOY,y:.5,x:0,angle:0),
        ]),
        from:'Left-Hand Tidal Wave',
        paths:[
          SwingLeft.scale(0.5,0.5) +
              SwingRight.scale(0.5,0.5) +
              LeadRight.changeBeats(3).scale(3.0,0.5),

          SwingLeft.scale(0.5,0.5) +
              Stand.changeBeats(3) +
              DodgeLeft.changeBeats(1).scale(1.0,0.25) +
              CastLeft,

          SwingLeft.scale(0.5,0.5) +
              SwingRight.scale(0.5,0.5) +
              DodgeLeft.changeBeats(1).scale(1.0,0.25) +
              CastLeft,

          SwingLeft.scale(0.5,0.5) +
              SwingRight.scale(0.5,0.5) +
              LeadRight.changeBeats(3).scale(3.0,0.5)
        ]),

  ];
