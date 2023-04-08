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

  final List<AnimatedCall> SixTwoAceyDeucey = [

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.0),

          Forward_4,

          SwingLeft,

          LeadRight.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,1.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0),

          SwingRight,

          Forward_4
      ]),

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Point-to-Point Diamonds',
      paths:[
          ExtendLeft.changeBeats(2).scale(3.0,0.5) +
          ExtendRight.changeBeats(2).scale(3.0,0.5),

          SwingLeft.scale(0.5,1.0),

          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formations.DiamondsLHPTPGirlPoints,
      from:'Left-Hand Point-to-Point Diamonds',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,1.0),

          SwingRight.scale(0.5,1.0),

          ExtendRight.changeBeats(2).scale(3.0,0.5) +
          ExtendLeft.changeBeats(2).scale(3.0,0.5),

          LeadLeft.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formations.HourglassRHBP,
      from:'Hourglass',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          Forward_4,

          SwingRight
      ]),

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formations.HourglassLHBP,
      from:'Left-Hand Hourglass',
      paths:[
          Forward_4,

          LeadLeft.changeBeats(4).scale(3.0,1.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0),

          SwingLeft
      ]),

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Wave and Mini-Waves, Right-Handed',
      paths:[
          FlipRight,

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          SwingLeft
      ]),

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]),
      from:'Wave and Mini-Waves, Left-Handed',
      paths:[
          ExtendRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          FlipLeft,

          SwingRight
      ]),

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]),
      from:'Two-Faced Line and Mini-Waves, Right-Handed',noDisplay: true,
      paths:[
          FlipRight,

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          SwingRight
      ]),

    AnimatedCall('Six-Two Acey Deucey',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Two-Faced Line and Mini-Waves, Left-Handed',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          FlipLeft,

          SwingLeft
      ]),
  ];

