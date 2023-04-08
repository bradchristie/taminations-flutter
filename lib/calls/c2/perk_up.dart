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

  final List<AnimatedCall> PerkUp = [

    AnimatedCall('Perk Up',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
  ]),
      from:'Right-Hand Waves',fractions:'4;2',
      paths:[
          Forward_4 +
          LeadRight.changeBeats(2) +
          Forward_4 +
          RunRight.changeBeats(4).scale(2.0,3.0),

          RunLeft.changeBeats(4) +
          Forward_2 +
          HingeRight.changeBeats(2) +
          RunRight +
          SwingRight,

          Forward_4 +
          LeadRight.changeBeats(2) +
          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward_4,

          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward_2 +
          HingeRight.changeBeats(2) +
          Forward_4.changeBeats(3) +
          SwingRight
      ]),

    AnimatedCall('Perk Up',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',fractions:'4;2',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          Forward_2 +
          HingeLeft.changeBeats(2) +
          Forward_4.changeBeats(3) +
          SwingLeft,

          Forward_4 +
          LeadLeft.changeBeats(2) +
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          Forward_4,

          RunRight.changeBeats(4) +
          Forward_2 +
          HingeLeft.changeBeats(2) +
          RunLeft +
          SwingLeft,

          Forward_4 +
          LeadLeft.changeBeats(2) +
          Forward_4 +
          RunLeft.changeBeats(4).scale(2.0,3.0)
      ]),
  ];

