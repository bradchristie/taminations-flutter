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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> Prefer = [

    AnimatedCall('Prefer the Men, Explode the Line',
      formation:Formation('Lines Facing Out'),
      group:' ',isGenderSpecific:true,
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3) +
          Forward_2.changeBeats(3),

          QuarterRight.changeBeats(2).skew(-0.5,0.0) +
          PullLeft.changeBeats(2).scale(2.0,0.1) +
          ExtendRight.changeBeats(2).scale(1.0,0.6),

          LeadRight.changeBeats(3).scale(2.0,2.0) +
          ExtendRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Prefer the Head Men, In Roll Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]),
      group:' ',isGenderSpecific:true,
      paths:[
          Forward_4,

          FlipRight.changeBeats(4),

          FlipRight.changeBeats(4),

          FlipLeft.changeBeats(4)
      ]),

    AnimatedCall('Prefer the Girls, Scoot and Dodge',
      formation:Formation('Normal Lines'),
      group:' ',isGenderSpecific:true,
      paths:[
          DodgeRight,

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25),

          DodgeRight,

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25)
      ]),
  ];

