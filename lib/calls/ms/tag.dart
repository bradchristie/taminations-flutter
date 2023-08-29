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
import '../../moves.dart';

  final List<AnimatedCall> Tag = [

    AnimatedCall('Tag the Line',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag the Line',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterLeft.skew(-0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.skew(-0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag the Line',
      formation:Formation('Wave RH'),
      from:'Right-Hand Ocean Wave',difficulty: 2,
      paths:[
          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.skew(-0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag the Line',
      formation:Formation('Wave LH'),
      from:'Left-Hand Ocean Wave',difficulty: 2,
      paths:[
          QuarterLeft.skew(-0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag the Line',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 2,
      paths:[
          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterLeft +
          Forward_3 +
          ExtendRight,

          QuarterLeft +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterRight +
          Forward_3 +
          ExtendRight,

          QuarterRight +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterRight +
          Forward_3 +
          ExtendRight,

          QuarterRight +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterLeft +
          Forward_3 +
          ExtendRight,

          QuarterLeft +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Ocean Waves',difficulty: 2,
      paths:[
          QuarterRight.skew(1.0,0.0) +
          Forward_4,

          QuarterLeft.skew(-1.0,0.0) +
          Forward_4,

          QuarterLeft +
          Forward_3 +
          ExtendRight,

          QuarterRight +
          Forward_3 +
          ExtendRight
      ]),

    AnimatedCall('Tag the Line',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',difficulty: 2,
      taminator: '''
    Although not clear from the current definition, Tag the Line is a
    4-dancer call.  Each side of the Tidal Line works independently.
    ''',
      paths:[
          QuarterRight.changeBeats(2).skew(0.5,0.0) +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(0.5,0.0) +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(-0.5,0.0) +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(-0.5,0.0) +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Line of 8 Tag the Line',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',difficulty: 2,
      taminator: '''
    Usually each group of 4 dancers works independently.
    By adding "Line of 8", the caller tells all 8 dancers to work together.
    ''',
      paths:[
          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.skew(0.5,0.0) +
          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('_Finish Line of 8 Tag the Line',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:-.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          Forward_3 +
          ExtendRight.scale(1.0,0.5),

          Forward_3 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('_Finish Line of 8 Left Tag the Line',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_3 +
          ExtendLeft.scale(1.0,0.5),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('_Finish Line of 8 Half Tag',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:-.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(3).scale(0.5,0.5),

          Forward.changeBeats(3).skew(0.5,0.5),

          Forward_2.changeBeats(3).skew(0.5,0.5),

          Forward_3.skew(0.5,0.5)
      ]),

    AnimatedCall('_Finish Line of 8 Left Half Tag',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          ExtendRight.changeBeats(3).scale(0.5,0.5),

          Forward.changeBeats(3).skew(0.5,-0.5),

          Forward_2.changeBeats(3).skew(0.5,-0.5),

          Forward_3.skew(0.5,-0.5)
      ]),

    AnimatedCall('_Finish Line of 6 Tag the Line',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3.75,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.25,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0.75,y:-.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_3 +
          ExtendRight.scale(1.0,0.5).skew(0.5,0.0),

          Forward_3 +
          ExtendRight.scale(1.0,0.5).skew(0.5,0.0),

          Forward_3 +
          ExtendRight.scale(1.0,0.5).skew(0.5,0.0)
      ]),

    AnimatedCall('_Finish Line of 6 Left Tag the Line',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3.75,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.25,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0.75,y:.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_3 +
          ExtendLeft.scale(1.0,0.5).skew(0.5,0.0),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5).skew(0.5,0.0),

          Forward_3 +
          ExtendLeft.scale(1.0,0.5).skew(0.5,0.0)
      ]),

    AnimatedCall('_Finish Line of 6 Half Tag',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3.75,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.25,y:-.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0.75,y:-.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_2.skew(-0.25,0.5),

          Forward_2.skew(0.25,0.5),

          Forward_2.skew(0.75,0.5)
      ]),

    AnimatedCall('_Finish Line of 6 Left Half Tag',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3.75,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.25,y:.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0.75,y:.5,angle:180),
  ]),
      noDisplay: true,
      paths:[
          Forward_2.skew(-0.25,-0.5),

          Forward_2.skew(0.25,-0.5),

          Forward_2.skew(0.75,-0.5)
      ]),
  ];

