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

  final List<AnimatedCall> PlanAhead = [

    AnimatedCall('Plan Ahead',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]),
      from:'Lines',fractions:'8.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(5).scale(4.0,3.5) +
          HingeRight +
          Forward_2.changeBeats(3) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          RunLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          RunRight +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          FlipRight.scale(1.0,0.5).skew(2.0,0.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(5).scale(2.0,2.5) +
          HingeRight +
          RunRight +
          Forward +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Plan Ahead',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',fractions:'8.5',
      paths:[
          RunLeft.changeBeats(3).scale(1.0,3.0) +
          Forward_2 +
          HingeRight.scale(1.0,0.5) +
          RunRight.scale(1.0,1.5) +
          LeadRight.changeBeats(2).scale(2.5,1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          RunLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          RunRight +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          FlipRight.scale(1.0,0.5).skew(2.0,0.0),

          RunRight.changeBeats(3).scale(2.0,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          HingeRight.scale(1.0,0.5) +
          Forward.changeBeats(3.5).scale(3.5,1.0) +
          QuarterRight.skew(1.0,0.0)
      ]),
  ];

