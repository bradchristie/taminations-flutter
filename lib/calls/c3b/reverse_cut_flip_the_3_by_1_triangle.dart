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

final List<AnimatedCall> ReverseCutFlipThe3by1Triangle = [

  AnimatedCall('Reverse Cut the 3 by 1 Triangle',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
      ]),
      from:'Right-Hand Wave Between Mini-Waves',
      paths:[
        RunRight.changeBeats(4).skew(-3, .5),

        ExtendRight.changeBeats(4).scale(3, .5),

        SwingRight.scale(.5, 1) +
            DodgeLeft.scale(1, .25).changeBeats(1),

        SwingRight.scale(.5, 1) +
            DodgeLeft.scale(1, .25).changeBeats(1),

      ]),

  AnimatedCall('Reverse Cut the 3 by 1 Triangle',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
      ]),
      from:'Left-Hand Wave Between Mini-Waves',
      paths:[
        ExtendLeft.changeBeats(4).scale(3, .5),

        RunLeft.changeBeats(4).skew(-3, -.5),

        SwingLeft.scale(.5, 1) +
            DodgeRight.scale(1, .25).changeBeats(1),

        SwingLeft.scale(.5, 1) +
            DodgeRight.scale(1, .25).changeBeats(1),
      ]),

  AnimatedCall('Reverse Flip the 3 by 1 Triangle',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
      ]),
      from:'Right-Hand Wave Between Mini-Waves',
      paths:[
        RunRight.changeBeats(4).skew(-3, .5),

        ExtendRight.changeBeats(4).scale(3, .5),

        FlipLeft.changeBeats(4).scale(1, .25),

        FlipLeft.changeBeats(4).scale(1, .25),

      ]),

  AnimatedCall('Reverse Flip the 3 by 1 Triangle',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
      ]),
      from:'Left-Hand Wave Between Mini-Waves',
      paths:[
        ExtendLeft.changeBeats(4).scale(3, .5),

        RunLeft.changeBeats(4).skew(-3, -.5),

        FlipRight.changeBeats(4).scale(1, .25),

        FlipRight.changeBeats(4).scale(1, .25),
      ]),

];
