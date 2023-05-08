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

  final List<AnimatedCall> Coordinate = [

    AnimatedCall('Coordinate',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'2;1;2.5',difficulty: 1,
      paths:[
          RunRight.changeBeats(2) +
          Forward +
          SwingRight.changeBeats(2.5).scale(0.5,1.0),

          Forward.changeBeats(2).scale(2.0,1.0) +
          LeadRight +
          Stand.changeBeats(2).changehands(0) +
          LeadRight.changeBeats(2.5).scale(3.0,2.0),

          Forward_2 +
          Forward +
          SwingRight.changeBeats(2.5).scale(0.5,1.0),

          Forward_2 +
          Forward +
          SwingRight.changeBeats(2.5).scale(0.5,1.0) +
          ExtendLeft.changeBeats(2.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Coordinate',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'2;1;2.5',difficulty: 2,
      paths:[
          Forward_2 +
          Forward +
          SwingLeft.changeBeats(2.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).scale(2.0,2.0),

          Forward_2 +
          Forward +
          SwingLeft.changeBeats(2.5).scale(0.5,1.0),

          Forward.changeBeats(2).scale(2.0,1.0) +
          LeadLeft +
          Stand.changeBeats(2).changehands(0) +
          LeadLeft.changeBeats(2.5).scale(3.0,2.0),

          RunLeft.changeBeats(2) +
          Forward +
          SwingLeft.changeBeats(2.5).scale(0.5,1.0)
      ]),

    AnimatedCall('Coordinate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      from:'3 and 1 Lines, Right-Hand Centers',parts:'4;2;3',difficulty: 3,
      taminator: '''
      Not officially in the Plus program, but can be workshopped,
      or called at higher levels.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,3.0) +
          Stand.changeBeats(3).changehands(0) +
          LeadRight.changeBeats(3).scale(3.0,3.0),

          Forward_4 +
          LeadRight.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.scale(0.75,0.5) +
          DodgeLeft.changehands(1).scale(1.0,0.25),

          RunRight.changeBeats(4) +
          Forward_2 +
          SwingRight +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          SwingLeft.scale(0.75,1.25) +
          DodgeRight.changehands(1).scale(1.0,0.25)
      ]),

    AnimatedCall('Coordinate',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines, Left-Hand Centers',parts:'4;2;3',difficulty: 3,
      taminator: '''
      Not officially in the Plus program, but can be workshopped,
      or called at higher levels.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,3.0) +
          Stand.changeBeats(3).changehands(0) +
          LeadRight.changeBeats(3).scale(4.0,3.0),

          RunLeft.changeBeats(4) +
          Forward_2 +
          SwingLeft +
          ExtendRight.changeBeats(3).scale(2.0,1.0),

          Forward_4 +
          LeadLeft.changeBeats(2).scale(0.5,1.0) +
          RunRight.scale(0.75,0.5) +
          DodgeRight.changehands(2).scale(1.0,0.25),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          FlipLeft.scale(1.0,1.25) +
          DodgeRight.changehands(1).scale(1.0,0.25)
      ]),

    AnimatedCall('Coordinate',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',parts:'4;2;3',difficulty: 3,
      taminator: '''
      Not officially in the Plus program, but can be workshopped,
      or called at higher levels.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(2.5,3.0) +
          Stand.changeBeats(3).changehands(0) +
          LeadRight.changeBeats(3).scale(3.0,2.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.25),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          SwingLeft.scale(1.0,0.75) +
          ExtendRight.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,3.0) +
          SwingLeft.scale(0.5,1.0) +
          DodgeRight.changeBeats(3).changehands(1).scale(1.0,0.25)
      ]),

    AnimatedCall('Coordinate',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'4;1;3',difficulty: 3,
      taminator: '''
      Not officially in the Plus program, but can be workshopped,
      or called at higher levels.
    ''',
      paths:[
          LeadLeft.changeBeats(2).scale(1.5,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          DodgeRight.changeBeats(3).changehands(1).scale(1.0,0.25),

          QuarterLeft.changeBeats(2).skew(-0.5,1.0) +
          LeadLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,1.5),

          LeadRight.changeBeats(2).scale(0.5,1.0) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          DodgeRight.changeBeats(3).changehands(1).scale(1.0,0.25),

          LeadRight.changeBeats(2).scale(2.5,3.0) +
          LeadRight.changeBeats(2).scale(3.0,3.5) +
          ExtendLeft.scale(1.0,0.5) +
          Stand.changeBeats(3).changehands(0) +
          LeadRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Coordinate',
      formation:Formation('T-Bone DLDL'),
      from:'T-Bones 1',parts:'4;1;3',difficulty: 3,
      taminator: '''
      Not officially in the Plus program, but can be workshopped,
      or called at higher levels.
    ''',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          Forward +
          SwingLeft,

          Forward_2.changeBeats(4) +
          LeadRight.changeBeats(1).scale(1.5,1.0) +
          Stand.changeBeats(3).changehands(0) +
          LeadRight.changeBeats(3).scale(3.0,2.5),

          RunRight.changeBeats(4) +
          Forward +
          SwingLeft,

          Forward_2.changeBeats(4) +
          Forward +
          SwingRight +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Coordinate',
      formation:Formation('T-Bone RDRD'),
      from:'T-Bones 2',parts:'4;1;3',difficulty: 3,
      taminator: '''
      Not officially in the Plus program, but can be workshopped,
      or called at higher levels.
    ''',
      paths:[
          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward +
          SwingRight,

          Forward_2.changeBeats(4) +
          LeadLeft.changeBeats(1).scale(1.5,1.0) +
          Stand.changeBeats(3).changehands(0) +
          LeadLeft.changeBeats(3).scale(3.0,2.5),

          RunLeft.changeBeats(4) +
          Forward +
          SwingRight,

          Forward_2.changeBeats(4) +
          Forward +
          SwingLeft +
          ExtendRight.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Coordinate',
      formation:Formation('T-Bone LDLD'),
      from:'T-Bones 3',parts:'4;1;3',difficulty: 3,
      taminator: '''
      Not officially in the Plus program, but can be workshopped,
      or called at higher levels.
    ''',
      paths:[
          RunRight.changeBeats(4) +
          Forward +
          SwingRight.skew(0.5,0.0),

          RunLeft.changeBeats(4) +
          Forward +
          SwingLeft.scale(1.0,0.75) +
          ExtendRight.changeBeats(3).scale(3.0,1.0),

          Forward_2.changeBeats(4) +
          Forward +
          SwingRight.scale(0.5,1.0).skew(-0.5,0.0),

          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward +
          DodgeLeft.changeBeats(1).scale(1.0,0.25) +
          Stand.changeBeats(2) +
          LeadRight.changeBeats(3).scale(3.0,2.0)
      ]),

    AnimatedCall('Coordinate',
      formation:Formation('T-Bone DRDR'),
      from:'T-Bones 4',parts:'4;1;3',difficulty: 3,
      taminator: '''
      Not officially in the Plus program, but can be workshopped,
      or called at higher levels.
    ''',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          Forward +
          DodgeRight.changeBeats(1).scale(1.0,0.25) +
          Stand.changeBeats(2) +
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          Forward_2.changeBeats(4) +
          Forward +
          SwingLeft.scale(0.5,1.0).skew(-0.5,0.0),

          RunRight.changeBeats(4) +
          Forward +
          SwingRight.scale(1.0,0.75) +
          ExtendLeft.changeBeats(3).scale(3.0,1.0),

          RunLeft.changeBeats(4) +
          Forward +
          SwingLeft.skew(0.5,0.0)
      ]),
  ];

