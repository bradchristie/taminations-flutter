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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> PassTheSea = [

    AnimatedCall('Pass the Sea',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
  ]),
      from:'Facing Couples',
      paths:[
          ExtendLeft.changeBeats(2.5).scale(2.0,0.5) +
          LeadRight.changeBeats(3.5).scale(1.0,1.5),

          ExtendLeft.changeBeats(2.5).scale(2.0,0.5) +
          LeadLeft.changeBeats(3.5).scale(3.0,0.5)
      ]),

    AnimatedCall('Pass the Sea',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Pass the Sea',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Heads Pass the Sea',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Pass the Sea',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          Path(),

          Path(),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('As Couples Pass the Sea',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(1.5,3.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(4).scale(0.5,2.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(2.5,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadLeft.changeBeats(4).scale(3.5,1.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 4 Couples Pass the Sea').first.xref(title: 'All 4 Couples Pass the Sea').xref(group: ' '),
  ];

