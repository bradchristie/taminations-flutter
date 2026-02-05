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

  final List<AnimatedCall> Press = [

    AnimatedCall('Press Ahead',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]),
      from:'Right-Hand Waves',
      paths:[
          Forward_2,

          Forward_2,

          Forward_2,

          Forward_2
      ]),

    AnimatedCall('Press Ahead',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
  ]),
      from:'Left-Hand Waves',
      paths:[
          Forward_2,

          Forward_2,

          Forward_2,

          Forward_2
      ]),

    AnimatedCall('Press Ahead',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]),
      from:'Right-Hand Two-Faced Lines',
      taminator: '''
      Be sure to go one full position and not stop at 1/2 Press Ahead.
    ''',
      paths:[
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT),

          Forward_2.changehands(Hands.LEFT),

          Forward_2.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Press Ahead',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
  ]),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          Forward_2.changehands(Hands.LEFT),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Press Ahead',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          Forward_2.changehands(Hands.LEFT),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Press Ahead',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          Forward_2.changehands(Hands.LEFT),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Ends Press Ahead',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:180),
  ]),
      from:'Lines Facing Out',group:' ',
      paths:[
          Forward_2,

          Path(),

          Path(),

          Forward_2
      ]),

    AnimatedCall('Girls Press Ahead',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
  ]),
      from:'Right-Hand Waves',group:' ',isGenderSpecific:true,
      paths:[
          Path(),

          Forward_2,

          Path(),

          Forward_2
      ]),

    AnimatedCall('1/2 Press Ahead',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      taminator: '''
    Unlike Extend, the girls do not adjust to make a couple.
    ''',
      paths:[
          Forward_2,

          Forward.changeBeats(2),

          Forward_2,

          Forward.changeBeats(2)
      ]),

    AnimatedCall('1/2 Press Ahead',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          Forward.changeBeats(2),

          Forward_2,

          Forward.changeBeats(2),

          Forward_2
      ]),

    AnimatedCall('1/2 Press Ahead',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_2.changehands(Hands.RIGHT),

          Forward_2.changehands(Hands.LEFT),

          Forward.changeBeats(2).changehands(Hands.LEFT),

          Forward.changeBeats(2).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('1/2 Press Ahead',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT),

          Forward.changeBeats(2).changehands(Hands.LEFT),

          Forward_2.changehands(Hands.LEFT),

          Forward_2.changehands(Hands.RIGHT)
      ]),
  ];

