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
import '../c1/chase_your_neighbor.dart' as c1;
import '../c1/cross_and_turn.dart' as c1;
import '../c1/cross_roll.dart' as c1;
import '../c1/follow_thru.dart' as c1;
import '../c1/recycle.dart' as c1;
import '../c1/reverse_explode.dart' as c1;
import '../c1/shakedown.dart' as c1;
import '../c1/step_and_fold.dart' as c1;
import '../c1/zing.dart' as c1;
import '../c2/bounce.dart' as c2;
import '../c2/circle_to_a_wave.dart' as c2;
import '../c2/criss_cross_your_neighbor.dart' as c2;
import '../c2/cross_the_k.dart' as c2;
import '../c2/peel_to_a_diamond.dart' as c2;
import '../c2/turn_to_a_line.dart' as c2;
import '../c3a/couple_up.dart' as c3a;
import '../c3a/mini_chase.dart' as c3a;

  final List<AnimatedCall> ConcentricConcept = [

    AnimatedCall('Concentric Box Counter Rotate',
      formation:Formation('Magic Column RH'),
      group:'(From columns) Concentric',
      taminator: '''
    Same as Counter Rotate
    ''',
      paths:[
          CounterRotateLeft_4_m2.changeBeats(5).changehands(Hands.LEFT),

          CounterRotateRight_0_m2.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateRight_2_0.changeBeats(5).changehands(Hands.RIGHT),

          CounterRotateLeft_m2_4.changeBeats(5).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Concentric Box Transfer',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Concentric',
      paths:[
          RunRight.changeBeats(6).scale(1.0,2.5) +
          Forward_3.changeBeats(5) +
          LeadRight,

          RunRight.changeBeats(4).scale(0.5,1.25) +
          Forward +
          LeadRight.scale(1.0,0.5),

          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(1.0,0.25),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          RunRight.changeBeats(6).scale(3.0,3.0) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          ExtendRight.changeBeats(3).scale(3.0,2.0)
      ]),

    AnimatedCall('Concentric Chase Right',
      formation:Formation('Completed Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          RunRight.skew(-1.0,0.0) +
          Forward_4 +
          RunRight.changeBeats(5).scale(1.0,2.0).skew(1.0,0.0),

          RunRight.changeBeats(5).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward_4 +
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          FlipRight.changeBeats(2.5),

          RunRight +
          Forward_2
      ]),

    AnimatedCall('Concentric Dixie Style to a Wave',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          DodgeRight.changeBeats(9).scale(1.0,0.875).skew(-0.5,0.0) +
          HingeLeft.scale(1.0,0.75),

          LeadLeft.changeBeats(1.5).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(2.5,3.0) +
          SwingLeft.scale(0.5,0.5),

          DodgeRight.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeLeft.scale(0.8,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.15,1.5) +
          ExtendRight.changeBeats(2).scale(1.15,1.25) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.2,0.75)
      ]),

    AnimatedCall('Concentric Do Paso',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          QuarterRight.skew(-0.5,-1.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(4).scale(3.5,2.5) +
          SwingRight.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.5,1.5) +
          UmTurnLeft.skew(1.0,0.0) +
          BeauWheel.scale(0.5,0.5) +
          BackHingeRight.scale(1.0,0.5),

          LeadLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4).scale(2.5,3.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(6).scale(2.5,3.5) +
          BelleWheel.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          QuarterRight.skew(-0.5,-1.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadLeft.scale(0.5,0.5) +
          UmTurnLeft.skew(0.0,-1.0) +
          BeauWheel.scale(0.5,0.5) +
          BackHingeRight.scale(1.0,0.5),

          LeadLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(0.5,1.5) +
          BelleWheel.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Concentric Double Star Thru',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          LeadRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(4).scale(3.5,1.5) +
          LeadLeft.scale(1.0,0.5),

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          QuarterLeft.skew(1.0,-0.5) +
          ExtendRight.changeBeats(4).scale(3.5,2.5) +
          QuarterRight.skew(1.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          LeadRight.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changehands(Hands.LEFT).scale(1.0,0.5) +
          LeadLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changehands(Hands.LEFT).scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.5)
      ]),

    AnimatedCall('Concentric Extend',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.5),

          ExtendRight.changeBeats(4).scale(3.0,1.5),

          ExtendLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Concentric Flutterwheel',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          Stand.changeBeats(8).changehands(0) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.5) +
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(3.0,-1.5),

          ExtendLeft.changeBeats(4).scale(3.0,4.0) +
          LeadRight.changeBeats(4).scale(2.5,3.0) +
          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(2.5,2.5) +
          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(3.0,-1.5),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          RunRight.changehands(Hands.RIGHT).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight.changehands(Hands.BOTH).scale(0.5,0.5) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.0,0.5)
      ]),

    AnimatedCall('Concentric Follow Your Neighbor',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Concentric',
      paths:[
          LeadRight.changeBeats(4).scale(1.5,1.0) +
          RunRight.changeBeats(6).scale(0.5,0.5) +
          Stand.changehands(0),

          LeadRight.changeBeats(2).scale(1.5,1.0) +
          RunRight.scale(0.5,0.5),

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(3).scale(3.0,1.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(2.5,2.0)
      ]),

    AnimatedCall('Concentric Lead Right',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          LeadRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(1.0,2.0) +
          ExtendLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,3.0),

          QuarterRight.changeBeats(2).changehands(Hands.GRIPLEFT) +
          ExtendLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,2.0),

          EighthRight.changeBeats(2).changehands(Hands.RIGHT).skew(0.707,-1.293) +
          EighthRight.changeBeats(2).changehands(Hands.RIGHT).skew(1.354,0.354),

          QuarterRight.changeBeats(4).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Concentric Pair Off',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,2.0),

          LeadRight.changeBeats(3).scale(2.0,2.0),

          QuarterLeft,

          QuarterRight
      ]),

    AnimatedCall('Concentric Pass In',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          LeadRight,

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          QuarterLeft.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Concentric Pass Thru',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          ExtendLeft.changeBeats(3).scale(3.0,1.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Concentric Peel and Trail',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Concentric',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,1.25).skew(-3.0,0.0) +
          Stand.changeBeats(4).changehands(0),

          FlipLeft.scale(1.0,0.25).skew(-1.0,0.0),

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          ExtendLeft.changeBeats(3).scale(3.0,1.5) +
          RunRight.changeBeats(5).scale(2.5,2.5)
      ]),

    AnimatedCall('Concentric Peel Off',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Concentric',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,1.25).skew(-3.0,0.0),

          FlipLeft.scale(1.0,0.25).skew(-1.0,0.0),

          UmTurnLeft.skew(1.0,-0.5),

          UmTurnLeft.changeBeats(4).skew(3.0,1.5)
      ]),

    AnimatedCall('Concentric Peel the Top',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Concentric',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,1.5).skew(-3.0,0.0) +
          LeadLeft.changeBeats(4).scale(3.5,4.0) +
          Stand.changeBeats(6).changehands(0),

          RunLeft.scale(1.0,0.5).skew(-1.0,0.0) +
          LeadLeft.changeBeats(3).scale(1.5,2.0),

          Forward +
          SwingRight +
          HingeRight.scale(0.5,1.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          LeadRight.changeBeats(4).scale(2.5,3.0) +
          RunRight.changeBeats(6).scale(2.0,2.5)
      ]),

    AnimatedCall('Concentric Recycle',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          UmTurnRight.changeBeats(5).skew(3.0,1.5),

      Path.fromMovement(Movement.fromData(beats: 5, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 3, cy2: 4.5, x2: 3, y2: 4.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  )),

          UmTurnRight.changeBeats(3).skew(1.0,-0.5),

      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -1, cy1: 2, cx2: 1, cy2: 2.5, x2: 1, y2: 2.5, cx3: 1, cx4: 2, cy4: 2, x4: 3, y4: 2  ))
      ]),

    AnimatedCall('Concentric Right and Left Thru',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.5) +
          ExtendRight.changeBeats(4).scale(3.0,2.5) +
          BeauWheel.scale(0.5,1.0),

          ExtendRight.changeBeats(4).scale(3.0,1.5) +
          ExtendLeft.changeBeats(4).scale(3.0,1.5) +
          BelleWheel.scale(0.5,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0)
      ]),

    AnimatedCall('Concentric Scoot Back',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Concentric',
      paths:[
          LeadRight.changeBeats(9).scale(2,1) +
              LeadRight.changeBeats(9).scale(1, 2),

          LeadRight.changeBeats(9) +
              LeadRight.changeBeats(9),

          ExtendRight.changeBeats(4).scale(1.0,0.5) +
          SwingRight.changeBeats(10).scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).scale(1.0,0.5),

          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          LeadRight.changeBeats(5).scale(4.0,3.0) +
          LeadRight.changeBeats(5).scale(3.0,4.0) +
          ExtendRight.changeBeats(4).scale(3.0,2.0)
      ]),

    AnimatedCall('Concentric Slide Thru',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendRight.changeBeats(3).scale(3.0,1.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('Concentric Star Thru',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',isGenderSpecific:true,
      taminator: '''
    I confess.  This is just a copy of the Concentric Slide Thru animation.
    ''',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendRight.changeBeats(3).scale(3.0,1.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('Concentric Square Thru',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.5) +
          LeadRight.changeBeats(4).scale(2.5,3.5) +
          LeadRight.changeBeats(4).scale(3.5,2.5) +
          LeadRight.changeBeats(4).scale(2.5,3.5) +
          ExtendRight.changeBeats(4).scale(3.0,1.5),

          ExtendRight.changeBeats(4).scale(3.0,1.5) +
          LeadLeft.changeBeats(4).scale(3.5,2.5) +
          LeadLeft.changeBeats(4).scale(2.5,3.5) +
          LeadLeft.changeBeats(4).scale(3.5,2.5) +
          ExtendLeft.changeBeats(4).scale(3.0,2.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Concentric Touch a Quarter',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.5) +
          HingeRight.scale(1.0,0.5),

          ExtendRight.changeBeats(3).scale(3.0,1.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Concentric Turn Thru',
      formation:Formation('Double Pass Thru'),
      group:'(From columns) Concentric',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(3.0,1.5),

          ExtendRight.changeBeats(3).scale(3.0,1.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,2.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Concentric Walk and Dodge',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Concentric',
      paths:[
          DodgeRight,

          DodgeRight,

          Forward_2,

          ExtendLeft.changeBeats(2).scale(3.0,1.0) +
          Forward.changeBeats(.67) +
          ExtendRight.changeBeats(1.33).scale(2.0,1.0)
      ]),

    AnimatedCall('Concentric Zig Zag',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Concentric',
      paths:[
          QuarterRight.changeBeats(4).skew(-2.0,2.0),

          QuarterRight.changeBeats(4),

          QuarterLeft.changeBeats(4),

          QuarterLeft.changeBeats(4).skew(2.0,2.0)
      ]),

    AnimatedCall('Concentric Zoom',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Concentric',
      paths:[
          QuarterLeft.changeBeats(1).skew(0.0,1.0) +
          LeadLeft.changeBeats(2).scale(2.0,2.0) +
          Forward_2.changeBeats(1.5) +
          LeadLeft.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changeBeats(1).skew(1.0,0.0),

          RunLeft.scale(0.5,0.5).skew(-1.0,0.0) +
          RunLeft.scale(0.5,0.5).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Concentric Cut the Diamond',
      formation:Formation('Concentric Diamonds RH'),
      group:'(From concentric diamonds) Concentric',
      paths:[
          LeadRight.changeBeats(4).scale(3.5,3.0),

          LeadRight.changeBeats(6).scale(1.5,1.0),

          DodgeRight.scale(1.0,0.75) +
          SwingRight.scale(0.5,0.5),

          RunRight.changeBeats(6).scale(3.0,3.25)
      ]),

    AnimatedCall('Concentric Diamond Circulate',
      formation:Formation('Concentric Diamonds Mixed'),
      group:'(From concentric diamonds) Concentric',
      paths:[
          LeadRight.changeBeats(6).scale(4.0,3.0),

          LeadLeft.changeBeats(6).scale(2.0,1.0),

          LeadLeft.changeBeats(6).scale(1.0,2.0),

          LeadRight.changeBeats(6).scale(3.0,4.0)
      ]),

    AnimatedCall('Concentric Flip the Diamond',
      formation:Formation('Concentric Diamonds Mixed'),
      group:'(From concentric diamonds) Concentric',
      paths:[
          LeadRight.changeBeats(3).scale(3.5,3.0),

          LeadLeft.changeBeats(3).scale(1.5,1.0),

          RunLeft.scale(1.0,0.75),

          RunRight.scale(1.0,0.75)
      ]),

    AnimatedCall('Concentric Diamond Step and Fold',
      formation:Formation('Concentric Diamonds Mixed'),
      group:'(From concentric diamonds) Concentric',
      paths:[
          Forward,

          Forward,

          FlipLeft.scale(1.0,0.5).skew(1.0,0.0),

          RunRight.changeBeats(4).scale(1.0,1.5).skew(3.0,0.0)
      ]),

    AnimatedCall('Concentric Chase Right',
      formation:Formation('Lines Facing Out'),
      group:'(From lines) Concentric',
      paths:[
          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(4).scale(2.0,3.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          RunRight.changeBeats(2.5) +
          Forward_4.changeBeats(3.5),

          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward_4.changeBeats(3.5)
      ]),

    AnimatedCall('Concentric Pass In',
      formation:Formation('Normal Lines'),
      group:'(From lines) Concentric',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5)
      ]),

    AnimatedCall('Concentric Pass Out',
      formation:Formation('Normal Lines'),
      group:'(From lines) Concentric',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(3.0,-1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(3.0,0.5)
      ]),

    AnimatedCall('Concentric Pass the Ocean',
      formation:Formation('Normal Lines'),
      group:'(From lines) Concentric',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.5,3.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.scale(1.5,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeLeft.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(2.5,2.5)
      ]),

    AnimatedCall('Concentric Pass the Sea',
      formation:Formation('Normal Lines'),
      group:'(From lines) Concentric',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,3.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.scale(0.5,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.scale(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.5,2.5)
      ]),

    AnimatedCall('Concentric Right and Left Thru',
      formation:Formation('Normal Lines'),
      group:'(From lines) Concentric',
      paths:[
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          BeauWheel.scale(0.67,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          BelleWheel.scale(0.67,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Concentric Slide Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      group:'(From lines) Concentric',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward +
          LeadLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Concentric Star Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:270),
  ]),
      group:'(From lines) Concentric',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward +
          LeadLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Concentric Square Thru',
      formation:Formation('Normal Lines'),
      group:'(From lines) Concentric',
      paths:[
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(2.5,3.5) +
          LeadRight.changeBeats(3).scale(3.5,2.5) +
          LeadRight.changeBeats(3).scale(2.5,3.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.5,3.5) +
          LeadLeft.changeBeats(3).scale(3.5,2.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Concentric Touch a Quarter',
      formation:Formation('Normal Lines'),
      group:'(From lines) Concentric',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(0.5,0.5).skew(0.5,1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(0.5,0.5).skew(0.5,-1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.5)
      ]),

    AnimatedCall('Concentric Zoom',
      formation:Formation('Two-Faced Lines RH'),
      group:'(From lines) Concentric',
      paths:[
          Forward_4.changeBeats(6),

          Forward_4.changeBeats(6),

          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          RunLeft.scale(1.0,0.5).skew(2.0,0.0),

          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          RunLeft.scale(1.0,0.5).skew(2.0,0.0)
      ]),

    AnimatedCall('Concentric Star Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:270),
  ]),
      group:'(From T-Bones) Concentric',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(4).scale(3.0,2.5),

          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Concentric Cast Off 3/4',
      formation:Formation('Thar LH Boys'),
      group:'(From thar) Concentric',
      paths:[
          CastLeft.changeBeats(12),

          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          CastLeft.changeBeats(12),

          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Concentric Bend the Line',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'(From tidal formation) Concentric',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.5),

          QuarterRight.changeBeats(4).skew(-3.0,-0.5),

          QuarterLeft.changeBeats(3).changehands(Hands.GRIPLEFT).skew(1.0,-0.5),

          QuarterLeft.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(-1.0,-1.5)
      ]),

    AnimatedCall('Concentric Crossfire',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'(From tidal formation) Concentric',
      paths:[
          Forward_2 +
          RunRight.scale(2.0,2.25).skew(1.0,0.0),

          RunRight.changeBeats(6).scale(3.0,2.5) +
          ExtendRight.changeBeats(4).scale(3.0,1.5),

          RunLeft.changeBeats(4).scale(1.0,1.25).skew(1.0,0.0),

          SwingLeft.scale(0.5,0.75) +
          Forward
      ]),

    AnimatedCall('Concentric Explode the Wave',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'(From tidal formation) Concentric',
      paths:[
          LeadRight.changeBeats(4).scale(3.5,3.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4).scale(2.5,2.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(2).scale(1.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Concentric Fan the Top',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'(From tidal formation) Concentric',
      paths:[
          HingeRight.changeBeats(6).changehands(0).scale(3.5,3.5),

          CastLeft.changeBeats(6).changehands(0).scale(2.5,2.5),

          HingeRight.changeBeats(6).changehands(0).scale(1.5,1.5),

          CastLeft.changeBeats(6).scale(0.5,0.5)
      ]),

    AnimatedCall('Concentric Half Tag the Line',
      formation:Formation('Tidal Line RH'),
      group:'(From tidal formation) Concentric',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.5),

          LeadRight.changeBeats(4).scale(3.0,4.5),

          QuarterRight.changeBeats(4).skew(1.0,0.5),

          LeadRight.changeBeats(4).scale(1.0,2.5)
      ]),

    AnimatedCall('Concentric Hinge',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'(From tidal formation) Concentric',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.5),

          QuarterRight.changeBeats(3).skew(3.0,0.5),

          QuarterRight.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.5),

          HingeRight.changeBeats(3).scale(1.0,0.5).skew(0.0,-1.0)
      ]),

    AnimatedCall('Concentric Linear Cycle',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
  ]),
      group:'(From tidal formation) Concentric',
      paths:[
          HingeRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          Forward_2 +
          RunRight.changeBeats(5).scale(1.0,3.0),

          HingeRight.scale(1.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-1.0,0.0) +
          Forward_2 +
          UmTurnRight.changeBeats(4).skew(2.0,0.0),

          HingeRight.scale(1.0,0.5) +
          Forward_3 +
          FlipRight,

          HingeRight.scale(1.0,0.5) +
          FlipRight +
          Forward +
          UmTurnRight.changeBeats(2).skew(2.0,0.0)
      ]),

    AnimatedCall('Concentric Lockit',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'(From tidal formation) Concentric',
      paths:[
          LeadRight.changeBeats(6).scale(3.5,3.5),

          LeadLeft.changeBeats(4).scale(2.5,2.5),

          LeadRight.changeBeats(2).scale(1.5,1.5),

          HingeLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Concentric Mix',
      formation:Formation('Two-Faced Tidal Line LH'),
      group:'(From tidal formation) Concentric',
      paths:[
          DodgeLeft.changeBeats(1).scale(1.0,0.5) +
          RunLeft.changeBeats(5).scale(2.0,2.5),

          RunLeft.changeBeats(5).scale(2.0,3.0) +
          Stand.changehands(0),

          RunRight,

          DodgeRight.changeBeats(1).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Concentric Recycle',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'(From tidal formation) Concentric',
      paths:[
          RunRight.changeBeats(6).skew(3.0,-2.5),

          RunRight.changeBeats(3).scale(0.5,0.5).skew(-1.0,0.0) +
          UmTurnRight.changeBeats(3).skew(2.0,-2.5),

          RunRight.changeBeats(4).skew(1.0,-0.5),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(0.5,-0.5)
      ]),

    AnimatedCall('Concentric Spin the Top',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'(From tidal formation) Concentric',
      paths:[
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          LeadLeft.changeBeats(2).scale(2.5,2.5) +
          LeadLeft.changeBeats(2).scale(2.5,2.5) +
          LeadLeft.changeBeats(2).scale(2.5,2.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          LeadRight.changeBeats(6).scale(3.5,3.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5)
      ]),

    AnimatedCall('Concentric Swing Thru',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'(From tidal formation) Concentric',
      paths:[
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          RunLeft.changeBeats(4).scale(1.5,2.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          Stand.changeBeats(4).changehands(0),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          Stand.changeBeats(4).changehands(0)
      ]),

    AnimatedCall('Concentric Trade the Wave',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'(From tidal formation) Concentric',
      paths:[
          RunRight.changeBeats(8).scale(3.5,3.0),

          RunLeft.changeBeats(8).scale(2.5,3.0),

          RunRight.changeBeats(6).scale(1.5,1.0),

          RunLeft.changeBeats(6).scale(0.5,1.0)
      ]),

    AnimatedCall('Concentric Turn and Deal',
      formation:Formation('Tidal Line RH'),
      group:'(From tidal formation) Concentric',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.25).skew(3.0,0.0),

          RunRight.changeBeats(4).scale(1.0,1.75).skew(3.0,0.0),

          FlipRight.changeBeats(4).scale(1.0,0.25).skew(1.0,0.0),

          FlipRight.changeBeats(4).scale(1.0,0.75).skew(1.0,0.0)
      ]),

    AnimatedCall('Concentric Veer Right',
      formation:Formation('Tidal Line RH'),
      group:'(From tidal formation) Concentric',
      paths:[
          Forward +
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,2.5),

          Forward +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,3.5),

          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,0.5) +
          Stand.changeBeats(2).changehands(Hands.RIGHT),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,1.5) +
          Stand.changeBeats(2).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Concentric Wheel and Deal',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'(From tidal formation) Concentric',
      paths:[
          RunRight.changeBeats(6).changehands(Hands.RIGHT).skew(3.0,-2.5),

          UmTurnRight.changeBeats(6).changehands(Hands.LEFT).skew(3.0,-1.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,-0.5)
      ]),

    AnimatedCall('Concentric Wheel and Deal',
      formation:Formation('Two-Faced Tidal Line LH'),
      group:'Concentric',noDisplay: true,
      paths:[
          RunLeft.changeBeats(6).changehands(Hands.LEFT).skew(3.0,2.5),

          UmTurnLeft.changeBeats(6).changehands(Hands.RIGHT).skew(3.0,1.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,-0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.5)
      ]),

    AnimatedCall('Concentric Wheel and Deal',
      formation:Formation('Tidal Line RH'),
      group:'Concentric',noDisplay: true,
      paths:[
          RunRight.changeBeats(6).changehands(Hands.RIGHT).skew(3.0,-2.5),

          UmTurnRight.changeBeats(6).changehands(Hands.LEFT).skew(3.0,-1.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,-0.5),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.5)
      ]),

    AnimatedCall('Concentric Wheel and Deal',
      formation:Formation('Tidal Line LH'),
      group:'Concentric',noDisplay: true,
      paths:[
          UmTurnLeft.changeBeats(6).changehands(Hands.RIGHT).skew(3.0,1.5),

          RunLeft.changeBeats(6).changehands(Hands.LEFT).skew(3.0,2.5),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,-0.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.5)
      ]),
    c1.Recycle.where((tam) =>
      tam.title == 'Concentric 2/3 Recycle').first.xref(title: 'Concentric 2/3 Recycle').xref(group: 'Concentric (C-1)'),
    c1.Recycle.where((tam) =>
      tam.title == 'Concentric Box Recycle').first.xref(title: 'Concentric Box Recycle').xref(group: 'Concentric (C-1)'),
    c1.ChaseYourNeighbor.where((tam) =>
      tam.title == 'Concentric Chase Your Neighbor').first.xref(title: 'Concentric Chase Your Neighbor').xref(group: 'Concentric (C-1)'),
    c1.CrossAndTurn.where((tam) =>
      tam.title == 'Concentric Cross and Turn').first.xref(title: 'Concentric Cross and Turn').xref(group: 'Concentric (C-1)'),
    c1.CrossRoll.where((tam) =>
      tam.title == 'Concentric Cross Roll').first.xref(title: 'Concentric Cross Roll').xref(group: 'Concentric (C-1)'),
    c1.FollowThru.where((tam) =>
      tam.title == 'Concentric Follow Thru').first.xref(title: 'Concentric Follow Thru').xref(group: 'Concentric (C-1)'),
    c1.CrossAndTurn.where((tam) =>
      tam.title == 'Concentric Reverse Cross and Turn').first.xref(title: 'Concentric Reverse Cross and Turn').xref(group: 'Concentric (C-1)'),
    c1.ReverseExplode.where((tam) =>
      tam.title == 'Concentric Reverse Explode').first.xref(title: 'Concentric Reverse Explode').xref(group: 'Concentric (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'Concentric Shakedown').first.xref(title: 'Concentric Shakedown').xref(group: 'Concentric (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'Concentric Left Shakedown').first.xref(title: 'Concentric Left Shakedown').xref(group: 'Concentric (C-1)'),
    c1.StepAndFold.where((tam) =>
      tam.title == 'Concentric Step and Fold').first.xref(title: 'Concentric Step and Fold').xref(group: 'Concentric (C-1)'),
    c1.StepAndFold.where((tam) =>
      tam.title == 'Concentric Diamond Step and Fold').first.xref(title: 'Concentric Diamond Step and Fold').xref(group: 'Concentric (C-1)'),
    c1.Zing.where((tam) =>
      tam.title == 'Concentric Zing').first.xref(title: 'Concentric Zing').xref(group: 'Concentric (C-1)'),
    c2.Bounce.where((tam) =>
      tam.title == 'Concentric Bounce the Boys').first.xref(title: 'Concentric Bounce the Boys').xref(group: 'Concentric (C-2)'),
    c2.CircleToAWave.where((tam) =>
      tam.title == 'Concentric Circle to a Wave').first.xref(title: 'Concentric Circle to a Wave').xref(group: 'Concentric (C-2)'),
    c2.CrissCrossYourNeighbor.where((tam) =>
      tam.title == 'Concentric Criss Cross Your Neighbor').first.xref(title: 'Concentric Criss Cross Your Neighbor').xref(group: 'Concentric (C-2)'),
    c2.PeelToADiamond.where((tam) =>
      tam.title == 'Concentric Peel to a Diamond').first.xref(title: 'Concentric Peel to a Diamond').xref(group: 'Concentric (C-2)'),
    c2.CrossTheK.where((tam) =>
      tam.title == 'Concentric the K').first.xref(title: 'Concentric The K').xref(group: 'Concentric (C-2)'),
    c2.PeelToADiamond.where((tam) =>
      tam.title == 'Concentric Trail to a Diamond').first.xref(title: 'Concentric Trail to a Diamond').xref(group: 'Concentric (C-2)'),
    c2.TurnToALine.where((tam) =>
      tam.title == 'Concentric Turn to a Line').first.xref(title: 'Concentric Turn to a Line').xref(group: 'Concentric (C-2)'),
    c3a.CoupleUp.where((tam) =>
      tam.title == 'Concentric Couple Up').first.xref(title: 'Concentric Couple Up').xref(group: 'Concentric (C-3A)'),
    c3a.MiniChase.where((tam) =>
      tam.title == 'Concentric Mini Chase').first.xref(title: 'Concentric Mini Chase').xref(group: 'Concentric (C-3A)'),
  ];

