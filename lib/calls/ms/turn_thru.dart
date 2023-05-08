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

  final List<AnimatedCall> TurnThru = [

    AnimatedCall('Turn Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          ExtendLeft.scale(1.5,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.scale(1.5,0.5),

          ExtendLeft.scale(1.5,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.scale(1.5,0.5)
      ]),

    AnimatedCall('Turn Thru',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.scale(1.0,0.75),

          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.scale(1.0,0.75)
      ]),

    AnimatedCall('Turn Thru',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.0,0.25),

          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(1.0,1.75)
      ]),

    AnimatedCall('Turn Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Turn Thru',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Waves',difficulty: 1,
      paths:[
          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.0,0.25),

          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(1.0,1.75),

          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(1.0,1.75),

          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.0,0.25)
      ]),

    AnimatedCall('Turn Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changeBeats(2).changehands(6).scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Turn Thru',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',difficulty: 2,
      paths:[
          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.scale(0.5,0.75),

          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.scale(0.5,0.75),

          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.scale(0.5,0.75),

          HingeRight.scale(0.75,1.0) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.scale(0.5,0.75)
      ]),

    AnimatedCall('Turn Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag',difficulty: 1,
      taminator: '''
      The Ocean Wave rule is used here.
      The centers work with each other and not the outsides.
    ''',
      paths:[
          Path(),

          Path(),

          SwingRight.scale(0.75,1.0) +
          Forward,

          SwingRight.scale(0.75,0.5) +
          ExtendRight
      ]),
  ];

