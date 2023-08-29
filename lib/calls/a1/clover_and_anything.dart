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

  final List<AnimatedCall> CloverAndAnything = [

    AnimatedCall('Clover and',
      formation:Formation('Couples Facing Out'),
      group:' ',noDisplay: true,
      paths:[
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight,

          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft
      ]),

    AnimatedCall('Clover and Lock It',
      formation:Formation('3/4 Tag'),
      group:' ',
      paths:[
          LeadRight.scale(1.0,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.0),

          LeadLeft.scale(1.0,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Clover and Lock It',
      formation:Formation('3/4 Tag LH'),
      group:' ',noDisplay: true,
      paths:[
          LeadRight.scale(1.0,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.0),

          LeadLeft.scale(1.0,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Clover and Pass the Ocean',
      formation:Formation('Trade By'),
      group:' ',
      paths:[
          LeadRight.scale(1.0,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.0),

          LeadLeft.scale(1.0,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Clover and Square Thru 2',
      formation:Formation('Trade By'),
      group:' ',
      paths:[
          LeadRight.scale(1.0,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.0),

          LeadLeft.scale(1.0,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Clover and Square Chain Thru',
      formation:Formation('Trade By'),
      group:' ',
      paths:[
          LeadRight.scale(1.0,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.0),

          LeadLeft.scale(1.0,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          PullLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight.scale(0.75,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.scale(1.0,1.5),

          PullLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.75,0.75) +
          Forward
      ]),

    AnimatedCall('Clover and Trade',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',
      paths:[
          LeadRight.scale(1.0,1.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.0),

          LeadLeft.scale(1.0,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Clover and Triple Star Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      group:' ',isGenderSpecific:true,
      paths:[
          Forward +
          LeadLeft.changeBeats(2.5).scale(1.5,1.5) +
          LeadLeft.changeBeats(2.5).scale(1.5,1.0) +
          LeadLeft.changeBeats(2).scale(1.5,1.0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5),

          Forward +
          LeadRight.changeBeats(2.5).scale(1.5,1.5) +
          LeadRight.changeBeats(2.5).scale(1.5,1.0) +
          LeadRight.changeBeats(2).scale(1.5,1.0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-1.5),

          Forward_2 +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5),

          Forward_2 +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-1.5)
      ]),

    AnimatedCall('Cross Clover and',
      formation:Formation('Couples Facing Out'),
      group:' ',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,3.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.0),

          LeadRight.changeBeats(3).scale(0.5,3.5) +
          LeadRight.scale(1.5,0.5) +
          LeadRight
      ]),

    AnimatedCall('Cross Clover and Swap Around',
      formation:Formation('Trade By'),
      group:' ',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,3.5) +
          LeadLeft.scale(1.5,2.5) +
          LeadLeft.scale(1.5,1.0),

          LeadRight.changeBeats(3).scale(0.5,3.5) +
          LeadRight.scale(1.5,1.0) +
          LeadRight.scale(1.5,1.0),

          Forward_2,

          FlipRight
      ]),
  ];

