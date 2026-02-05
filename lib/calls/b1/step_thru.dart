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

  final List<AnimatedCall> StepThru = [

    AnimatedCall('Step Thru',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Forward_2
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:0.5,angle:180),
  ]),
      from:'Compact Right-Hand Wave',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:1.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:0.5,angle:0),
  ]),
      from:'Compact Left-Hand Wave',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          Forward_2
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          ExtendRight,

          ExtendRight
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          ExtendLeft,

          ExtendLeft
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      taminator: '''
      Note how this is different from Extend
    ''',
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:1.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:0.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-0.5,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-1.5,angle:180),
  ]),
      from:'Compact Right-Hand Waves',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:1.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:0.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-0.5,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-1.5,angle:0),
  ]),
      from:'Compact Left-Hand Waves',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('Tidal Wave RH BGBG'),
      from:'Tidal Wave',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('Column RH GBGB'),
      from:'Columns',
      paths:[
          ExtendRight.scale(0.5,1.0),

          ExtendRight.scale(0.5,1.0),

          ExtendRight.scale(0.5,1.0),

          ExtendRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Step Thru',
      formation:Formation('Thar LH Boys'),
      from:'Thar',
      paths:[
          ExtendRight.changeBeats(2).scale(0.75,1.25),

          ExtendRight.changeBeats(2).scale(0.75,0.75),

          ExtendRight.changeBeats(2).scale(0.75,1.25),

          ExtendRight.changeBeats(2).scale(0.75,0.75)
      ]),

    AnimatedCall('Centers Step Thru',
      formation:Formation('Quarter Tag'),
      group:' ',
      taminator: '''
      Note how this is different from Extend
    ''',
      paths:[
          Path(),

          Path(),

          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2)
      ]),
  ];

