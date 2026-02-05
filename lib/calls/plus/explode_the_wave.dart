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

  final List<AnimatedCall> ExplodeTheWave = [

    AnimatedCall('Explode the Wave',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
          LeadRight.changeBeats(3).scale(1.5,2.0) +
          ExtendRight.changeBeats(3).scale(2.5,0.5),

          LeadLeft.changeBeats(3).scale(0.5,2.0) +
          ExtendRight.changeBeats(3).scale(0.5,0.5)
      ]),

    AnimatedCall('Explode the Wave',
      formation:Formation('Wave LH Boys Center'),
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          LeadRight.changeBeats(3).scale(1.5,2.0) +
          ExtendRight.changeBeats(3).scale(0.5,0.5),

          LeadLeft.changeBeats(3).scale(0.5,2.0) +
          ExtendRight.changeBeats(3).scale(2.5,0.5)
      ]),

    AnimatedCall('Explode the Wave',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          LeadRight.changeBeats(3).scale(1.5,2.0) +
          ExtendRight.changeBeats(3).scale(3.0,0.5),

          LeadLeft.changeBeats(3).scale(0.5,2.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadLeft.changeBeats(3).scale(0.5,2.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,2.0) +
          ExtendRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Explode the Wave',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,2.0) +
          ExtendRight.changeBeats(3).scale(3.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,2.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,2.0) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadLeft.changeBeats(3).scale(0.5,2.0) +
          ExtendRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Explode the Wave',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(1.5,1.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadLeft.changeBeats(3).scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadLeft.changeBeats(3).scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,1.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Explode the Wave',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',difficulty: 2,
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,1.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5),

          LeadLeft.changeBeats(3).scale(0.5,1.5) +
          ExtendRight.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',noDisplay: true,
      paths:[
          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('Explode',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:0.5,angle:180),
  ]),
      from:'Compact Right-Hand Wave',noDisplay: true,
      paths:[
          LeadRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2),

          QuarterRight.changeBeats(2).skew(1.0,1.0)
      ]),

    AnimatedCall('Explode',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:1.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:0.5,angle:0),
  ]),
      from:'Compact Left-Hand Wave',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',noDisplay: true,
      paths:[
          LeadRight.changeBeats(2).scale(1.0,2.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          LeadRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Explode',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:1.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:0.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-0.5,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-1.5,angle:180),
  ]),
      from:'Compact Right-Hand Waves',noDisplay: true,
      paths:[
          LeadRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          LeadRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Explode',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:1.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:0.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-0.5,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-1.5,angle:0),
  ]),
      from:'Compact Left-Hand Waves',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',noDisplay: true,
      paths:[
          LeadRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          LeadRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5)
      ]),
  ];

