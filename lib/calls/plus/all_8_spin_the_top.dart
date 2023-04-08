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

  final List<AnimatedCall> All8SpinTheTop = [ 

    AnimatedCall('All 8 Spin the Top',
      formation:Formations.TharLHBoys,
      from:'Wrong Way Thar',parts:'3',difficulty: 1,
      paths:[
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          SwingRight +
          CastLeft,

          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          SwingRight +
          CastLeft
      ]),

    AnimatedCall('All 8 Spin the Top',
      formation:Formations.TharRHBoys,
      from:'Thar',parts:'3',difficulty: 2,
      paths:[
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          SwingLeft +
          CastRight,

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          SwingLeft +
          CastRight
      ]),

    AnimatedCall('All 8 Spin the Top',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
  ]),
      from:'Grand Circle',parts:'5',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward.changeBeats(2) +
          SwingRight +
          CastLeft,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward.changeBeats(2) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('All 8 Left Spin the Top',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
  ]),
      from:'Grand Circle',parts:'5',difficulty: 2,
      paths:[
          Forward.changeBeats(2) +
          SwingLeft +
          CastRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward.changeBeats(2) +
          SwingLeft +
          CastRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),
  ];

