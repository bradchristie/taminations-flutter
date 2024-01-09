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

  final List<AnimatedCall> EaseOff = [

    AnimatedCall('Ease Off',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          QuarterRight.changeBeats(3).skew(3.0,0.0),

          RunRight +
          QuarterRight.skew(1.0,0.0),

          RunLeft.skew(-2.0,0.0) +
          LeadLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Ease Off',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0),

          RunLeft +
          QuarterLeft.skew(1.0,0.0),

          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          QuarterLeft.changeBeats(3).skew(3.0,0.0)
      ]),

    AnimatedCall('Ease Off',
      formation:Formation('Ocean Waves RH GBGB'),
      from:'Right-Hand Waves',
      paths:[
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          RunLeft +
          QuarterLeft.skew(1.0,0.0),

          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          RunLeft.skew(-2.0,0.0) +
          LeadLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Ease Off',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          RunRight.skew(-2.0,0.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0),

          QuarterRight.changeBeats(3).skew(3.0,0.0),

          RunRight +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.changeBeats(3).skew(3.0,0.0)
      ]),
  ];

