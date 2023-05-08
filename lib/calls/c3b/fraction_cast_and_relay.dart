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

  final List<AnimatedCall> FractionCastAndRelay = [

    AnimatedCall('1/4 Cast and Relay',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
  ]),
      from:'Right-Hand Waves',parts:'1.5;4.5;3',
      paths:[
          HingeRight +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          HingeRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          HingeRight +
          CastLeft +
          HingeRight.changeBeats(3) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          HingeRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          HingeRight.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('1/4 Cast and Relay',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',parts:'1.5;4.5;3',
      paths:[
          HingeLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          HingeLeft.changeBeats(3) +
          CastRight,

          HingeLeft +
          CastRight +
          HingeLeft.changeBeats(3) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          HingeLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          CastRight,

          HingeLeft +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('1/2 Cast and Relay',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'3;4.5;3',
      paths:[
          SwingRight +
          CastLeft +
          SwingRight +
          CastLeft,

          SwingRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          SwingRight +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('1/2 Cast and Relay',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'3;4.5;3',
      paths:[
          SwingLeft +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          CastRight,

          SwingLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          SwingLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          SwingLeft +
          CastRight +
          SwingLeft +
          CastRight
      ]),

    AnimatedCall('3/4 Cast and Relay',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'4.5;4.5;4.5',
      paths:[
          CastRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight.changeBeats(4.5) +
          CastLeft,

          CastRight +
          CastLeft +
          SwingRight.changeBeats(4.5) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          CastRight +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          CastRight +
          CastLeft,

          CastRight +
          CastLeft +
          CastRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('3/4 Cast and Relay',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'4.5;4.5;4.5',
      paths:[
          CastLeft +
          CastRight +
          CastLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          CastLeft +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          CastLeft +
          CastRight,

          CastLeft +
          CastRight +
          SwingLeft.changeBeats(4.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          CastLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft.changeBeats(4.5) +
          CastRight
      ]),
  ];

