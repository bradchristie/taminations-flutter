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

  final List<AnimatedCall> SplitSquareThru = [

    AnimatedCall('Split Square Thru 2',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'T-Bones, Ends Facing',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Stand.changeBeats(1.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5),

          Stand.changeBeats(1.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Split Square Thru 2',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
  ]),
      from:'T-Bones, Centers Facing',
      paths:[
          Stand.changeBeats(1.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5),

          Stand.changeBeats(1.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Split Square Thru',
      formation:Formation('T-Bone ULRU'),
      group:' ',notForSequencer: true,
      paths:[
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Stand +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5),

          Stand +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Heads Start Split Square Thru',
      formation:Formation('Static Square'),
      group:' ',notForSequencer: true,
      paths:[
          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.scale(1.5,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.scale(1.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.scale(1.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Stand.changeBeats(3.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.scale(1.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Stand.changeBeats(3.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.scale(1.5,0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Sides Start Split Square Thru',
      formation:Formation('Static Square'),
      group:' ',notForSequencer: true,
      paths:[
          Stand.changeBeats(3.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.scale(1.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Stand.changeBeats(3.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.scale(1.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.scale(1.5,0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.scale(1.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.scale(1.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),
  ];

