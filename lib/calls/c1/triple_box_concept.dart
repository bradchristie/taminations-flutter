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

  final List<AnimatedCall> TripleBoxConcept = [

    AnimatedCall('Triple Box Circulate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        Dancer.fromData(gender:Gender.PHANTOM,x:2,y:5,angle:180),
        Dancer.fromData(gender:Gender.PHANTOM,x:2,y:-5,angle:0),
  ]),
      group:'Triple Box',
      paths:[
          RunLeft.changeBeats(4),

          RunRight.changeBeats(4),

          Forward_4,

          Forward_4,

          Forward_4,

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Triple Box Counter Rotate',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:2,y:5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:5,angle:0),
        Dancer.fromData(gender:Gender.PHANTOM,x:-2,y:3,angle:180),
        Dancer.fromData(gender:Gender.PHANTOM,x:-2,y:1,angle:180),
  ]),
      group:'Triple Box',
      paths:[
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0),

          CounterRotateLeft_2_0.skew(1.0,0.0),

          CounterRotateRight_2_0.skew(1.0,0.0),

          CounterRotateRight_0_m2.skew(-1.0,0.0),

          CounterRotateLeft_0_2.skew(-1.0,0.0)
      ]),

    AnimatedCall('Triple Box Dixie Style to a Wave',
      formation:Formation('Phantom Lines In'),
      group:'Triple Box',
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75),

          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75),

          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Triple Box Flutterwheel',
      formation:Formation('Phantom Lines In'),
      group:'Triple Box',
      paths:[
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,0.25),

          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,0.25),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,0.25),

          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.5,0.5)
      ]),

    AnimatedCall('Triple Box Follow Your Neighbor and Spread',
      formation:Formation('Phantom Waves RH'),
      group:'Triple Box',
      paths:[
          Forward_2.changeBeats(1.5).skew(0.0,-0.125) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.changeBeats(2).skew(2.0,0.25),

          LeadRight.changeBeats(3) +
          RunRight.changeBeats(3),

          Forward_2.changeBeats(1.5).skew(0.0,-0.125) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.changeBeats(2).skew(2.0,0.25),

          LeadRight.changeBeats(3) +
          RunRight.changeBeats(3),

          LeadRight.changeBeats(3) +
          RunRight.changeBeats(3),

          Forward_2.changeBeats(1.5).skew(0.0,-0.125) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.changeBeats(2).skew(2.0,0.25)
      ]),

    AnimatedCall('Triple Box Pass In',
      formation:Formation('Phantom Lines In'),
      group:'Triple Box',
      taminator: '''
      Triple Box calls are always done in a box of 4.
      Other dancers are ignored.
      So here all dancers turn to face the center of their box.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Triple Box Pass the Ocean',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:5,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:5,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        Dancer.fromData(gender:Gender.PHANTOM,x:1,y:3,angle:90),
        Dancer.fromData(gender:Gender.PHANTOM,x:-1,y:3,angle:90),
  ]),
      group:'Triple Box',
      paths:[
          Forward +
          LeadRight.scale(1.5,1.0),

          Forward +
          LeadLeft.scale(0.5,1.0),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5),

          ExtendLeft.scale(1.0,0.5) +
          HingeLeft.changeBeats(2).scale(0.5,0.5),

          Forward +
          LeadLeft.scale(0.5,1.0),

          Forward +
          LeadRight.scale(1.5,1.0)
      ]),

    AnimatedCall('Triple Box Peel and Trail',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:5,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        Dancer.fromData(gender:Gender.PHANTOM,x:1,y:5,angle:270),
        Dancer.fromData(gender:Gender.PHANTOM,x:1,y:3,angle:270),
  ]),
      group:'Triple Box',
      paths:[
          RunLeft.skew(-1.0,0.0),

          Forward +
          SwingRight,

          RunLeft.skew(-1.0,0.0),

          Forward +
          SwingRight,

          Forward +
          SwingRight,

          RunLeft.skew(-1.0,0.0)
      ]),

    AnimatedCall('Triple Box Quarter In',
      formation:Formation('Phantom Lines In'),
      group:'Triple Box',
      paths:[
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.skew(1.0,0.0),

          QuarterRight.skew(1.0,0.0),

          QuarterLeft.skew(1.0,0.0),

          QuarterLeft.skew(1.0,0.0),

          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Triple Box Right and Left Thru',
      formation:Formation('Phantom Lines In'),
      group:'Triple Box',
      paths:[
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Triple Box Boys Run',
      formation:Formation('Phantom Waves RH'),
      group:'Triple Box',isGenderSpecific:true,
      paths:[
          RunRight,

          DodgeRight,

          RunRight,

          DodgeRight,

          DodgeRight,

          RunRight
      ]),

    AnimatedCall('Triple Box Scoot Back',
      formation:Formation('Phantom Waves RH'),
      group:'Triple Box',
      paths:[
          ExtendRight.scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(2.0,0.25),

          FlipRight.changeBeats(6),

          ExtendRight.scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(2.0,0.25),

          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          ExtendRight.scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(2.0,0.25)
      ]),

    AnimatedCall('Triple Box Square Thru',
      formation:Formation('Phantom Lines In'),
      group:'Triple Box',
      paths:[
          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Triple Box Wheel Thru',
      formation:Formation('Phantom Lines In'),
      group:'Triple Box',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,2.0),

          QuarterRight.changeBeats(3).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,2.0),

          QuarterRight.changeBeats(3).skew(1.0,0.0),

          QuarterRight.changeBeats(3).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,2.0)
      ]),

    AnimatedCall('Triple Column Pass and Roll',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:3,y:2,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:0,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:0,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:1,y:2,angle:0),
        Dancer.fromData(gender:Gender.PHANTOM,x:1,y:-2,angle:0),
        Dancer.fromData(gender:Gender.PHANTOM,x:3,y:-2,angle:180),
  ]),
      group:'Triple Column',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward_2 +
          UmTurnRight.skew(0.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          FlipRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.scale(1.0,0.5) +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,2.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          Forward_2 +
          RunRight.scale(1.0,1.75)
      ]),

    AnimatedCall('Triple Line Turn and Deal',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:4,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:4,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        Dancer.fromData(gender:Gender.PHANTOM,x:4,y:-1,angle:180),
        Dancer.fromData(gender:Gender.PHANTOM,x:4,y:-3,angle:180),
  ]),
      group:'Triple Line',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Triple Wave 2/3 Recycle',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:4,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:4,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        Dancer.fromData(gender:Gender.PHANTOM,x:4,y:1,angle:180),
        Dancer.fromData(gender:Gender.PHANTOM,x:4,y:3,angle:0),
  ]),
      group:'Triple Wave',
      paths:[
          CastRight,

          LeadRight.changeBeats(4.5).scale(1.0,5.0),

          CastRight,

          LeadRight.changeBeats(4.5).scale(1.0,5.0),

          CastRight,

          LeadRight.changeBeats(4.5).scale(1.0,5.0)
      ]),

    AnimatedCall('Triple Wave Recycle',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:.5,angle:180),
        Dancer.fromData(gender:Gender.PHANTOM,x:0,y:5.5,angle:0),
        Dancer.fromData(gender:Gender.PHANTOM,x:0,y:4.5,angle:180),
  ]),
      group:'Triple Wave',
      paths:[
          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5),

          RunRight.changeBeats(4).skew(2.0,-0.5),

          RunRight.changeBeats(4).skew(2.0,-0.5),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5),

          RunRight.changeBeats(4).skew(2.0,-0.5),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5)
      ]),

    AnimatedCall('Triple Wave Swing Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:4,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:4,y:3,angle:0),
        Dancer.fromData(gender:Gender.PHANTOM,x:4,y:-1,angle:0),
        Dancer.fromData(gender:Gender.PHANTOM,x:4,y:-3,angle:180),
  ]),
      group:'Triple Wave',
      paths:[
          Stand.changeBeats(3) +
          SwingLeft,

          SwingRight +
          SwingLeft,

          SwingRight,

          SwingRight +
          SwingLeft,

          SwingRight,

          SwingRight +
          SwingLeft
      ]),
  ];

