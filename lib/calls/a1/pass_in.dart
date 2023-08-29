/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

  final List<AnimatedCall> PassIn = [

    AnimatedCall('Pass In',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('Pass In',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('Pass In',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'Eight Chain Thru',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5)
      ]),

    AnimatedCall('Heads Pass In',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Pass In',
      formation:Formation('Static Square'),
      group:'  ',
      paths:[
          Path(),

          Path(),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('As Couples Pass In',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.GRIPLEFT).skew(3.0,-0.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 4 Couples Pass In').first.xref(title: 'All 4 Couples Pass In').xref(group: ' '),

    AnimatedCall('Pass Out',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('Pass Out',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Pass Out',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'Eight Chain Thru',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadLeft.changeBeats(2.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight.changeBeats(2.5).scale(1.0,1.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadLeft.changeBeats(2.5).scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight.changeBeats(2.5).scale(1.0,1.5)
      ]),

    AnimatedCall('Heads Pass Out',
      formation:Formation('Squared Set'),
      group:'  ',
      paths:[
          ExtendLeft.changeBeats(2).scale(3.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(3.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Pass Out',
      formation:Formation('Squared Set'),
      group:'  ',
      paths:[
          Path(),

          Path(),

          ExtendLeft.changeBeats(2).scale(3.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(3.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('As Couples Pass Out',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.GRIPLEFT).skew(3.0,-0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,0.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 4 Couples Pass Out').first.xref(title: 'All 4 Couples Pass Out').xref(group: ' '),
  ];

