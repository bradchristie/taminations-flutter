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

  final List<AnimatedCall> SpinTheTop = [

    AnimatedCall('Spin the Top',
      formation:Formation('Wave RH GBBG'),
      from:'Right-Hand Wave',parts:'3',difficulty: 1,
      paths:[
          SwingRight +
          HingeLeft +
          HingeLeft +
          HingeLeft,

          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Spin the Top',
      formation:Formation('Wave LH GBBG'),
      from:'Left-Hand Wave',parts:'3',difficulty: 2,
      paths:[
          SwingLeft +
          HingeRight +
          HingeRight +
          HingeRight,

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Spin the Top',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',parts:'5',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          SwingRight +
          CastLeft,

          Forward_2 +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Spin the Top',
      formation:Formation('Facing Couples Close'),
      from:'Close Couples',parts:'4',difficulty: 2,noDisplay: true,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5)
      ]),

    AnimatedCall('Spin the Top',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Right-Hand Waves',parts:'3',difficulty: 1,
      paths:[
          SwingRight +
          HingeLeft +
          HingeLeft +
          HingeLeft.scale(0.5,1.0),

          SwingRight +
          LeadRight.changeBeats(4.5).scale(1.5,3.0),

          SwingRight +
          LeadRight.changeBeats(4.5).scale(1.5,3.0),

          SwingRight +
          HingeLeft +
          HingeLeft +
          HingeLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Spin the Top',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',parts:'3',difficulty: 2,
      paths:[
          SwingLeft +
          HingeRight +
          HingeRight +
          HingeRight.scale(0.5,1.0),

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(1.5,3.0),

          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(1.5,3.0),

          SwingLeft +
          HingeRight +
          HingeRight +
          HingeRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Spin the Top',
      formation:Formation('Tidal Wave RH GBBG'),
      from:'Right-Hand Tidal Wave',parts:'3',difficulty: 1,
      paths:[
          SwingRight.changehands(6).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          SwingLeft,

          SwingRight.changehands(6).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          SwingRight.changehands(6).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          SwingRight.changehands(6).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          SwingLeft
      ]),

    AnimatedCall('Spin the Top',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'3',difficulty: 2,
      paths:[
          SwingLeft.changehands(5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          SwingRight,

          SwingLeft.changehands(5).scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,1.5),

          SwingLeft.changehands(5).scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,1.5),

          SwingLeft.changehands(5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          SwingRight
      ]),

    AnimatedCall('Spin the Top',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'4',difficulty: 2,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5)
      ]),

    AnimatedCall('Spin the Top',
      formation:Formation('Normal Lines'),
      from:'Lines',parts:'5',difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          SwingLeft,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          SwingLeft,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5)
      ]),

    AnimatedCall('Left Spin the Top',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',parts:'5',difficulty: 3,
      paths:[
          Forward_2 +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          SwingLeft +
          CastRight
      ]),

    AnimatedCall('Left Spin the Top',
      formation:Formation('Facing Couples Close'),
      from:'Close Couples',parts:'4',difficulty: 2,noDisplay: true,
      paths:[
          ExtendRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5),

          ExtendRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Spin the Top',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'4',difficulty: 3,
      paths:[
          ExtendRight.scale(1.0,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5),

          ExtendRight.scale(1.0,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          CastRight.scale(0.5,0.5),

          ExtendRight.scale(1.0,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5),

          ExtendRight.scale(1.0,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          CastRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Spin the Top',
      formation:Formation('Normal Lines'),
      from:'Lines',parts:'5',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,1.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          SwingRight,

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,1.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.changehands(5).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          SwingRight
      ]),

    AnimatedCall('Heads Spin the Top',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'6',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          SwingLeft,

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Left Spin the Top',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'6',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,1.5),

          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          SwingRight,

          Path(),

          Path()
      ]),
  ];

