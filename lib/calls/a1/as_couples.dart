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
import '../a1/cross_trail_thru.dart' as a1;
import '../a1/linear_cycle.dart' as a1;
import '../a1/lock_it.dart' as a1;
import '../a1/mix.dart' as a1;
import '../a1/pair_off.dart' as a1;
import '../a1/pass_in.dart' as a1;
import '../a1/pass_the_sea.dart' as a1;
import '../a1/quarter_in.dart' as a1;
import '../a1/quarter_thru.dart' as a1;
import '../a1/right_roll_to_a_wave.dart' as a1;
import '../a1/scoot_and_dodge.dart' as a1;
import '../a1/square_chain_thru.dart' as a1;
import '../a1/swap_around.dart' as a1;
import '../a1/turn_and_deal.dart' as a1;
import '../a1/wheel_thru.dart' as a1;
import '../a2/box_counter_rotate.dart' as a2;
import '../a2/box_transfer.dart' as a2;
import '../a2/pass_and_roll.dart' as a2;
import '../a2/peel_and_trail.dart' as a2;
import '../a2/recycle.dart' as a2;
import '../a2/remake.dart' as a2;
import '../a2/scoot_and_weave.dart' as a2;
import '../a2/slip.dart' as a2;
import '../a2/swing_and_mix.dart' as a2;
import '../a2/switch_the_wave.dart' as a2;
import '../a2/trail_off.dart' as a2;
import '../c1/ah_so.dart' as c1;
import '../c1/alter_the_wave.dart' as c1;
import '../c1/anything_and_weave.dart' as c1;
import '../c1/chase_your_neighbor.dart' as c1;
import '../c1/cross_and_turn.dart' as c1;
import '../c1/cross_extend.dart' as c1;
import '../c1/cross_roll.dart' as c1;
import '../c1/cross_your_neighbor.dart' as c1;
import '../c1/dixie_diamond.dart' as c1;
import '../c1/follow_thru.dart' as c1;
import '../c1/recycle.dart' as c1;
import '../c1/reverse_explode.dart' as c1;
import '../c1/shakedown.dart' as c1;
import '../c1/square_chain_the_top.dart' as c1;
import '../c1/step_and_flip.dart' as c1;
import '../c1/step_and_fold.dart' as c1;
import '../c1/switch_the_line.dart' as c1;
import '../c1/wheel_fan_thru.dart' as c1;
import '../c1/zing.dart' as c1;
import '../c2/bounce.dart' as c2;
import '../c2/criss_cross_your_neighbor.dart' as c2;
import '../c2/cross_back.dart' as c2;
import '../c2/cross_the_k.dart' as c2;
import '../c2/peel_to_a_diamond.dart' as c2;
import '../c2/split_swap_around.dart' as c2;
import '../c2/turn_to_a_line.dart' as c2;
import '../c2/wheel_the_ocean.dart' as c2;
import '../c3a/1_4_mix.dart' as c3a;
import '../c3a/couple_up.dart' as c3a;
import '../c3a/follow_to_a_diamond.dart' as c3a;
import '../c3a/lock_the_hinge.dart' as c3a;
import '../c3a/mini_chase.dart' as c3a;
import '../c3a/single_concept.dart' as c3a;
import '../c3b/bingo.dart' as c3b;

  final List<AnimatedCall> AsCouples = [

    AnimatedCall('As Couples Cast Off Three Quarters',
      formation:Formation('Tidal Line LH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          QuarterRight.changeBeats(2) +
          QuarterRight.changeBeats(2) +
          QuarterRight.changeBeats(3).changehands(Hands.BOTH).skew(-1.0,0.0),

          BackHingeLeft.changeBeats(2) +
          BackHingeLeft.changeBeats(2) +
          BackHingeLeft.changeBeats(3).scale(3.0,1.0),

          SwingRight.changeBeats(4).scale(2.0,2.0) +
          HingeRight.changeBeats(3).scale(3.0,2.0),

          SwingRight.changeBeats(4) +
          HingeRight.changeBeats(3).changehands(Hands.BOTH)
      ]),

    AnimatedCall('As Couples Chase Right',
      formation:Formation('Lines Facing Out'),
      group:'As Couples (with calls through Plus)',
      paths:[
          BeauWheel.scale(1.0,-1.0).skew(-2.0,0.0) +
          Forward_2.changehands(Hands.LEFT) +
          RunRight.changeBeats(3).changehands(Hands.LEFT),

          BelleWheel.scale(1.0,-1.0).skew(-2.0,0.0) +
          Forward_2.changehands(Hands.RIGHT) +
          RunRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.0),

          RunRight.changeBeats(3).changehands(Hands.LEFT) +
          Forward_4.changehands(Hands.LEFT),

          RunRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.0) +
          Forward_4.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('As Couples Centers Cross Run',
      formation:Formation('Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          DodgeRight,

          DodgeRight,

          RunRight.changehands(Hands.RIGHT).scale(2.0,2.5),

          RunRight.changehands(Hands.LEFT).scale(1.0,1.5)
      ]),

    AnimatedCall('As Couples Crossfire',
      formation:Formation('Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.25,3.25).skew(2.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.LEFT).scale(1.75,1.75).skew(2.0,0.0),

          SwingRight.scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.5),

          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5)
      ]),

    AnimatedCall('As Couples Dixie Style to a Wave',
      formation:Formation('Normal Lines'),
      group:'As Couples (with calls through Plus)',
      paths:[
          BackSashayRight.changeBeats(6).changehands(Hands.RIGHT).scale(1.0,2.0) +
          HingeLeft.changeBeats(2).changehands(Hands.BOTH).scale(0.5,1.0),

          BackSashayRight.changeBeats(6).changehands(Hands.LEFT).scale(1.0,2.0) +
          HingeLeft.changeBeats(2).scale(1.5,3.0),

          ExtendLeft.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(2.0,2.5) +
          ExtendRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(2.0,2.5) +
          HingeLeft.changeBeats(2).changehands(Hands.BOTH).scale(0.5,1.0),

          ExtendLeft.changeBeats(3).changehands(Hands.GRIPLEFT).scale(2.0,3.5) +
          ExtendRight.changeBeats(3).changehands(Hands.GRIPLEFT).scale(2.0,3.5) +
          HingeLeft.changeBeats(2).scale(1.5,3.0)
      ]),

    AnimatedCall('As Couples Explode the Wave',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          LeadRight.changeBeats(3).scale(3.5,3.5) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(2.5,2.5) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5),

          HingeLeft.changeBeats(3).scale(1.5,1.5) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5),

          HingeLeft.changeBeats(3).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5)
      ]),

    AnimatedCall('As Couples Extend',
      formation:Formation('Quarter Lines RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.5,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.5,2.0),

          Forward.changeBeats(2).changehands(Hands.LEFT).scale(1.5,1.0),

          Forward.changeBeats(2).changehands(Hands.RIGHT).scale(1.5,1.0)
      ]),

    AnimatedCall('As Couples Fan the Top',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.5,3.5),

          LeadRight.changeBeats(4.5).scale(2.5,2.5),

          SwingLeft.scale(1.5,1.5) +
          HingeLeft.scale(1.5,1.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('As Couples Ends Fold',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          RunRight.changehands(Hands.RIGHT).skew(2.0,-0.5),

          UmTurnRight.changehands(Hands.LEFT).skew(2.0,0.5),

          DodgeRight.changehands(Hands.LEFT).scale(1.0,0.75),

          DodgeRight.changehands(Hands.BOTH).scale(1.0,0.25)
      ]),

    AnimatedCall('As Couples Ends Cross Fold',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          RunRight.changeBeats(5).changehands(Hands.RIGHT).skew(2.0,-4.5),

          UmTurnRight.changeBeats(5).changehands(Hands.LEFT).skew(2.0,-3.5),

          DodgeRight.changeBeats(5).changehands(Hands.LEFT).scale(1.0,0.75),

          DodgeRight.changeBeats(5).changehands(Hands.BOTH).scale(1.0,0.25)
      ]),

    AnimatedCall('As Couples Flutterwheel',
      formation:Formation('Normal Lines'),
      group:'As Couples (with calls through Plus)',
      paths:[
          Stand.changeBeats(2).changehands(Hands.RIGHT) +
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateRight_3_m1.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,1.0) +
          CounterRotateRight_3_m1.changeBeats(3).changehands(Hands.RIGHT).skew(2.0,1.0),

          Stand.changeBeats(2).changehands(Hands.LEFT) +
          Forward.changeBeats(3).changehands(Hands.LEFT) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.BOTH).skew(0.0,1.0) +
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.BOTH).skew(1.0,1.0),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(2.0,2.5) +
          BelleWheel.scale(0.5,-0.5).skew(1.0,-0.5) +
          CounterRotateRight_1_2.changeBeats(3).changehands(Hands.BOTH) +
          CounterRotateRight_1_2.changeBeats(3).changehands(Hands.BOTH),

          ExtendLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(2.0,3.5) +
          BeauWheel.scale(0.5,-0.5).skew(1.0,-0.5) +
          CounterRotateRight_0_3.changeBeats(3).changehands(Hands.LEFT) +
          CounterRotateRight_0_3.changeBeats(3).changehands(Hands.LEFT).skew(-1.0,0.0)
      ]),

    AnimatedCall('As Couples Follow Your Neighbor',
      formation:Formation('Two-Faced Lines RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.5) +
          SwingRight.scale(1.5,1.5) +
          HingeRight.scale(1.5,1.5),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          LeadRight.changeBeats(2).changehands(Hands.LEFT) +
          UmTurnRight.skew(0.0,0.5),

          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,3.0) +
          RunRight.skew(0.0,0.5)
      ]),

    AnimatedCall('As Couples Follow Your Neighbor',
      formation:Formation('Two-Faced Lines LH'),
      group:'As Couples (with calls through Plus)',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,3.0) +
          RunLeft.skew(0.0,-0.5),

          LeadLeft.changeBeats(2).changehands(Hands.RIGHT) +
          UmTurnLeft.skew(0.0,-0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          SwingLeft.scale(1.5,1.5) +
          HingeLeft.scale(1.5,1.5)
      ]),

    AnimatedCall('As Couples Half Sashay',
      formation:Formation('Normal Lines'),
      group:'As Couples (with calls through Plus)',
      paths:[
          BackSashayRight.changeBeats(6).changehands(Hands.RIGHT).scale(1.5,2.0),

          BackSashayRight.changeBeats(6).changehands(Hands.LEFT).scale(1.5,2.0),

          SashayLeft.changeBeats(6).changehands(Hands.RIGHT).scale(1.5,2.0),

          SashayLeft.changeBeats(6).changehands(Hands.LEFT).scale(1.5,2.0)
      ]),

    AnimatedCall('As Couples Ladies Center as the Men Sashay',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2.414,y:1,angle:-22.5),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:2.414,angle:247.5),
        Dancer.fromData(gender:Gender.BOY,x:-2.414,y:-1,angle:22.5),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:2.414,angle:292.5),
  ]),
      group:'As Couples (with calls through Plus)',
      paths:[
          SxtnthLeft +
          cl +
          cl +
          cl +
          cl +
          SxtnthRight,

          Forward.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.0).skew(0.0,0.2) +
          Stand.changeBeats(.5) +
          Back.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.0).skew(0.0,-0.2),

          SxtnthLeft +
          cl +
          cl +
          cl +
          cl +
          SxtnthRight,

          Forward.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.0).skew(0.0,-0.2) +
          Stand.changeBeats(.5) +
          Back.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.0).skew(0.0,0.2)
      ]),

    AnimatedCall('As Couples Left Swing Thru',
      formation:Formation('Two-Faced Tidal Line LH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          SwingLeft.scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(1.5,1.5),

          SwingLeft.scale(0.5,0.5),

          SwingLeft.scale(1.5,1.5)
      ]),

    AnimatedCall('As Couples Linear Cycle',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          HingeRight.scale(1.5,1.5) +
          Forward_4 +
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,2.25),

          HingeRight.scale(0.5,0.5) +
          Forward_4 +
          RunRight.changeBeats(4).changehands(Hands.LEFT).scale(0.5,0.75),

          HingeRight.scale(0.5,0.5) +
          RunRight.scale(0.5,0.5) +
          Forward_4 +
          BeauWheel.scale(1.0,-1.0).skew(0.0,0.5),

          HingeRight.scale(1.5,1.5) +
          RunRight.scale(1.5,1.5) +
          Forward_4 +
          BelleWheel.scale(1.0,-1.0).skew(0.0,1.5)
      ]),

    AnimatedCall('As Couples Pass the Ocean',
      formation:Formation('Normal Lines'),
      group:'As Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.5,3.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.5,2.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.5,1.5)
      ]),

    AnimatedCall('As Couples Peel Off',
      formation:Formation('Two-Faced Lines RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          BeauWheel.changeBeats(5).changehands(Hands.GRIPRIGHT).skew(2.0,-0.5),

          BelleWheel.changeBeats(5).changehands(Hands.GRIPLEFT).skew(2.0,-1.5),

          BelleWheel.changeBeats(5).changehands(Hands.GRIPLEFT).skew(-2.0,0.5),

          BeauWheel.changeBeats(5).changehands(Hands.GRIPRIGHT).skew(-2.0,1.5)
      ]),

    AnimatedCall('As Couples Peel the Top',
      formation:Formation('Two-Faced Lines RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.5) +
          SwingRight.scale(1.5,1.5) +
          HingeRight.scale(1.5,1.5),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          BelleWheel.changehands(Hands.GRIPLEFT).skew(-2.0,0.5) +
          LeadLeft.changeBeats(3.5).scale(3.5,3.5),

          BeauWheel.changehands(Hands.GRIPRIGHT).skew(-2.0,1.5) +
          LeadLeft.changeBeats(3.5).scale(2.5,2.5)
      ]),

    AnimatedCall('As Couples Recycle',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.5) +
          QuarterRight.changeBeats(4).changehands(Hands.RIGHT).skew(3.0,-1.0),

          LeadRight.changeBeats(4).scale(2.0,2.5) +
          QuarterRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          BeauWheel.changeBeats(4).scale(0.5,-0.5).skew(-1.0,-0.5) +
          BeauWheel.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,-1.0).skew(1.0,0.0),

          BelleWheel.changeBeats(4).scale(0.5,-0.5).skew(-1.0,-0.5) +
          BelleWheel.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,-1.0).skew(1.0,1.0)
      ]),

    AnimatedCall('As Couples Reverse Flutterwheel',
      formation:Formation('Normal Lines'),
      group:'As Couples (with calls through Plus)',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.GRIPRIGHT).scale(2.0,3.5) +
          BeauWheel.scale(0.5,0.5).skew(1.0,0.5) +
          CounterRotateLeft_0_m3.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateLeft_0_m3.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0),

          ExtendRight.changeBeats(2).changehands(Hands.GRIPLEFT).scale(2.0,2.5) +
          BelleWheel.scale(0.5,0.5).skew(1.0,0.5) +
          CounterRotateLeft_1_m2.changeBeats(3).changehands(Hands.BOTH) +
          CounterRotateLeft_1_m2.changeBeats(3).changehands(Hands.BOTH),

          Stand.changeBeats(2).changehands(Hands.RIGHT) +
          Forward.changeBeats(3).changehands(Hands.RIGHT) +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.BOTH).skew(0.0,-1.0) +
          CounterRotateLeft_2_0.changeBeats(3).changehands(Hands.BOTH).skew(1.0,-1.0),

          Stand.changeBeats(2).changehands(Hands.LEFT) +
          ExtendLeft.changeBeats(3).changehands(Hands.LEFT) +
          CounterRotateLeft_3_1.changeBeats(3).changehands(Hands.LEFT).skew(0.0,-1.0) +
          CounterRotateLeft_3_1.changeBeats(3).changehands(Hands.LEFT).skew(2.0,-1.0)
      ]),

    AnimatedCall('As Couples Right and Left Thru',
      formation:Formation('Normal Lines'),
      group:'As Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,2.0) +
          BeauWheel.scale(1.75,2.25),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,2.0) +
          BeauWheel.changehands(Hands.BOTH).scale(0.58,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          Forward_2 +
          BelleWheel.changehands(Hands.BOTH).scale(0.58,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          Forward_2 +
          BelleWheel.scale(1.75,2.25)
      ]),

    AnimatedCall('As Couples Centers Run',
      formation:Formation('Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          DodgeRight,

          DodgeRight,

          RunLeft.changehands(Hands.RIGHT).scale(1.0,0.5),

          RunLeft.changehands(Hands.LEFT).scale(2.0,1.5)
      ]),

    AnimatedCall('As Couples Scoot Back',
      formation:Formation('Two-Faced Lines RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.5) +
          SwingRight.scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.5),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5),

          RunRight.changeBeats(5).changehands(Hands.LEFT),

          RunRight.changeBeats(5).changehands(Hands.RIGHT).scale(2.5,3.0)
      ]),

    AnimatedCall('As Couples Scoot Back',
      formation:Formation('Two-Faced Lines LH'),
      group:'As Couples (with calls through Plus)',noDisplay: true,
      paths:[
          RunLeft.changeBeats(5).changehands(Hands.LEFT).scale(2.5,3.0),

          RunLeft.changeBeats(5).changehands(Hands.RIGHT),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          SwingLeft.scale(1.5,1.5) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5)
      ]),

    AnimatedCall('As Couples Slide Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      group:'As Couples (with calls through Plus)',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(3.0,-0.5)
      ]),

    AnimatedCall('As Couples Slide Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]),
      group:'As Couples (with calls through Plus)',isGenderSpecific:true,noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(3.0,-0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,0.5)
      ]),

    AnimatedCall('As Couples Spin the Top',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          SwingRight.scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(1.5,1.5) +
          HingeLeft.scale(1.5,1.5),

          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(2.5,2.5),

          SwingRight.scale(1.5,1.5) +
          LeadRight.changeBeats(4.5).scale(3.5,3.5)
      ]),

    AnimatedCall('As Couples Square Thru',
      formation:Formation('Normal Lines'),
      group:'As Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(1.5,3.5) +
          LeadRight.changeBeats(3).scale(3.5,1.5) +
          LeadRight.changeBeats(3).scale(1.5,3.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(3).scale(0.5,2.5) +
          LeadRight.changeBeats(3).scale(2.5,0.5) +
          LeadRight.changeBeats(3).scale(0.5,2.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(2.5,0.5) +
          LeadLeft.changeBeats(3).scale(0.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadLeft.changeBeats(3).scale(3.5,1.5) +
          LeadLeft.changeBeats(3).scale(1.5,3.5) +
          LeadLeft.changeBeats(3).scale(3.5,1.5) +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5)
      ]),

    AnimatedCall('As Couples Swing Thru',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          SwingRight.scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(1.5,1.5),

          SwingRight.scale(0.5,0.5),

          SwingRight.scale(1.5,1.5)
      ]),

    AnimatedCall('As Couples Touch a Quarter',
      formation:Formation('Normal Lines'),
      group:'As Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(2).changehands(Hands.BOTH).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,0.5) +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.5) +
          LeadRight.changeBeats(2).changehands(Hands.BOTH).scale(1.0,0.5)
      ]),

    AnimatedCall('As Couples Trade the Wave',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.5,2.5),

          RunRight.changeBeats(4).changehands(Hands.LEFT).scale(2.5,1.5),

          RunLeft.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,2.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(0.5,1.5)
      ]),

    AnimatedCall('As Couples Trade the Wave',
      formation:Formation('Two-Faced Tidal Line LH'),
      group:'As Couples (with calls through Plus)',noDisplay: true,
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,2.5),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(0.5,1.5),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.5,2.5),

          RunRight.changeBeats(4).changehands(Hands.LEFT).scale(2.5,1.5)
      ]),

    AnimatedCall('As Couples U-Turn Back',
      formation:Formation('Lines Facing Out'),
      group:'As Couples (with calls through Plus)',
      paths:[
          BelleWheel,

          BeauWheel,

          BeauWheel.scale(1.0,-1.0),

          BelleWheel.scale(1.0,-1.0)
      ]),

    AnimatedCall('As Couples Walk and Dodge',
      formation:Formation('Two-Faced Lines RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          Forward_4.changehands(Hands.RIGHT),

          Forward_4.changehands(Hands.LEFT),

          DodgeRight.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,2.0),

          DodgeRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0)
      ]),

    AnimatedCall('As Couples Zoom',
      formation:Formation('Two-Faced Lines RH'),
      group:'As Couples (with calls through Plus)',
      paths:[
          Forward_4.changehands(Hands.RIGHT),

          Forward_4.changehands(Hands.LEFT),

          RunLeft.changehands(Hands.LEFT).scale(2.0,2.0) +
          Forward_4 +
          RunLeft.changehands(Hands.LEFT).scale(2.0,2.0),

          RunLeft.changehands(Hands.RIGHT).scale(0.5,0.5) +
          Forward_4 +
          RunLeft.changehands(Hands.RIGHT).scale(0.5,0.5)
      ]),
    a1.CrossTrailThru.where((tam) =>
      tam.title == 'As Couples Cross Trail Thru').first.xref(title: 'As Couples Cross Trail Thru').xref(group: 'As Couples (with A-1 calls)'),
    a1.RightRollToAWave.where((tam) =>
      tam.title == 'As Couples Left Roll to a Wave' && tam.from == 'Lines Facing Out').first.xref(title: 'As Couples Left Roll to a Wave (from lines facing out)').xref(group: 'As Couples (with A-1 calls)'),
    a1.RightRollToAWave.where((tam) =>
      tam.title == 'As Couples Left Roll to a Wave' && tam.from == 'Two-Faced Lines').first.xref(title: 'As Couples Left Roll to a Wave (from two-faced lines)').xref(group: 'As Couples (with A-1 calls)'),
    a1.SquareChainThru.where((tam) =>
      tam.title == 'As Couples Left Square Chain Thru').first.xref(title: 'As Couples Left Square Chain Thru').xref(group: 'As Couples (with A-1 calls)'),
    a1.WheelThru.where((tam) =>
      tam.title == 'As Couples Left Wheel Thru').first.xref(title: 'As Couples Left Wheel Thru').xref(group: 'As Couples (with A-1 calls)'),
    a1.LinearCycle.where((tam) =>
      tam.title == 'As Couples Linear Cycle').first.xref(title: 'As Couples Linear Cycle').xref(group: 'As Couples (with A-1 calls)'),
    a1.LockIt.where((tam) =>
      tam.title == 'As Couples Lockit').first.xref(title: 'As Couples Lockit').xref(group: 'As Couples (with A-1 calls)'),
    a1.Mix.where((tam) =>
      tam.title == 'As Couples Mix').first.xref(title: 'As Couples Mix').xref(group: 'As Couples (with A-1 calls)'),
    a1.PairOff.where((tam) =>
      tam.title == 'As Couples Pair Off').first.xref(title: 'As Couples Pair Off').xref(group: 'As Couples (with A-1 calls)'),
    a1.PassIn.where((tam) =>
      tam.title == 'As Couples Pass In').first.xref(title: 'As Couples Pass In').xref(group: 'As Couples (with A-1 calls)'),
    a1.PassIn.where((tam) =>
      tam.title == 'As Couples Pass Out').first.xref(title: 'As Couples Pass Out').xref(group: 'As Couples (with A-1 calls)'),
    a1.PassTheSea.where((tam) =>
      tam.title == 'As Couples Pass the Sea').first.xref(title: 'As Couples Pass the Sea').xref(group: 'As Couples (with A-1 calls)'),
    a1.QuarterIn.where((tam) =>
      tam.title == 'As Couples Quarter In').first.xref(title: 'As Couples Quarter In').xref(group: 'As Couples (with A-1 calls)'),
    a1.QuarterIn.where((tam) =>
      tam.title == 'As Couples Quarter Out').first.xref(title: 'As Couples Quarter Out').xref(group: 'As Couples (with A-1 calls)'),
    a1.QuarterThru.where((tam) =>
      tam.title == 'As Couples Quarter Thru').first.xref(title: 'As Couples Quarter Thru').xref(group: 'As Couples (with A-1 calls)'),
    a1.SwapAround.where((tam) =>
      tam.title == 'As Couples Reverse Swap Around').first.xref(title: 'As Couples Reverse Swap Around').xref(group: 'As Couples (with A-1 calls)'),
    a1.RightRollToAWave.where((tam) =>
      tam.title == 'As Couples Right Roll to a Wave' && tam.from == 'Lines Facing Out').first.xref(title: 'As Couples Right Roll to a Wave (from lines facing out)').xref(group: 'As Couples (with A-1 calls)'),
    a1.RightRollToAWave.where((tam) =>
      tam.title == 'As Couples Right Roll to a Wave' && tam.from == 'Two-Faced Lines').first.xref(title: 'As Couples Right Roll to a Wave (from two-faced lines)').xref(group: 'As Couples (with A-1 calls)'),
    a1.ScootAndDodge.where((tam) =>
      tam.title == 'As Couples Scoot and Dodge').first.xref(title: 'As Couples Scoot and Dodge').xref(group: 'As Couples (with A-1 calls)'),
    a1.SquareChainThru.where((tam) =>
      tam.title == 'As Couples Square Chain Thru').first.xref(title: 'As Couples Square Chain Thru').xref(group: 'As Couples (with A-1 calls)'),
    a1.SwapAround.where((tam) =>
      tam.title == 'As Couples Swap Around').first.xref(title: 'As Couples Swap Around').xref(group: 'As Couples (with A-1 calls)'),
    a1.QuarterThru.where((tam) =>
      tam.title == 'As Couples 3/4 Thru').first.xref(title: 'As Couples 3/4 Thru').xref(group: 'As Couples (with A-1 calls)'),
    a1.TurnAndDeal.where((tam) =>
      tam.title == 'As Couples Turn and Deal' && tam.from == 'Right-Hand Tidal Line').first.xref(title: 'As Couples Turn and Deal (from right-hand tidal line)').xref(group: 'As Couples (with A-1 calls)'),
    a1.TurnAndDeal.where((tam) =>
      tam.title == 'As Couples Turn and Deal' && tam.from == 'Left-Hand Tidal Line').first.xref(title: 'As Couples Turn and Deal (from left-hand tidal line)').xref(group: 'As Couples (with A-1 calls)'),
    a1.TurnAndDeal.where((tam) =>
      tam.title == 'As Couples Turn and Deal' && tam.from == 'Right-Hand Two-Faced Tidal Line').first.xref(title: 'As Couples Turn and Deal (from right-hand two-faced tidal line)').xref(group: 'As Couples (with A-1 calls)'),
    a1.TurnAndDeal.where((tam) =>
      tam.title == 'As Couples Turn and Deal' && tam.from == 'Left-Hand Two-Faced Tidal Line').first.xref(title: 'As Couples Turn and Deal (from left-hand two-faced tidal line)').xref(group: 'As Couples (with A-1 calls)'),
    a1.WheelThru.where((tam) =>
      tam.title == 'As Couples Wheel Thru').first.xref(title: 'As Couples Wheel Thru').xref(group: 'As Couples (with A-1 calls)'),
    a2.BoxCounterRotate.where((tam) =>
      tam.title == 'As Couples Box Counter Rotate').first.xref(title: 'As Couples Box Counter Rotate').xref(group: 'As Couples (A-2)'),
    a2.BoxTransfer.where((tam) =>
      tam.title == 'As Couples Box Transfer').first.xref(title: 'As Couples Box Transfer').xref(group: 'As Couples (A-2)'),
    a2.PassAndRoll.where((tam) =>
      tam.title == 'As Couples Pass and Roll').first.xref(title: 'As Couples Pass and Roll').xref(group: 'As Couples (A-2)'),
    a2.PeelAndTrail.where((tam) =>
      tam.title == 'As Couples Peel and Trail').first.xref(title: 'As Couples Peel and Trail').xref(group: 'As Couples (A-2)'),
    a2.Recycle.where((tam) =>
      tam.title == 'As Couples Recycle').first.xref(title: 'As Couples Recycle').xref(group: 'As Couples (A-2)'),
    a2.Remake.where((tam) =>
      tam.title == 'As Couples Remake').first.xref(title: 'As Couples Remake').xref(group: 'As Couples (A-2)'),
    a2.ScootAndWeave.where((tam) =>
      tam.title == 'As Couples Scoot and Weave').first.xref(title: 'As Couples Scoot and Weave').xref(group: 'As Couples (A-2)'),
    a2.Slip.where((tam) =>
      tam.title == 'As Couples Slide').first.xref(title: 'As Couples Slide').xref(group: 'As Couples (A-2)'),
    a2.Slip.where((tam) =>
      tam.title == 'As Couples Slip').first.xref(title: 'As Couples Slip').xref(group: 'As Couples (A-2)'),
    a2.Slip.where((tam) =>
      tam.title == 'As Couples Slither').first.xref(title: 'As Couples Slither').xref(group: 'As Couples (A-2)'),
    a2.Slip.where((tam) =>
      tam.title == 'As Couples Swing').first.xref(title: 'As Couples Swing').xref(group: 'As Couples (A-2)'),
    a2.SwingAndMix.where((tam) =>
      tam.title == 'As Couples Swing and Mix').first.xref(title: 'As Couples Swing and Mix').xref(group: 'As Couples (A-2)'),
    a2.SwitchTheWave.where((tam) =>
      tam.title == 'As Couples Switch the Wave').first.xref(title: 'As Couples Switch the Wave').xref(group: 'As Couples (A-2)'),
    a2.TrailOff.where((tam) =>
      tam.title == 'As Couples Trail Off').first.xref(title: 'As Couples Trail Off').xref(group: 'As Couples (A-2)'),
    c1.Recycle.where((tam) =>
      tam.title == 'As Couples 2/3 Recycle').first.xref(title: 'As Couples 2/3 Recycle').xref(group: 'As Couples (C-1)'),
    c1.AhSo.where((tam) =>
      tam.title == 'As Couples Ah So').first.xref(title: 'As Couples Ah So').xref(group: 'As Couples (C-1)'),
    c1.AlterTheWave.where((tam) =>
      tam.title == 'As Couples Alter the Wave').first.xref(title: 'As Couples Alter the Wave').xref(group: 'As Couples (C-1)'),
    c1.Recycle.where((tam) =>
      tam.title == 'As Couples Box Recycle').first.xref(title: 'As Couples Box Recycle').xref(group: 'As Couples (C-1)'),
    c1.ChaseYourNeighbor.where((tam) =>
      tam.title == 'As Couples Chase Your Neighbor').first.xref(title: 'As Couples Chase Your Neighbor').xref(group: 'As Couples (C-1)'),
    c1.CrossAndTurn.where((tam) =>
      tam.title == 'As Couples Cross and Turn').first.xref(title: 'As Couples Cross and Turn').xref(group: 'As Couples (C-1)'),
    c1.CrossExtend.where((tam) =>
      tam.title == 'As Couples Cross Extend').first.xref(title: 'As Couples Cross Extend').xref(group: 'As Couples (C-1)'),
    c1.CrossRoll.where((tam) =>
      tam.title == 'As Couples Cross Roll').first.xref(title: 'As Couples Cross Roll').xref(group: 'As Couples (C-1)'),
    c1.CrossYourNeighbor.where((tam) =>
      tam.title == 'As Couples Cross Your Neighbor').first.xref(title: 'As Couples Cross Your Neighbor').xref(group: 'As Couples (C-1)'),
    c1.DixieDiamond.where((tam) =>
      tam.title == 'As Couples Dixie Diamond').first.xref(title: 'As Couples Dixie Diamond').xref(group: 'As Couples (C-1)'),
    c1.FollowThru.where((tam) =>
      tam.title == 'As Couples Follow Thru').first.xref(title: 'As Couples Follow Thru').xref(group: 'As Couples (C-1)'),
    c1.CrossAndTurn.where((tam) =>
      tam.title == 'As Couples Reverse Cross and Turn').first.xref(title: 'As Couples Reverse Cross and Turn').xref(group: 'As Couples (C-1)'),
    c1.ReverseExplode.where((tam) =>
      tam.title == 'As Couples Reverse Explode').first.xref(title: 'As Couples Reverse Explode').xref(group: 'As Couples (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'As Couples Shakedown').first.xref(title: 'As Couples Shakedown').xref(group: 'As Couples (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'As Couples Left Shakedown').first.xref(title: 'As Couples Left Shakedown').xref(group: 'As Couples (C-1)'),
    c1.StepAndFlip.where((tam) =>
      tam.title == 'As Couples Step and Flip').first.xref(title: 'As Couples Step and Flip').xref(group: 'As Couples (C-1)'),
    c1.StepAndFold.where((tam) =>
      tam.title == 'As Couples Step and Fold').first.xref(title: 'As Couples Step and Fold').xref(group: 'As Couples (C-1)'),
    c1.SquareChainTheTop.where((tam) =>
      tam.title == 'As Couples Square Chain the Top').first.xref(title: 'As Couples Square Chain the Top').xref(group: 'As Couples (C-1)'),
    c1.SwitchTheLine.where((tam) =>
      tam.title == 'As Couples Switch the Line').first.xref(title: 'As Couples Switch the Line').xref(group: 'As Couples (C-1)'),
    c1.AnythingAndWeave.where((tam) =>
      tam.title == 'As Couples Weave').first.xref(title: 'As Couples Weave').xref(group: 'As Couples (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'As Couples Wheel Fan Thru').first.xref(title: 'As Couples Wheeel Fan Thru').xref(group: 'As Couples (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'As Couples Left Wheel Fan Thru').first.xref(title: 'As Couples Left Wheel Fan Thru').xref(group: 'As Couples (C-1)'),
    c1.Zing.where((tam) =>
      tam.title == 'As Couples Zing').first.xref(title: 'As Couples Zing').xref(group: 'As Couples (C-1)'),
    c2.Bounce.where((tam) =>
      tam.title == 'As Couples Bounce the Ends').first.xref(title: 'As Couples Bounce the Ends').xref(group: 'As Couples (C-2)'),
    c2.CrissCrossYourNeighbor.where((tam) =>
      tam.title == 'As Couples Criss Cross Your Neighbor').first.xref(title: 'As Couples Criss Cross Your Neighbor').xref(group: 'As Couples (C-2)'),
    c2.CrossBack.where((tam) =>
      tam.title == 'As Couples Cross Back').first.xref(title: 'As Couples Cross Back').xref(group: 'As Couples (C-2)'),
    c2.PeelToADiamond.where((tam) =>
      tam.title == 'As Couples Peel to a Diamond').first.xref(title: 'As Couples Peel to a Diamond').xref(group: 'As Couples (C-2)'),
    c2.SplitSwapAround.where((tam) =>
      tam.title == 'As Couples Reverse Split Swap Around').first.xref(title: 'As Couples Reverse Split Swap Around').xref(group: 'As Couples (C-2)'),
    c2.SplitSwapAround.where((tam) =>
      tam.title == 'As Couples Split Swap Around').first.xref(title: 'As Couples Split Swap Around').xref(group: 'As Couples (C-2)'),
    c2.CrossTheK.where((tam) =>
      tam.title == 'As Couples the K').first.xref(title: 'As Couples The K').xref(group: 'As Couples (C-2)'),
    c2.PeelToADiamond.where((tam) =>
      tam.title == 'As Couples Trail to a Diamond').first.xref(title: 'As Couples Trail to a Diamond').xref(group: 'As Couples (C-2)'),
    c2.TurnToALine.where((tam) =>
      tam.title == 'As Couples Turn to a Line').first.xref(title: 'As Couples Turn to a Line').xref(group: 'As Couples (C-2)'),
    c2.WheelTheOcean.where((tam) =>
      tam.title == 'As Couples Wheel the Ocean').first.xref(title: 'As Couples Wheel the Ocean').xref(group: 'As Couples (C-2)'),
    c2.WheelTheOcean.where((tam) =>
      tam.title == 'As Couples Wheel the Sea').first.xref(title: 'As Couples Wheel the Sea').xref(group: 'As Couples (C-2)'),
    c3a.Q14Mix.where((tam) =>
      tam.title == 'As Couples 1/4 Mix').first.xref(title: 'As Couples 1/4 Mix').xref(group: 'As Couples (C-3A)'),
    c3a.CoupleUp.where((tam) =>
      tam.title == 'As Couples Couple Up').first.xref(title: 'As Couples Couple Up').xref(group: 'As Couples (C-3A)'),
    c3a.FollowToADiamond.where((tam) =>
      tam.title == 'As Couples Follow to a Diamond').first.xref(title: 'As Couples Follow to a Diamond').xref(group: 'As Couples (C-3A)'),
    c3a.LockTheHinge.where((tam) =>
      tam.title == 'As Couples Hinge the Lock').first.xref(title: 'As Couples Hinge the Lock').xref(group: 'As Couples (C-3A)'),
    c3a.LockTheHinge.where((tam) =>
      tam.title == 'As Couples Lock the Hinge').first.xref(title: 'As Couples Lock the Hinge').xref(group: 'As Couples (C-3A)'),
    c3a.MiniChase.where((tam) =>
      tam.title == 'As Couples Mini Chase').first.xref(title: 'As Couples Mini Chase').xref(group: 'As Couples (C-3A)'),
    c3a.SingleConcept.where((tam) =>
      tam.title == 'As Couples Single Checkmate').first.xref(title: 'As Couples Single Checkmate').xref(group: 'As Couples (C-3A)'),
    c3b.Bingo.where((tam) =>
      tam.title == 'As Couples Bingo').first.xref(title: 'As Couples Bingo').xref(group: 'As Couples (C-3B)'),
  ];

