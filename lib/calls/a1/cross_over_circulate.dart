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

  final List<AnimatedCall> CrossOverCirculate = [

    AnimatedCall('Cross Over Circulate',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',fractions:'3',
      paths:[
          ExtendRight.changeBeats(3).scale(1.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.5,1.0),

          ExtendLeft.changeBeats(3).scale(2.5,1.0) +
          ExtendLeft.changeBeats(3).scale(1.5,1.0),

          QuarterRight.skew(0.1,-1.0) +
          Forward_2.changeBeats(3) +
          QuarterRight.skew(1.0,-0.1),

          QuarterRight.skew(0.1,-1.0) +
          Forward_2.changeBeats(3) +
          QuarterRight.skew(1.0,-0.1)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',fractions:'3',
      paths:[
          QuarterLeft.skew(0.1,1.0) +
          Forward_2.changeBeats(3) +
          QuarterLeft.skew(1.0,0.1),

          QuarterLeft.skew(0.1,1.0) +
          Forward_2.changeBeats(3) +
          QuarterLeft.skew(1.0,0.1),

          ExtendRight.changeBeats(3).scale(1.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.5,1.0),

          ExtendLeft.changeBeats(3).scale(2.5,1.0) +
          ExtendLeft.changeBeats(3).scale(1.5,1.0)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',fractions:'3',
      paths:[
          QuarterLeft.skew(0.1,1.0) +
          Forward_2.changeBeats(3) +
          QuarterLeft.skew(1.0,0.1),

          QuarterLeft.skew(0.1,1.0) +
          Forward_2.changeBeats(3) +
          QuarterLeft.skew(1.0,0.1),

          LeadRight +
          Forward_2.changeBeats(3) +
          LeadRight,

          LeadRight +
          Forward_2.changeBeats(3) +
          LeadRight
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('Normal Lines'),
      from:'Facing Lines',fractions:'3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 2, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 2, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  )),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 0, cy2: -2.5, x2: 2, y2: -2.5, cx3: 1, cx4: 1, cy4: -.5, x4: 2, y4: -.5  )),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
      Path.fromMovement(Movement.fromData(beats: 4, hands: Hands.NONE, cx1: 1, cy1: 0, cx2: 1.5, cy2: 1.5, x2: 2, y2: 1.5, cx3: 1, cx4: 1, cy4: .5, x4: 2, y4: .5  ))
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines Ends Facing Out',
      paths:[
          FlipLeft.changeBeats(6).scale(1.0,2.0),

          ExtendLeft.changeBeats(4.5).scale(3.0,2.0) +
          Forward.changeBeats(1.5),

          Forward.changeBeats(1.5) +
          ExtendRight.changeBeats(4.5).scale(3.0,2.0),

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines Ends Facing In',
      paths:[
          Forward.changeBeats(1.5) +
          ExtendRight.changeBeats(4.5).scale(3.0,2.0),

          FlipLeft.changeBeats(6).scale(1.0,2.0),

          RunRight.changeBeats(6).scale(1.0,2.0),

          ExtendLeft.changeBeats(4.5).scale(3.0,2.0) +
          Forward.changeBeats(1.5)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'3',
      paths:[
          Forward.changeBeats(1.5) +
          ExtendRight.changeBeats(4.5).scale(3.0,2.0),

          RunLeft.changeBeats(6).scale(0.5,2.0),

          Forward.changeBeats(1.5) +
          ExtendRight.changeBeats(4.5).scale(3.0,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',fractions:'3',
      paths:[
          RunLeft.changeBeats(6).scale(0.5,2.0),

          ExtendLeft.changeBeats(4).scale(2.5,2.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          RunRight.changeBeats(6).scale(1.5,2.0),

          ExtendLeft.changeBeats(4).scale(2.5,2.0) +
          Forward.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 lines #1',
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0),

          ExtendLeft.changeBeats(3.5).scale(2.0,2.0) +
          Forward_2.changeBeats(2.5),

          Stand.changeBeats(2) +
          ExtendRight.changeBeats(4).scale(4.0,2.0),

          ExtendLeft.changeBeats(3.5).scale(2.0,2.0) +
          Forward_2.changeBeats(2.5)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 lines #2',
      paths:[
          Forward_2.changeBeats(2.5) +
          ExtendRight.changeBeats(3.5).scale(2.0,2.0),

          RunLeft.changeBeats(6).scale(1.0,2.0),

          Stand.changeBeats(2) +
          ExtendRight.changeBeats(4).scale(4.0,2.0),

          ExtendLeft.changeBeats(3.5).scale(2.0,2.0) +
          Forward_2.changeBeats(2.5)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 lines #3',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(4).scale(4.0,2.0),

          ExtendLeft.changeBeats(3.5).scale(2.0,2.0) +
          Forward_2.changeBeats(2.5),

          RunRight.changeBeats(6).scale(1.0,2.0),

          ExtendLeft.changeBeats(3.5).scale(2.0,2.0) +
          Forward_2.changeBeats(2.5)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 lines #4',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(4).scale(4.0,2.0),

          ExtendLeft.changeBeats(3.5).scale(2.0,2.0) +
          Forward_2.changeBeats(2.5),

          Forward_2.changeBeats(2.5) +
          ExtendRight.changeBeats(3.5).scale(2.0,2.0),

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 lines #5',
      paths:[
          ExtendRight.changeBeats(6).scale(4.0,2.0),

          FlipLeft.changeBeats(6).scale(1.0,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 lines #6',
      paths:[
          FlipLeft.changeBeats(6).scale(1.0,2.0),

          ExtendLeft.changeBeats(6).scale(4.0,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0),

          RunRight.changeBeats(6).scale(1.5,2.0)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 lines #7',
      paths:[
          FlipLeft.changeBeats(6).scale(1.0,2.0),

          FlipLeft.changeBeats(6).scale(1.0,2.0),

          ExtendRight.changeBeats(6).scale(4.0,2.0),

          RunRight.changeBeats(6).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Over Circulate',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 lines #8',
      paths:[
          FlipLeft.changeBeats(6).scale(1.0,2.0),

          FlipLeft.changeBeats(6).scale(1.0,2.0),

          RunRight.changeBeats(6).scale(2.0,2.0),

          ExtendLeft.changeBeats(6).scale(4.0,2.0)
      ]),
  ];

