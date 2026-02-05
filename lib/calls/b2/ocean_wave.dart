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
import '../b2/alamo_style.dart' as b2;

  final List<AnimatedCall> OceanWave = [

    AnimatedCall('Step to a Wave',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1.5,y:0,angle:180),
  ]),
      from:'Facing Dancers',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Step to a Wave',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,2.0),

          Forward_2.scale(0.75,1.0)
      ]),

    AnimatedCall('Step to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2)
      ]),

    AnimatedCall('Step to a Wave',
      formation:Formation('Normal Lines'),
      from:'Facing Lines',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Step to a Left-Hand Wave',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1.5,y:0,angle:180),
  ]),
      from:'Facing Dancers',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Step to a Left-Hand Wave',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,
      paths:[
          Forward_2.scale(0.75,1.0),

          ExtendRight.changeBeats(2).scale(1.5,2.0)
      ]),

    AnimatedCall('Step to a Left-Hand Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,
      paths:[
          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Step to a Left-Hand Wave',
      formation:Formation('Normal Lines'),
      from:'Facing Lines',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Balance',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          Forward.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.35,1.0),

          Forward.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0),

          Forward.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0),

          Forward.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(0.35,1.0)
      ]),

    AnimatedCall('Balance',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
          Forward.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.35,1.0),

          Forward.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0),

          Forward.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0),

          Forward.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPLEFT).scale(0.35,1.0)
      ]),

    AnimatedCall('Balance',
      formation:Formation('Alamo Wave'),
      from:'Alamo Ring',difficulty: 1,
      paths:[
          Forward.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0),

          Forward.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0),

          Forward.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0),

          Forward.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0) +
          Back.changeBeats(2).changehands(Hands.GRIPBOTH).scale(0.35,1.0)
      ]),

    AnimatedCall('Heads Step to a Wave',
      formation:Formation('Static Square'),
      group:' ',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,1.0),

          Forward_3.skew(0.0,0.25),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Step to a Wave',
      formation:Formation('Static Square'),
      group:' ',difficulty: 2,noDisplay: true,
      paths:[
          Path(),

          Path(),

          ExtendLeft.changeBeats(3).scale(3.0,1.0),

          Forward_3.skew(0.0,0.25)
      ]),

    AnimatedCall('Heads Step to a Left-Hand Wave',
      formation:Formation('Static Square'),
      group:' ',difficulty: 2,
      paths:[
          Forward_3.skew(0.0,-0.25),

          ExtendRight.changeBeats(3).scale(3.0,1.0),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Step to a Left-Hand Wave',
      formation:Formation('Static Square'),
      group:' ',difficulty: 2,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward_3.skew(0.0,-0.25),

          ExtendRight.changeBeats(3).scale(3.0,1.0)
      ]),
    b2.AlamoStyle.where((tam) =>
      tam.title == 'Allemande Left in the Alamo Style').first.xref(title: 'Allemande Left to an Alamo Ring').xref(group: ' '),

    AnimatedCall('Touch',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2)
      ]),
  ];

