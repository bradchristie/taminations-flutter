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

  final List<AnimatedCall> CrossBack = [

    AnimatedCall('Cross Back',
      formation:Formation('Box RH Boys Lead'),
      from:'Right-Hand Box',
      paths:[
          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Cross Back',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          UmTurnLeft,

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Cross Back',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          UmTurnRight
      ]),

    AnimatedCall('Cross Back',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          UmTurnLeft,

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward,

          UmTurnLeft,

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,2.0) +
          Forward
      ]),

    AnimatedCall('Cross Back',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.25,2.0) +
          Forward.scale(0.75,1.0),

          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.25,2.0) +
          Forward.scale(0.75,1.0)
      ]),

    AnimatedCall('Cross Back',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.25,2.0) +
          Forward.scale(0.75,1.0),

          UmTurnLeft,

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.25,2.0) +
          Forward.scale(0.75,1.0),

          UmTurnLeft
      ]),

    AnimatedCall('All 8 Cross Back',
      formation:Formation('Static MiniWaves RH'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward_3,

          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward_3,

          UmTurnRight
      ]),

    AnimatedCall('As Couples Cross Back',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,4.0) +
          Forward_2.changehands(Hands.RIGHT),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,4.0) +
          Forward_2.changehands(Hands.LEFT),

          BelleReverseWheel,

          BeauReverseWheel
      ]),

    AnimatedCall('Tandem Cross Back',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          Pivotbackwardright.changeBeats(5),

          Pivotforwardleft.changeBeats(5),

          ExtendRight.changeBeats(1.5).scale(1.0,1.5) +
          ExtendRight.changeBeats(3.5).scale(3.0,0.5),

          ExtendRight.changeBeats(1.5).scale(1.0,1.5) +
          ExtendRight.changeBeats(3.5).scale(3.0,0.5)
      ]),

    AnimatedCall('Grand Cross Back',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          UmTurnRight,

          ExtendRight.changeBeats(2).scale(1.25,2.0) +
          Forward.scale(0.75,1.0),

          ExtendRight.changeBeats(2).scale(1.25,2.0) +
          Forward.scale(0.75,1.0),

          ExtendRight.changeBeats(2).scale(1.25,2.0) +
          Forward.scale(0.75,1.0)
      ]),

    AnimatedCall('Grand Cross Back',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.25,2.0) +
          Forward.scale(0.75,1.0),

          ExtendLeft.changeBeats(2).scale(1.25,2.0) +
          Forward.scale(0.75,1.0),

          ExtendLeft.changeBeats(2).scale(1.25,2.0) +
          Forward.scale(0.75,1.0),

          UmTurnLeft
      ]),
  ];

