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

  final List<AnimatedCall> Start = [

    AnimatedCall('Those Facing, Start Right and Left Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      group:' ',fractions:'3',
      paths:[
          Stand.changeBeats(3).changehands(0) +
          BelleWheel,

          PullBy.changeBeats(3).scale(2.0,1.0) +
          BeauWheel,

        PullBy.changeBeats(3).scale(2.0,1.0) +
            BelleWheel,

        Stand.changeBeats(3).changehands(0) +
          BeauWheel
      ]),

    AnimatedCall('Men Start, Pass the Ocean',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      group:' ',isGenderSpecific:true,fractions:'3',
      paths:[
          Stand.changeBeats(2).changehands(0) +
          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,1.5),

          Stand.changeBeats(2).changehands(0) +
          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Ends Start, Load the Boat',
      formation:Formation('Inverted Lines Ends Facing In'),
      group:' ',fractions:'2;2;3',
      paths:[
          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(2.5,3.5) +
          LeadRight.changeBeats(2.5).scale(3.5,3.5) +
          LeadRight.changeBeats(2.5),

          Stand.changeBeats(2) +
          QuarterRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight +
          PassThru,

          Stand.changeBeats(2) +
          QuarterLeft.changeBeats(2).skew(-1.0,0.0) +
          FlipLeft +
          PassThru,

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,3.5) +
          LeadLeft.changeBeats(2.5).scale(2.5,2.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Ladies Start, Touch 1/4 and Cross',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      group:' ',isGenderSpecific:true,fractions:'2.5',
      paths:[
          Stand.changeBeats(2.5) +
          Stand.changeBeats(2).changehands(0),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          Stand.changeBeats(2).changehands(0),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: -.5, cy2: -2, x2: 2, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  )),

          Stand.changeBeats(2.5) +
      Path.fromMovement(Movement.fromData(beats: 2, hands: Hands.LEFT, cx1: 1, cy1: 0, cx2: -.5, cy2: -2, x2: 2, y2: -2, cx3: 1, cx4: 1, cy4: -.4, x4: 2, y4: -.4  ))
      ]),

    AnimatedCall('Girls Start, Spin the Top',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      group:' ',isGenderSpecific:true,fractions:'3',
      paths:[
          SwingRight +
          HingeLeft +
          HingeLeft +
          HingeLeft.scale(0.5,1.0),

          Stand.changeBeats(3) +
          HingeLeft +
          HingeLeft +
          HingeLeft.scale(0.5,1.0),

        SwingRight +
            LeadRight.changeBeats(4.5).scale(1.5,3.0),

        Stand.changeBeats(3) +
          LeadRight.changeBeats(4.5).scale(1.5,3.0)
      ]),
  ];

