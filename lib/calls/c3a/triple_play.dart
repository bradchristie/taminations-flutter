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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> TriplePlay = [ 

    AnimatedCall('Triple Play',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0) +
          Forward_5.changeBeats(4) +
          LeadRight,

          Forward +
          SwingRight.scale(0.5,1.0) +
          Forward +
          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          Forward +
          SwingRight.scale(0.5,1.0) +
          Forward +
          HingeRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,1.5),

          Forward +
          SwingRight.scale(0.5,1.0) +
          RunRight.changeBeats(4).scale(1.0,2.0) +
          LeadRight
      ]),

    AnimatedCall('Triple Play',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          Forward +
          SwingLeft.scale(0.5,1.0) +
          RunLeft.changeBeats(4).scale(1.0,2.0) +
          LeadLeft,

          Forward +
          SwingLeft.scale(0.5,1.0) +
          Forward +
          HingeLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,1.5),

          Forward +
          SwingLeft.scale(0.5,1.0) +
          Forward +
          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          RunLeft.changeBeats(4).scale(1.0,2.0) +
          Forward_5.changeBeats(4) +
          LeadLeft
      ]),

    AnimatedCall('Magic Column Triple Play',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns Right-Hand Centers',
      paths:[
          Forward.changeBeats(2) +
          SwingLeft.scale(0.5,1.0) +
          RunLeft.changeBeats(4).scale(1.0,2.0) +
          LeadLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft.scale(0.5,1.0) +
          Forward.changeBeats(2) +
          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          Forward.changeBeats(2) +
          SwingRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          HingeLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,1.5),

          RunLeft.changeBeats(4).scale(1.0,2.0) +
          Forward_5.changeBeats(4) +
          LeadLeft
      ]),

    AnimatedCall('Magic Column Triple Play',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Magic Columns Left-Hand Centers',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0) +
          Forward_5.changeBeats(4) +
          LeadRight,

          Forward.changeBeats(2) +
          SwingLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          HingeRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight.scale(0.5,1.0) +
          Forward.changeBeats(2) +
          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          Forward.changeBeats(2) +
          SwingRight.scale(0.5,1.0) +
          RunRight.changeBeats(4).scale(1.0,2.0) +
          LeadRight
      ]),
  ];

