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
import '../c2/cross_the_k.dart' as c2;

  final List<AnimatedCall> OffsetConcept = [

    AnimatedCall('Offset Lines Couples Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-3,angle:180),
  ]),
      group:'Offset Lines',
      paths:[
          Forward_3.changeBeats(5).changehands(Hands.RIGHT),

          Forward_3.changeBeats(5).changehands(Hands.LEFT),

          RunRight.changehands(Hands.LEFT) +
          Forward_3.changeBeats(2).changehands(Hands.LEFT),

          RunRight.changehands(Hands.RIGHT).scale(3.0,3.0) +
          Forward_3.changeBeats(2).changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Offset Lines Bend the Line',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:270),
  ]),
      group:'Offset Lines',
      paths:[
          HingeRight.changeBeats(2).changehands(Hands.RIGHT).scale(0.67,1.0),

          BackHingeLeft.changeBeats(2).changehands(Hands.LEFT).scale(0.67,1.0),

          BackHingeLeft.changeBeats(2).changehands(Hands.LEFT).scale(0.67,1.0),

          HingeRight.changeBeats(2).changehands(Hands.RIGHT).scale(0.67,1.0)
      ]),

    AnimatedCall('Offset Lines Pass the Ocean',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-3,angle:0),
  ]),
      group:'Offset Lines',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(1.5).scale(2.33,1.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          HingeLeft.scale(0.67,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(1.5).scale(2.33,1.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          HingeLeft.scale(0.67,0.5)
      ]),
    c2.CrossTheK.where((tam) =>
      tam.title == 'Offset Lines the K').first.xref(title: 'Offset Lines The K').xref(group: 'Offset Lines'),
  ];

