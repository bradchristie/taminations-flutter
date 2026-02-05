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

  final List<AnimatedCall> FractionTag = [

    AnimatedCall('Quarter Tag',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterRight,

          LeadRight
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 3,
      paths:[
          QuarterLeft.skew(-1.0,1.0),

          QuarterLeft
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 3,
      paths:[
          QuarterRight,

          QuarterLeft.skew(-1.0,1.0)
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,
      paths:[
          QuarterLeft,

          LeadRight
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          QuarterRight.skew(1.0,0.0),

          LeadRight,

          LeadRight,

          QuarterRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          LeadRight.changeBeats(2),

          QuarterRight.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          LeadRight,

          LeadRight +
          Forward_2
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterLeft.skew(-1.0,0.0) +
          Forward_3,

          QuarterLeft.skew(-1.0,0.0) +
          Forward
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          QuarterRight.skew(1.0,0.0) +
          Forward,

          QuarterLeft.skew(-1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,
      paths:[
          QuarterLeft.skew(-1.0,0.0) +
          Forward,

          QuarterRight.skew(1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight.changeBeats(4)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 2,
      paths:[
          LeadRight.changeBeats(4),

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          LeadRight,

          LeadRight +
          Forward_2,

          LeadRight +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          LeadRight,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight +
          Forward_2,

          LeadRight +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',noDisplay: true,
      paths:[
          LeadRight,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',noDisplay: true,
      paths:[
          LeadRight,

          LeadRight.changeBeats(2) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',noDisplay: true,
      paths:[
          LeadRight,

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',noDisplay: true,
      paths:[
          LeadRight,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight.changeBeats(2) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines Ends Facing Out',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines Ends Facing In',noDisplay: true,
      paths:[
          LeadRight,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',difficulty: 1,
      paths:[
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(0.5,1.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',difficulty: 2,
      paths:[
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(0.5,1.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0) +
          Forward.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 3,
      paths:[
          QuarterRight.skew(-1.0,0.0) +
          Forward,

          QuarterRight.skew(-1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          LeadLeft +
          Forward_2,

          LeadLeft
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          QuarterRight.skew(-1.0,0.0) +
          Forward,

          QuarterLeft.skew(1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,
      paths:[
          QuarterLeft.skew(1.0,0.0) +
          Forward,

          QuarterRight.skew(-1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          LeadLeft,

          LeadLeft +
          Forward_2,

          LeadLeft +
          Forward_2,

          LeadLeft
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterLeft.skew(-0.5,0.5) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.5,0.5),

          QuarterLeft.skew(-0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.5,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,0.5) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.5,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 2,
      paths:[
          QuarterLeft.skew(-0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.5,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Left 3/4 Tag the Line',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 3,
      paths:[
          QuarterRight.skew(-0.5,-0.5) +
          ExtendRight.changeBeats(3).scale(2.5,0.5),

          QuarterRight.skew(-0.5,-0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.5,0.5)
      ]),

    AnimatedCall('Left 3/4 Tag the Line',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          LeadLeft.scale(0.5,1.0) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Left 3/4 Tag the Line',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          QuarterRight.skew(-0.5,-0.5) +
          ExtendRight.changeBeats(3).scale(2.5,0.5),

          LeadLeft.scale(0.5,1.0) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left 3/4 Tag the Line',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 3,
      paths:[
          LeadLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          QuarterRight.skew(-0.5,-0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.5,0.5)
      ]),
  ];

