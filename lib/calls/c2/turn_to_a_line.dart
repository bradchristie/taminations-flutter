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

  final List<AnimatedCall> TurnToALine = [

    AnimatedCall('Turn to a Line',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          FlipLeft.skew(1.5,0.0),

          FlipLeft.skew(1.5,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',
      paths:[
          FlipRight.skew(-2.0,0.0),

          FlipRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          FlipLeft.skew(2.0,0.0),

          FlipRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',
      paths:[
          FlipRight.skew(-2.0,0.0),

          FlipLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Trade By'),
      from:'Trade By',
      paths:[
          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns, Left-Hand Centers',
      paths:[
          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5),

          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5),

          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5),

          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5),

          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line and Roll',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0) +
          QuarterLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line and Spread',
      formation:Formation('Trade By'),
      group:' ',
      paths:[
          UmTurnRight.skew(-1.0,0.0),

          RunRight.scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnRight.skew(-1.0,0.0),

          RunRight.scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('All 8 Turn to a Line',
      formation:Formation('Static MiniWaves RH'),
      group:'  ',
      paths:[
          FlipLeft.changeBeats(5).skew(3.0,0.0),

          FlipRight.changeBeats(5).skew(-3.0,0.0),

          FlipLeft.changeBeats(5).skew(3.0,0.0),

          FlipRight.changeBeats(5).skew(-3.0,0.0)
      ]),

    AnimatedCall('As Couples Turn to a Line',
      formation:Formation('Two-Faced Lines RH'),
      group:'  ',
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,-2.0),

          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(0.5,0.0),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-1.0,-1.0) +
          LeadRight.changeBeats(2).changehands(Hands.LEFT).scale(0.5,1.0),

          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,3.0) +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.5,3.0)
      ]),

    AnimatedCall('Butterfly Turn to a Line',
      formation:Formation('Butterfly Trade By'),
      group:'   ',
      paths:[
          RunRight.scale(1.0,2.0).skew(-2.0,0.0),

          UmTurnRight,

          FlipRight,

          FlipRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Concentric Turn to a Line',
      formation:Formation('Double Pass Thru'),
      group:'   ',
      paths:[
          FlipLeft.skew(3.0,0.5),

          FlipLeft.skew(3.0,1.5),

          FlipLeft.skew(1.0,-1.5),

          FlipLeft.scale(1.0,0.75).skew(1.0,0.0)
      ]),

    AnimatedCall('Cross Concentric Turn to a Line (from columns)',
      formation:Formation('Double Pass Thru'),
      group:'   ',
      paths:[
          FlipLeft.scale(1.0,0.25).skew(3.0,0.0),

          FlipLeft.scale(1.0,0.75).skew(3.0,0.0),

          FlipLeft.scale(1.0,2.0).skew(1.0,-1.5),

          FlipLeft.scale(1.0,1.75).skew(1.0,0.0)
      ]),

    AnimatedCall('Cross Concentric Turn to a Line (from waves)',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'   ',
      paths:[
          Stand +
          DodgeRight +
          FlipLeft.skew(2.0,-1.5),

          FlipRight.scale(1.0,1.25).skew(-2.0,0.0),

          FlipLeft.scale(1.0,1.75).skew(2.0,0.0),

          Stand +
          DodgeRight +
          FlipRight.scale(1.0,0.75).skew(-2.0,0.0)
      ]),

    AnimatedCall('"O" Turn to a Line',
      formation:Formation('O Trade By'),
      group:'   ',
      paths:[
          FlipRight,

          FlipRight.skew(-2.0,0.0),

          RunRight.scale(1.0,2.0).skew(-2.0,0.0),

          UmTurnRight
      ]),

    AnimatedCall('Stretch Turn to a Line',
      formation:Formation('Completed Double Pass Thru'),
      group:'   ',
      paths:[
          FlipRight.skew(-1.0,0.0),

          UmTurnRight.skew(-1.0,0.0),

          UmTurnLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Turn to a Line',
      formation:Formation('Completed Double Pass Thru'),
      group:'   ',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          Forward_4,

          FlipRight.scale(1.0,0.5).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(4).scale(4.0,1.0),

          Forward.changeBeats(2) +
          RunRight.changeBeats(5),

          Forward.changeBeats(2) +
          RunRight.changeBeats(5)
      ]),

    AnimatedCall('Turn to a Line the Windmill Right',
      formation:Formation('Column RH GBGB'),
      group:'   ',
      paths:[
          HingeRight.changeBeats(1).scale(0.5,1.0) +
          LeadRight.changeBeats(4).scale(5.0,3.5) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          FlipRight.skew(-1.0,0.0) +
          CastLeft,

          FlipLeft.skew(1.0,0.0) +
          CastLeft,

          HingeRight.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(4).scale(4.0,2.5) +
          LeadLeft.changeBeats(4).scale(3.0,2.0)
      ]),
  ];

