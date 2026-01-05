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

  final List<AnimatedCall> LinkUp = [

    AnimatedCall('Link Up',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Right-Hand Two-Faced Lines',fractions:'2',
      paths:[
          Forward_2.changehands(Hands.RIGHT) +
          RunRight.changeBeats(5).scale(1.0,2.0).skew(2.0,0.0),

          Forward_2.changehands(Hands.LEFT) +
          SwingRight +
          Forward_2,

          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,2.0) +
          QuarterLeft +
          Forward_2.changeBeats(3.5),

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT) +
          QuarterLeft +
          Forward_4.changeBeats(3.5)
      ]),

    AnimatedCall('Link Up',
        formation: Formation('Two-Faced Lines LH'),
        from:'Left-Hand Two-Faced Lines',fractions:'2',
        paths:[
          QuarterRight.changeBeats(2).changehands(Hands.LEFT) +
              QuarterRight +
              Forward_4.changeBeats(3.5),

          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,2.0) +
              QuarterRight +
              Forward_2.changeBeats(3.5),

          Forward_2.changehands(Hands.RIGHT) +
              SwingLeft +
              Forward_2,

          Forward_2.changehands(Hands.LEFT) +
              RunLeft.changeBeats(5).scale(1.0,2.0).skew(2.0,0.0),
        ]),

  ];

