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

  final List<AnimatedCall> ZAxle = [

    AnimatedCall('"Z" Axle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]),
      from:'Right-Hand Outfacing Z',parts:'4;3',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          SwingLeft +
          SwingRight,

          Stand.changeBeats(4).changehands(2) +
          SwingLeft +
          Stand.changeBeats(3)
      ]),

    AnimatedCall('"Z" Axle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
  ]),
      from:'Left-Hand Outfacing Z',parts:'4;3',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          SwingRight +
          SwingLeft,

          Stand.changeBeats(4).changehands(1) +
          SwingRight +
          Stand.changeBeats(3)
      ]),

    AnimatedCall('"Z" Axle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      from:'Right-Hand Tandem Z',parts:'4;3',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          SwingRight +
          SwingLeft,

          Stand.changeBeats(4).changehands(2) +
          FlipLeft +
          Stand.changeBeats(3)
      ]),

    AnimatedCall('"Z" Axle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Left-Hand Tandem Z',parts:'4;3',
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          FlipLeft +
          SwingRight,

          Stand.changeBeats(4).changehands(1) +
          RunRight +
          Stand.changeBeats(3)
      ]),

    AnimatedCall('Pass "Z" Axle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
  ]),
      from:'Right-Hand Infacing Z',parts:'2;4;3',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          Stand.changeBeats(4).changehands(1) +
          SwingRight +
          Stand.changeBeats(3),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('Pass "Z" Axle',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Left-Hand Infacing Z',parts:'2;4;3',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          Stand.changeBeats(4).changehands(1) +
          SwingLeft +
          Stand.changeBeats(3),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          SwingLeft +
          SwingRight
      ]),
  ];

