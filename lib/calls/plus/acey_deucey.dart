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

  final List<AnimatedCall> AceyDeucey = [

    AnimatedCall('Acey Deucey',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'2',difficulty: 1,
      paths:[
          Forward_4,

          SwingLeft.changeBeats(4),

          SwingLeft.changeBeats(4),

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'2',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          SwingRight.changeBeats(4),

          SwingRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',fractions:'2',difficulty: 1,
      paths:[
          Forward_4,

          SwingRight.changeBeats(4),

          SwingRight.changeBeats(4),

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',fractions:'2',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          SwingLeft.changeBeats(4),

          SwingLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',fractions:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4).scale(1.2,1.0),

          FlipLeft.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',fractions:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',fractions:'2',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0),

          RunRight.changeBeats(4),

          FlipLeft.changeBeats(4),

          LeadRight.changeBeats(2).scale(3.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(1.5,3.0),

          RunRight.changeBeats(4),

          FlipLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',fractions:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          SwingLeft.changeBeats(4),

          SwingLeft.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',fractions:'2',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          SwingRight.changeBeats(4),

          SwingRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',fractions:'2',difficulty: 2,
      paths:[
          Forward_4,

          RunRight.changeBeats(4),

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',fractions:'2',difficulty: 2,
      paths:[
          Forward_4,

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          SwingRight.changeBeats(4),

          SwingRight.changeBeats(4),

          RunRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          SwingLeft.changeBeats(4),

          SwingLeft.changeBeats(4),

          RunRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0),

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',difficulty: 3,
      paths:[
          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Trade By'),
      from:'Trade By',difficulty: 3,
      paths:[
          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4),

          FlipLeft.changeBeats(4),

          RunRight.changeBeats(4).scale(0.6,1.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
  ]),
      from:'Right-Hand Center Box',difficulty: 3,
      paths:[
          FlipLeft,

          RunRight,

          SwingRight,

          SwingRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
  ]),
      from:'Left-Hand Center Box',difficulty: 3,
      paths:[
          FlipLeft,

          RunRight,

          SwingLeft.scale(0.5,1.0),

          SwingLeft
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',fractions:'1.5',difficulty: 3,
      paths:[
          FlipLeft,

          RunRight,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3/4 Tag LH'),
      from:'Left-Hand 3/4 Tag',fractions:'1.5',difficulty: 3,
      paths:[
          FlipLeft,

          RunRight,

          SwingLeft,

          SwingLeft
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3/4 Lines RH'),
      from:'3/4 Lines',fractions:'1.5',difficulty: 3,
      paths:[
          FlipLeft,

          RunRight,

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('3/4 Lines LH'),
      from:'Left-Hand 3/4 Lines',fractions:'1.5',difficulty: 3,
      paths:[
          FlipLeft,

          RunRight,

          RunRight,

          FlipLeft
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',fractions:'2',difficulty: 3,
      paths:[
          SwingRight.changeBeats(4),

          Forward_4,

          SwingRight.changeBeats(4),

          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',fractions:'2',difficulty: 3,
      paths:[
          SwingLeft.changeBeats(4),

          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0),

          SwingLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Diamonds 3',fractions:'2',difficulty: 3,
      paths:[
          SwingRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          SwingRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Diamonds 4',fractions:'2',difficulty: 3,
      paths:[
          SwingRight.changeBeats(4),

          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0),

          SwingRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Diamonds 5',fractions:'2',difficulty: 3,
      paths:[
          SwingRight.changeBeats(4),

          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0),

          SwingRight.changeBeats(4),

          LeadRight.changeBeats(2).scale(3.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Diamonds 6',fractions:'2',difficulty: 3,
      paths:[
          SwingLeft.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          SwingLeft.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Diamonds 7',fractions:'2',difficulty: 3,
      paths:[
          SwingLeft.changeBeats(4),

          Forward_4,

          SwingLeft.changeBeats(4),

          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Diamonds 8',fractions:'2',difficulty: 3,
      paths:[
          SwingLeft.changeBeats(4),

          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0),

          SwingLeft.changeBeats(4),

          LeadRight.changeBeats(2).scale(3.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      from:'Interlocked Diamonds 1',difficulty: 3,
      paths:[
          RunRight.changeBeats(4),

          Forward_4,

          FlipLeft.changeBeats(4),

          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Interlocked Diamonds 2',difficulty: 3,
      paths:[
          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipLeft.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Interlocked Diamonds 3',difficulty: 3,
      paths:[
          RunRight.changeBeats(4),

          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0),

          FlipLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Interlocked Diamonds 4',difficulty: 3,
      paths:[
          RunRight.changeBeats(4),

          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0),

          FlipLeft.changeBeats(4),

          LeadRight.changeBeats(2).scale(3.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Interlocked Diamonds LH Girl Points'),
      from:'Interlocked Diamonds 5',difficulty: 3,
      paths:[
          FlipLeft.changeBeats(4),

          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0),

          RunRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Interlocked Diamonds 6',difficulty: 3,
      paths:[
          FlipLeft.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Interlocked Diamonds 7',difficulty: 3,
      paths:[
          FlipLeft.changeBeats(4),

          Forward_4,

          RunRight.changeBeats(4),

          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Interlocked Diamonds 8',difficulty: 3,
      paths:[
          FlipLeft.changeBeats(4),

          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0),

          RunRight.changeBeats(4),

          LeadRight.changeBeats(2).scale(3.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,3.0)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0.75,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:2.25,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3.75,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0.0,y:2.5,angle:0),
  ]),
      from:'Wave with 6 Dancers',difficulty: 3,
      paths:[
          SwingLeft.changeBeats(4).scale(0.75,0.75),

          SwingLeft.changeBeats(4).scale(0.75,0.75),

          LeadRight.changeBeats(4).scale(2.5,3.75),

          LeadRight.changeBeats(4).scale(3.75,2.5)
      ]),

    AnimatedCall('Acey Deucey',
      formation:Formation('Galaxy RH GP'),
      from:'Galaxy',difficulty: 3,
      paths:[
          SwingRight.changeBeats(4),

          LeadRight.changeBeats(4).scale(3.1,3.0),

          SwingRight.changeBeats(4).scale(0.5,1.0),

          LeadRight.changeBeats(4).scale(3.0,3.1)
      ]),

    AnimatedCall('Acey Deucey Once and a Half',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'4',difficulty: 2,
      taminator: '''A common variation.
      Note that the center 4 dancers form a diamond.''',
      paths:[
          Forward_4 +
          LeadRight.changeBeats(2).scale(3.0,3.0),

          SwingLeft.changeBeats(4) +
          HingeLeft.changeBeats(2),

          SwingLeft.changeBeats(4) +
          HingeLeft.changeBeats(2),

          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward_2
      ]),
  ];

