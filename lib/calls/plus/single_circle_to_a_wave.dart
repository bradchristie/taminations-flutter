/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> SingleCircleToAWave = [

    AnimatedCall('Single Circle to a Wave',
        formation: Formation('Facing Dancers'),
        from: 'Facing Dancers', difficulty: 1,
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtr +
              ssqtr +
              ExtendLeft.scale(0.7,1.0)
        ]),

    AnimatedCall('Single Circle to a Wave',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          Forward.scale(0.7,0.7),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,2.0)
      ]),

    AnimatedCall('Single Circle to a Wave',
        formation:Formation('Single Eight Chain Thru'),
        from:'Single Eight Chain Thru',difficulty: 1,
        paths:[
          Forward.scale(0.3,0.3) +
              ssqtr +
              ssqtr +
              ExtendLeft.scale(0.7,1.0),

          Forward.scale(0.3,0.3) +
              ssqtr +
              ssqtr +
              ExtendLeft.scale(0.7,1.0),
        ]),

    AnimatedCall('Single Circle to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          Forward.scale(0.3,0.3) +
          ssqtr +
          ssqtr +
          Forward.scale(0.7,0.7),

          Forward.scale(0.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,2.0),

          Forward.scale(0.3,0.3) +
          ssqtr +
          ssqtr +
          Forward.scale(0.7,0.7),

          Forward.scale(0.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,2.0)
      ]),

    AnimatedCall('Single Circle to a Wave',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,0.5),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,0.5),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,0.5),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,0.5)
      ]),

    AnimatedCall('Single Circle 3/4 to a Wave',
        formation: Formation('Facing Dancers'),
        from: 'Facing Dancers', difficulty: 2,
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtr +
              ssqtr +
              ssqtr +
              ExtendLeft.scale(0.7,1.0)
        ]),

    AnimatedCall('Single Circle 3/4 to a Wave',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(1.2,1.0),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          DodgeLeft.changeBeats(1).scale(1.0,0.5).skew(0.2,0.0)
      ]),

    AnimatedCall('Single Circle 3/4 to a Wave',
        formation:Formation('Single Eight Chain Thru'),
        from:'Single Eight Chain Thru',difficulty: 2,
        paths:[
          Forward.scale(0.3,0.3) +
              ssqtr +
              ssqtr +
              ssqtr +
              ExtendLeft.scale(0.7,1.0),

          Forward.scale(0.3,0.3) +
              ssqtr +
              ssqtr +
              ssqtr +
              ExtendLeft.scale(0.7,1.0),
        ]),

    AnimatedCall('Single Circle 3/4 to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          Forward.scale(0.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(1.7,1.0),

          Forward.scale(0.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          DodgeLeft.changeBeats(1).skew(-0.3,-1.0),

          Forward.scale(0.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(1.7,1.0),

          Forward.scale(0.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          DodgeLeft.changeBeats(1).skew(-0.3,-1.0)
      ]),

    AnimatedCall('Single Circle 3/4 to a Wave',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,1.0),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,1.0),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,1.0),

          Forward.scale(1.3,0.3) +
          ssqtr +
          ssqtr +
          ssqtr +
          ExtendLeft.scale(0.7,1.0)
      ]),

    AnimatedCall('Reverse Single Circle to a Wave',
        formation: Formation('Facing Dancers'),
        from: 'Facing Dancers', difficulty: 2,
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtrright +
              ssqtrright +
              ExtendRight.scale(0.7,1.0)
        ]),

    AnimatedCall('Reverse Single Circle to a Wave',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,2.0),

          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          Forward.scale(0.7,0.7)
      ]),

    AnimatedCall('Reverse Single Circle to a Wave',
        formation:Formation('Single Eight Chain Thru'),
        from:'Single Eight Chain Thru',difficulty: 2,
        paths:[
          Forward.scale(0.3,0.3) +
              ssqtr.reflect() +
              ssqtr.reflect() +
              ExtendRight.scale(0.7,1.0),

          Forward.scale(0.3,0.3) +
              ssqtr.reflect() +
              ssqtr.reflect() +
              ExtendRight.scale(0.7,1.0),
        ]),

    AnimatedCall('Reverse Single Circle to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          Forward.scale(0.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,2.0),

          Forward.scale(0.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          Forward.scale(0.7,0.7),

          Forward.scale(0.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,2.0),

          Forward.scale(0.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          Forward.scale(0.7,0.7)
      ]),

    AnimatedCall('Reverse Single Circle to a Wave',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,
      paths:[
          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,0.5),

          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,0.5),

          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,0.5),

          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,0.5)
      ]),

    AnimatedCall('Reverse Single Circle 3/4 to a Wave',
        formation: Formation('Facing Dancers'),
        from: 'Facing Dancers', difficulty: 3,
        paths: [
          Forward.scale(0.8,1.0) +
              ssqtrright +
              ssqtrright +
              ssqtrright +
              ExtendRight.scale(0.7,1.0)
        ]),

    AnimatedCall('Reverse Single Circle 3/4 to a Wave',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',difficulty: 3,
      paths:[
          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          DodgeRight.changeBeats(1).scale(1.0,0.5).skew(0.2,0.0),

          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(1.2,1.0)
      ]),

    AnimatedCall('Reverse Single Circle 3/4 to a Wave',
        formation:Formation('Single Eight Chain Thru'),
        from:'Single Eight Chain Thru',difficulty: 3,
        paths:[
          Forward.scale(0.3,0.3) +
              ssqtr.reflect() +
              ssqtr.reflect() +
              ssqtr.reflect() +
              ExtendRight.scale(0.7,1.0),

          Forward.scale(0.3,0.3) +
              ssqtr.reflect() +
              ssqtr.reflect() +
              ssqtr.reflect() +
              ExtendRight.scale(0.7,1.0),
        ]),

    AnimatedCall('Reverse Single Circle 3/4 to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 3,
      paths:[
          Forward.scale(0.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          DodgeRight.changeBeats(1).skew(-0.3,1.0),

          Forward.scale(0.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(1.7,1.0),

          Forward.scale(0.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          DodgeRight.changeBeats(1).skew(-0.3,1.0),

          Forward.scale(0.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(1.7,1.0)
      ]),

    AnimatedCall('Reverse Single Circle 3/4 to a Wave',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 3,
      paths:[
          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,1.0),

          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,1.0),

          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,1.0),

          Forward.scale(1.3,0.3) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ssqtr.scale(1.0,-1.0) +
          ExtendRight.scale(0.7,1.0)
      ]),
  ];

