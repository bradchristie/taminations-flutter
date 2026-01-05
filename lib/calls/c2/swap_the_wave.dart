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

  final List<AnimatedCall> SwapTheWave = [

    AnimatedCall('Swap the Wave',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,3.0) +
          LeadRight.changeBeats(2).scale(1.0,2.5),

          Forward_2
      ]),

    AnimatedCall('Swap the Wave',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
  ]),
      from:'Left-Hand Wave',
      paths:[
          ExtendLeft.changeBeats(4).scale(2.0,2.0),

          SwingRight +
          Forward_2
      ]),

    AnimatedCall('Swap the Wave',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,3.0) +
          LeadRight.changeBeats(2).scale(1.0,1.5),

          Forward.changeBeats(2),

          Forward.changeBeats(2),

          LeadRight.changeBeats(2).scale(0.5,3.0) +
          LeadRight.changeBeats(2).scale(1.0,1.5)
      ]),

    AnimatedCall('Swap the Wave',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          ExtendLeft.changeBeats(4).scale(1.0,2.0),

          SwingRight.scale(1.0,0.75) +
          ExtendLeft.scale(1.0,0.5),

          SwingRight.scale(1.0,0.75) +
          ExtendLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Swap the Wave',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).scale(1.0,2.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).scale(1.0,2.5)
      ]),

    AnimatedCall('Swap the Wave',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          ExtendLeft.changeBeats(4).scale(2.0,0.5),

          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(4).scale(2.0,0.5)
      ]),



    AnimatedCall('Reverse Swap the Wave',
        formation:Formation('Wave RH'),
        from:'Right-Hand Wave',
        paths:[
          ExtendRight.changeBeats(4).scale(2.0,2.0),
          SwingLeft + Forward_2
        ]),

    AnimatedCall('Reverse Swap the Wave',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        ]),
        from:'Left-Hand Wave',
        paths:[
          LeadLeft.changeBeats(2).scale(0.5,3.0) +
              LeadLeft.changeBeats(2).scale(1.0,2.5),
          Forward_2
        ]),

    AnimatedCall('Reverse Swap the Wave',
        formation:Formation('Ocean Waves RH BGGB'),
        from:'Right-Hand Waves',
        paths:[
          ExtendRight.changeBeats(4).scale(1.0,2.0),

          SwingLeft.scale(1.0,0.75) +
              ExtendRight.scale(1.0,0.5),

          SwingLeft.scale(1.0,0.75) +
              ExtendRight.scale(1.0,0.5),

          ExtendRight.changeBeats(4).scale(1.0,2.0)
        ]),

    AnimatedCall('Reverse Swap the Wave',
        formation:Formation('Ocean Waves LH BGGB'),
        from:'Left-Hand Waves',
        paths:[
          LeadLeft.changeBeats(2).scale(0.5,3.0) +
              LeadLeft.changeBeats(2).scale(1.0,1.5),

          Forward.changeBeats(2),

          Forward.changeBeats(2),

          LeadLeft.changeBeats(2).scale(0.5,3.0) +
              LeadLeft.changeBeats(2).scale(1.0,1.5)
        ]),

    AnimatedCall('Reverse Swap the Wave',
        formation:Formation('Tidal Wave RH BGGB'),
        from:'Right-Hand Tidal Wave',
        paths:[
          ExtendRight.changeBeats(4).scale(2.0,0.5),

          SwingLeft.scale(0.5,0.5) +
              ExtendRight.changeBeats(2).scale(2.0,0.5),

          SwingLeft.scale(0.5,0.5) +
              ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(4).scale(2.0,0.5)
        ]),

    AnimatedCall('Reverse Swap the Wave',
        formation:Formation('Tidal Wave LH BGGB'),
        from:'Left-Hand Tidal Wave',
        paths:[
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
              LeadLeft.changeBeats(2).scale(1.0,2.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(2).scale(0.5,1.5) +
              LeadLeft.changeBeats(2).scale(1.0,2.5)
        ]),


  ];

