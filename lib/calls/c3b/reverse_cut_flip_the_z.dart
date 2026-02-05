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

final List<AnimatedCall> ReverseCutFlipTheZ = [

  AnimatedCall('Reverse Cut the "Z"',
      from: 'Right-Hand Z 1',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
      ]),
      paths: [
        Stand.changeBeats(3) +
            Forward_3,

        SwingRight +
            DodgeLeft,

      ]),

  AnimatedCall('Reverse Cut the "Z"',
      from: 'Right-Hand Z 2',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
      ]),
      paths: [
        Stand.changeBeats(3) +
            Forward_3,

        SwingRight +
            DodgeLeft,

      ]),

  AnimatedCall('Reverse Cut the "Z"',
      from: 'Right-Hand Z 3',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
      ]),
      paths: [
        RunLeft.changeBeats(6).skew(-3, 0),

        SwingRight +
            DodgeLeft,

      ]),

  AnimatedCall('Reverse Cut the "Z"',
      from: 'Right-Hand Z 4',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
      ]),
      paths: [
        RunRight.changeBeats(6).skew(-3, 0),

        SwingRight +
            DodgeLeft,

      ]),

  AnimatedCall('Reverse Cut the "Z"',
      from: 'Left-Hand Z 1',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
      ]),
      paths: [
        Stand.changeBeats(3) +
            Forward_3,

        SwingLeft +
            DodgeRight,

      ]),

  AnimatedCall('Reverse Cut the "Z"',
      from: 'Left-Hand Z 2',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
      ]),
      paths: [
        Stand.changeBeats(3) +
            Forward_3,

        SwingLeft +
            DodgeRight,

      ]),

  AnimatedCall('Reverse Cut the "Z"',
      from: 'Left-Hand Z 3',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
      ]),
      paths: [
        RunRight.changeBeats(6).skew(-3, 0),

        SwingLeft +
            DodgeRight,

      ]),

  AnimatedCall('Reverse Cut the "Z"',
      from: 'Left-Hand Z 4',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
      ]),
      paths: [
        RunLeft.changeBeats(6).skew(-3, 0),

        SwingLeft +
            DodgeRight,

      ]),



  AnimatedCall('Reverse Flip the "Z"',
      from: 'Right-Hand Z 1',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
      ]),
      paths: [
        Forward_3,

        FlipLeft

      ]),

  AnimatedCall('Reverse Flip the "Z"',
      from: 'Right-Hand Z 2',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
      ]),
      paths: [
        Forward_3,

        FlipLeft

      ]),

  AnimatedCall('Reverse Flip the "Z"',
      from: 'Right-Hand Z 3',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
      ]),
      paths: [
        RunLeft.changeBeats(6).skew(-3, 0),

        FlipLeft

      ]),

  AnimatedCall('Reverse Flip the "Z"',
      from: 'Right-Hand Z 4',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
      ]),
      paths: [
        RunRight.changeBeats(6).skew(-3, 0),

        FlipLeft

      ]),

  AnimatedCall('Reverse Flip the "Z"',
      from: 'Left-Hand Z 1',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
      ]),
      paths: [
        Forward_3,

        FlipRight


      ]),

  AnimatedCall('Reverse Flip the "Z"',
      from: 'Left-Hand Z 2',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
      ]),
      paths: [
        Forward_3,

        FlipRight

      ]),

  AnimatedCall('Reverse Flip the "Z"',
      from: 'Left-Hand Z 3',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
      ]),
      paths: [
        RunRight.changeBeats(6).skew(-3, 0),

        FlipRight

      ]),

  AnimatedCall('Reverse Flip the "Z"',
      from: 'Left-Hand Z 4',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
      ]),
      paths: [
        RunLeft.changeBeats(6).skew(-3, 0),

        FlipRight

      ]),

];
