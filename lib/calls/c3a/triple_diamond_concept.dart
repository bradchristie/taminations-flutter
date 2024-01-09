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

  final List<AnimatedCall> TripleDiamondConcept = [

    AnimatedCall('Triple Diamond Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:2,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:2,y:4,angle:270),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:4,angle:90),
  ]),
      from:'Triple Diamonds',
      paths:[
          LeadRight.changeBeats(3).scale(1.0,2.0),

          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,2.0),

          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),
  ];

