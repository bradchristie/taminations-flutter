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
import '../c1/ah_so.dart' as c1;
import '../c1/alter_the_wave.dart' as c1;
import '../c1/anything_and_weave.dart' as c1;
import '../c1/chase_your_neighbor.dart' as c1;
import '../c1/cross_extend.dart' as c1;
import '../c1/cross_roll.dart' as c1;
import '../c1/cross_your_neighbor.dart' as c1;
import '../c1/follow_thru.dart' as c1;
import '../c1/recycle.dart' as c1;
import '../c1/reverse_explode.dart' as c1;
import '../c1/square_chain_the_top.dart' as c1;
import '../c1/step_and_flip.dart' as c1;
import '../c1/step_and_fold.dart' as c1;
import '../c1/wheel_fan_thru.dart' as c1;
import '../c1/zing.dart' as c1;
import '../c2/bounce.dart' as c2;
import '../c2/criss_cross_your_neighbor.dart' as c2;
import '../c2/cross_back.dart' as c2;
import '../c2/cross_the_k.dart' as c2;
import '../c2/peel_to_a_diamond.dart' as c2;
import '../c2/split_swap_around.dart' as c2;
import '../c2/turn_to_a_line.dart' as c2;
import '../c3a/couple_up.dart' as c3a;
import '../c3a/follow_to_a_diamond.dart' as c3a;
import '../c3a/lock_the_hinge.dart' as c3a;
import '../c3a/mini_chase.dart' as c3a;
import '../c3a/single_concept.dart' as c3a;
import '../c3b/bingo.dart' as c3b;

  final List<AnimatedCall> TandemConcept = [

    AnimatedCall('Tandem Bend the Line',
      formation:Formation('Two-Faced Lines RH'),
      group:'Tandem',
      paths:[
          CounterRotateRight_2_0.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0),

          CounterRotateRight_0_2.changeBeats(3).changehands(Hands.LEFT).skew(1.0,0.0),

          CounterRotateRight_m2_0.changeBeats(3).changehands(Hands.LEFT).skew(-1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(3).changehands(Hands.RIGHT).skew(-1.0,0.0)
      ]),

    AnimatedCall('Tandem Box Circulate',
      formation:Formation('Column RH GBGB'),
      group:'Tandem',
      paths:[
          RunRight +
          Forward_2,

          Forward_2 +
          RunRight,

          Forward_4.changeBeats(5),

          Forward_4.changeBeats(5)
      ]),

    AnimatedCall('Tandem Box Transfer',
      formation:Formation('Column RH GBGB'),
      group:'Tandem',
      paths:[
          CounterRotateRight_2_m4.changeBeats(3.333) +
          CounterRotateRight_2_m4.changeBeats(3.333) +
          CounterRotateRight_2_m4.changeBeats(3.333),

          CounterRotateRight_4_m2.changeBeats(3.333) +
          CounterRotateRight_4_m2.changeBeats(3.333) +
          CounterRotateRight_4_m2.changeBeats(3.333),

          Forward_2 +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          Forward_2,

          Forward_2 +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          Forward_2
      ]),

    AnimatedCall('Tandem Cast Off 3/4',
      formation:Formation('Column RH GBGB'),
      group:'Tandem',
      paths:[
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0)
      ]),

    AnimatedCall('Tandem Centers Run',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Tandem',
      paths:[
          DodgeRight.changeBeats(6),

          RunRight +
          Forward_4.changeBeats(3),

          Forward_4.changeBeats(3) +
          RunRight,

          DodgeRight.changeBeats(6)
      ]),

    AnimatedCall('Tandem Chase Right',
      formation:Formation('Completed Double Pass Thru'),
      group:'Tandem',
      paths:[
          Pivotbackwardright.skew(-1.0,0.0) +
          Forward_3 +
          RunRight +
          Forward_2,

          RunRight.changeBeats(5) +
          Forward_6,

          Pivotforwardleft.skew(-1.0,0.0) +
          Forward_5 +
          RunRight,

          Forward_2 +
          RunRight.changeBeats(5) +
          Forward_4
      ]),

    AnimatedCall('Tandem Left Chase',
      formation:Formation('Completed Double Pass Thru'),
      group:'Tandem',noDisplay: true,
      paths:[
          RunLeft.changeBeats(5) +
          Forward_6,

          Pivotbackwardleft.skew(-1.0,0.0) +
          Forward_3 +
          RunLeft +
          Forward_2,

          Forward_2 +
          RunLeft.changeBeats(5) +
          Forward_4,

          Pivotforwardright.skew(-1.0,0.0) +
          Forward_5 +
          RunLeft
      ]),

    AnimatedCall('Tandem Courtesy Turn',
      formation:Formation('Completed Double Pass Thru'),
      group:'Tandem',
      paths:[
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT),

          CounterRotateLeft_m2_0.changehands(Hands.RIGHT) +
          CounterRotateLeft_m2_0.changehands(Hands.RIGHT),

          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT),

          CounterRotateLeft_0_m2.changehands(Hands.RIGHT) +
          CounterRotateLeft_0_m2.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Tandem Crossfire',
      formation:Formation('Two-Faced Lines RH'),
      group:'Tandem',
      paths:[
          Forward_4.changeBeats(3) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          Forward_2,

          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          Forward_2,

          RunRight.changeBeats(6).scale(1.0,2.0) +
          Forward
      ]),

    AnimatedCall('Tandem Crossfire',
      formation:Formation('Two-Faced Lines LH'),
      group:'Tandem',noDisplay: true,
      paths:[
          RunLeft.changeBeats(6).scale(1.0,2.0) +
          Forward,

          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(-1.0,0.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          Forward_2,

          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(1.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          Forward_2,

          Forward_4.changeBeats(3) +
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Cut the Diamond',
      formation:Formation('T-Bone ULLD'),
      group:'Tandem',
      paths:[
          DodgeRight +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,0.5),

          ExtendLeft +
          LeadRight.changeBeats(4).scale(1.0,3.0).skew(0.0,-0.5),

          Forward +
          ExtendLeft +
          Forward +
          LeadRight.skew(0.0,0.5),

          DodgeRight +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-0.5)
      ]),

    AnimatedCall('Tandem Cut the Diamond',
      formation:Formation('T-Bone DRRU'),
      group:'Tandem',noDisplay: true,
      paths:[
          DodgeLeft +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,0.5),

          Forward +
          ExtendRight +
          Forward +
          LeadLeft.skew(0.0,-0.5),

          ExtendRight +
          LeadLeft.changeBeats(4).scale(1.0,3.0).skew(0.0,0.5),

          DodgeLeft +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-0.5)
      ]),

    AnimatedCall('Tandem Diamond Circulate',
      formation:Formation('T-Bone ULLD'),
      group:'Tandem',
      taminator: '''
    If you have trouble visualizing the diamond, look at the center
    point of each tandem.
    ''',
      paths:[
          Forward.changeBeats(1.5) +
          LeadRight.changeBeats(2.5).scale(1.0,2.0),

          Forward +
          LeadRight.changeBeats(3).scale(1.0,2.0),

          Forward_3 +
          QuarterRight.skew(1.0,0.0),

          QuarterRight.skew(0.0,-1.0) +
          Forward_3
      ]),

    AnimatedCall('Tandem Diamond Circulate',
      formation:Formation('T-Bone DRRU'),
      group:'Tandem',noDisplay: true,
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          Forward_3,

          Forward_3 +
          QuarterLeft.skew(1.0,0.0),

          Forward +
          LeadLeft.changeBeats(3).scale(1.0,2.0),

          Forward.changeBeats(1.5) +
          LeadLeft.changeBeats(2.5).scale(1.0,2.0)
      ]),

    AnimatedCall('Tandem Dixie Style to a Wave',
      formation:Formation('Double Pass Thru'),
      group:'Tandem',
      paths:[
          Back.changeBeats(2) +
          DodgeRight +
          Forward.changeBeats(2) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-1.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.5) +
          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(0.5,1.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-1.5),

          Back_2 +
          DodgeRight +
          Forward_2 +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,1.0),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(2) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,0.5)
      ]),

    AnimatedCall('Tandem Fan the Top',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Tandem',
      paths:[
          CounterRotateRight_5_m1.changeBeats(9),

          CounterRotateLeft_m1_3.changeBeats(3) +
          CounterRotateLeft_m1_3.changeBeats(3) +
          CounterRotateLeft_m1_3.changeBeats(3),

          CounterRotateLeft_3_m1.changeBeats(3) +
          CounterRotateLeft_3_m1.changeBeats(3) +
          CounterRotateLeft_3_m1.changeBeats(3),

          CounterRotateRight_1_m5.changeBeats(9)
      ]),

    AnimatedCall('Tandem Fan the Top',
      formation:Formation('Ocean Waves LH BGGB'),
      group:'Tandem',noDisplay: true,
      paths:[
          CounterRotateLeft_1_5.changeBeats(9),

          CounterRotateRight_3_1.changeBeats(3) +
          CounterRotateRight_3_1.changeBeats(3) +
          CounterRotateRight_3_1.changeBeats(3),

          CounterRotateRight_m1_m3.changeBeats(3) +
          CounterRotateRight_m1_m3.changeBeats(3) +
          CounterRotateRight_m1_m3.changeBeats(3),

          CounterRotateLeft_5_1.changeBeats(9)
      ]),

    AnimatedCall('Tandem Flip the Diamond',
      formation:Formation('T-Bone ULLD'),
      group:'Tandem',
      paths:[
          Forward_2 +
          RunRight.skew(0.5,0.0),

          Forward +
          LeadRight.changeBeats(3).scale(1.0,2.0).skew(0.0,-0.5),

          Forward_3 +
          QuarterRight.skew(1.0,0.5),

          RunRight +
          Forward_2.skew(0.5,0.0)
      ]),

    AnimatedCall('Tandem Flip the Diamond',
      formation:Formation('T-Bone DRRU'),
      group:'Tandem',noDisplay: true,
      paths:[
          RunLeft +
          Forward_2.skew(0.5,0.0),

          Forward_3 +
          QuarterLeft.skew(1.0,-0.5),

          Forward +
          LeadLeft.changeBeats(3).scale(1.0,2.0).skew(0.0,0.5),

          Forward_2 +
          RunLeft.skew(0.5,0.0)
      ]),

    AnimatedCall('Tandem Follow Your Neighbor',
      formation:Formation('Column RH GBGB'),
      group:'Tandem',
      paths:[
          Forward_2 +
          CounterRotateRight_0_m2 +
          CounterRotateRight_0_m2 +
          CounterRotateRight_0_m2.skew(0.0,-0.5),

          Forward_2 +
          CounterRotateRight_2_0 +
          CounterRotateRight_2_0 +
          CounterRotateRight_2_0.skew(0.0,0.5),

          Forward_2 +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-0.5),

          Forward_2 +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,0.5)
      ]),

    AnimatedCall('Tandem Follow Your Neighbor',
      formation:Formation('Column LH GBGB'),
      group:'Tandem',noDisplay: true,
      paths:[
          Forward_2 +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-0.5),

          Forward_2 +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,0.5),

          Forward_2 +
          CounterRotateLeft_2_0 +
          CounterRotateLeft_2_0 +
          CounterRotateLeft_2_0.skew(0.0,-0.5),

          Forward_2 +
          CounterRotateLeft_0_2 +
          CounterRotateLeft_0_2 +
          CounterRotateLeft_0_2.skew(0.0,0.5)
      ]),

    AnimatedCall('Tandem Follow Your Neighbor',
      formation:Formation('Column LH GBGB'),
      group:'Tandem',noDisplay: true,
      paths:[
          Forward_2 +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-0.5),

          Forward_2 +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,0.5),

          Forward_2 +
          CounterRotateLeft_2_0 +
          CounterRotateLeft_2_0 +
          CounterRotateLeft_2_0.skew(0.0,-0.5),

          Forward_2 +
          CounterRotateLeft_0_2 +
          CounterRotateLeft_0_2 +
          CounterRotateLeft_0_2.skew(0.0,0.5)
      ]),

    AnimatedCall('Tandem Hinge',
      formation:Formation('Column RH GBGB'),
      group:'Tandem',
      paths:[
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0)
      ]),

    AnimatedCall('Tandem Partner Hinge',
      formation:Formation('Completed Double Pass Thru'),
      group:'Tandem',
      paths:[
          QuarterLeft.changeBeats(3).skew(-2.0,2.5),

          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-0.5),

          QuarterLeft.changeBeats(3).skew(0.0,-0.5),

          CounterRotateRight_2_0.changeBeats(3).skew(0.0,0.5)
      ]),

    AnimatedCall('Tandem Pass the Ocean',
      formation:Formation('Double Pass Thru'),
      group:'Tandem',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_4 +
          QuarterRight.skew(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterLeft.changeBeats(4).skew(1.0,-1.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          LeadRight.changeBeats(4).scale(2.0,3.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward +
          QuarterLeft.changeBeats(4).skew(0.0,2.5)
      ]),

    AnimatedCall('Tandem Pass Thru',
      formation:Formation('Double Pass Thru'),
      group:'Tandem',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tandem Peel Off',
      formation:Formation('Column RH GBGB'),
      group:'Tandem',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          Forward_4.changeBeats(3),

          Forward.changeBeats(2) +
          RunLeft,

          Forward_2 +
          Pivotbackwardleft.changeBeats(4).skew(-1.0,0.0),

          Forward_2 +
          Pivotforwardright.changeBeats(4).scale(1.0,0.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Peel Off',
      formation:Formation('Column LH GBGB'),
      group:'Tandem',noDisplay: true,
      paths:[
          Forward_2 +
          Pivotforwardleft.changeBeats(4).scale(1.0,0.5).skew(1.0,0.0),

          Forward_2 +
          Pivotbackwardright.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(2) +
          RunRight,

          RunRight.skew(-1.0,0.0) +
          Forward_4.changeBeats(3)
      ]),

    AnimatedCall('Tandem Quarter Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      group:'Tandem',fractions:'2',
      paths:[
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(-1.0,0.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,1.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(1.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-1.0)
      ]),

    AnimatedCall('Tandem Right and Left Thru',
      formation:Formation('Double Pass Thru'),
      group:'Tandem',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5) +
          CounterRotateLeft_0_m2.changehands(Hands.RIGHT) +
          CounterRotateLeft_0_m2.changehands(Hands.RIGHT),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5) +
          CounterRotateLeft_m2_0.changehands(Hands.RIGHT) +
          CounterRotateLeft_m2_0.changehands(Hands.RIGHT),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Tandem Right Roll to a Wave',
      formation:Formation('Column LH GBGB'),
      group:'Tandem',
      paths:[
          Forward.changeBeats(2),

          Forward_3.changeBeats(4),

          Forward.changeBeats(2) +
          RunRight,

          RunRight.skew(-1.0,0.0) +
          Forward_4
      ]),

    AnimatedCall('Tandem Scoot Back',
      formation:Formation('Column RH GBGB'),
      group:'Tandem',
      paths:[
          RunRight.changeBeats(5) +
          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3) +
          RunRight.changeBeats(5),

          Forward_2 +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          Forward_2,

          Forward_2 +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          Forward_2
      ]),

    AnimatedCall('Tandem Single Wheel',
      formation:Formation('Completed Double Pass Thru'),
      group:'Tandem',
      paths:[
          FlipLeft.scale(1.0,0.5).skew(-1.0,0.0) +
          Forward_2.scale(0.6,1.0),

          FlipRight.changeBeats(5).scale(1.0,0.5).skew(0.4,0.0),

          Forward.changeBeats(2) +
          FlipLeft.scale(1.0,0.5),

          Forward_3 +
          FlipRight.scale(1.0,0.5).skew(0.7,0.0)
      ]),

    AnimatedCall('Tandem Square Chain Thru',
      formation:Formation('Double Pass Thru'),
      group:'Tandem',fractions:'5;4;4',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          CounterRotateRight_2_0.changeBeats(3).skew(0.0,-1.5) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          Stand.changeBeats(4) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          Forward_2.changeBeats(3),

          Forward_2 +
          CounterRotateLeft_2_0.changeBeats(3).skew(2.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          CounterRotateRight_0_m2.changeBeats(3).skew(0.0,-1.5) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          Stand.changeBeats(4) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          Forward_2.changeBeats(3),

          Forward_2 +
          CounterRotateLeft_0_2.changeBeats(3).skew(2.0,0.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Tandem Swing Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Tandem',fractions:'4',
      paths:[
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(1.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-1.0),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0),

          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,1.0),

          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(-1.0,0.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,1.0)
      ]),

    AnimatedCall('Tandem Switch the Wave',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Tandem',
      paths:[
          Forward_4.changeBeats(3) +
          RunRight.changeBeats(5).scale(1.0,2.0),

          RunRight +
          Forward_4.changeBeats(3),

          Forward_4.changeBeats(3) +
          RunRight,

          RunRight.changeBeats(5).scale(1.0,2.0) +
          Forward_4.changeBeats(3)
      ]),

    AnimatedCall('Tandem Switch the Wave',
      formation:Formation('Ocean Waves LH BGGB'),
      group:'Tandem',noDisplay: true,
      paths:[
          RunLeft.changeBeats(5).scale(1.0,2.0) +
          Forward_4.changeBeats(3),

          Forward_4.changeBeats(3) +
          RunLeft,

          RunLeft +
          Forward_4.changeBeats(3),

          Forward_4.changeBeats(3) +
          RunLeft.changeBeats(5).scale(1.0,2.0)
      ]),

    AnimatedCall('Tandem Touch 1/4',
      formation:Formation('Double Pass Thru'),
      group:'Tandem',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT),

          Forward_2 +
          CounterRotateRight_2_0.changehands(Hands.RIGHT),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT),

          Forward_2 +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Tandem Walk and Dodge',
      formation:Formation('Column RH GBGB'),
      group:'Tandem',
      paths:[
          DodgeRight.changeBeats(4),

          DodgeRight.changeBeats(4),

          Forward_4,

          Forward_4
      ]),

    AnimatedCall('Tandem Zoom',
      formation:Formation('Column RH GBGB'),
      group:'Tandem',
      paths:[
          FlipLeft.changeBeats(2).scale(0.75,0.75) +
          Forward_6 +
          FlipLeft.changeBeats(2).scale(0.75,0.75) +
          Forward_2,

          Forward_2 +
          FlipLeft.changeBeats(2).scale(0.75,0.75) +
          Forward_6 +
          FlipLeft.changeBeats(2).scale(0.75,0.75),

          Forward_4,

          Forward_4
      ]),
    c1.Recycle.where((tam) =>
      tam.title == 'Tandem 2/3 Recycle').first.xref(title: 'Tandem 2/3 Recycle').xref(group: 'Tandem (C-1)'),
    c1.AhSo.where((tam) =>
      tam.title == 'Tandem Ah So').first.xref(title: 'Tandem Ah So').xref(group: 'Tandem (C-1)'),
    c1.AlterTheWave.where((tam) =>
      tam.title == 'Tandem Alter the Wave').first.xref(title: 'Tandem Alter the Wave').xref(group: 'Tandem (C-1)'),
    c1.Recycle.where((tam) =>
      tam.title == 'Tandem Box Recycle').first.xref(title: 'Tandem Box Recycle').xref(group: 'Tandem (C-1)'),
    c1.ChaseYourNeighbor.where((tam) =>
      tam.title == 'Tandem Chase Your Neighbor').first.xref(title: 'Tandem Chase Your Neighbor').xref(group: 'Tandem (C-1)'),
    c1.CrossExtend.where((tam) =>
      tam.title == 'Tandem Cross Extend').first.xref(title: 'Tandem Cross Extend').xref(group: 'Tandem (C-1)'),
    c1.CrossRoll.where((tam) =>
      tam.title == 'Tandem Cross Roll').first.xref(title: 'Tandem Cross Roll').xref(group: 'Tandem (C-1)'),
    c1.CrossYourNeighbor.where((tam) =>
      tam.title == 'Tandem Cross Your Neighbor').first.xref(title: 'Tandem Cross Your Neighbor').xref(group: 'Tandem (C-1)'),
    c1.FollowThru.where((tam) =>
      tam.title == 'Tandem Follow Thru').first.xref(title: 'Tandem Follow Thru').xref(group: 'Tandem (C-1)'),
    c1.ReverseExplode.where((tam) =>
      tam.title == 'Tandem Reverse Explode').first.xref(title: 'Tandem Reverse Explode').xref(group: 'Tandem (C-1)'),
    c1.SquareChainTheTop.where((tam) =>
      tam.title == 'Tandem Square Chain the Top').first.xref(title: 'Tandem Square Chain the Top').xref(group: 'Tandem (C-1)'),
    c1.StepAndFlip.where((tam) =>
      tam.title == 'Tandem Step and Flip').first.xref(title: 'Tandem Step and Flip').xref(group: 'Tandem (C-1)'),
    c1.StepAndFold.where((tam) =>
      tam.title == 'Tandem Step and Fold').first.xref(title: 'Tandem Step and Fold').xref(group: 'Tandem (C-1)'),
    c1.AnythingAndWeave.where((tam) =>
      tam.title == 'Tandem Weave').first.xref(title: 'Tandem Weave').xref(group: 'Tandem (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'Tandem Wheel Fan Thru').first.xref(title: 'Tandem Wheel Fan Thru').xref(group: 'Tandem (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'Tandem Left Wheel Fan Thru').first.xref(title: 'Tandem Left Wheel Fan Thru').xref(group: 'Tandem (C-1)'),
    c1.Zing.where((tam) =>
      tam.title == 'Tandem Zing').first.xref(title: 'Tandem Zing').xref(group: 'Tandem (C-1)'),
    c2.Bounce.where((tam) =>
      tam.title == 'Tandem Bounce the Centers').first.xref(title: 'Tandem Bounce the Centers').xref(group: 'Tandem (C-2)'),
    c2.CrissCrossYourNeighbor.where((tam) =>
      tam.title == 'Tandem Criss Cross Your Neighbor').first.xref(title: 'Tandem Criss Cross Your Neighbor').xref(group: 'Tandem (C-2)'),
    c2.CrossBack.where((tam) =>
      tam.title == 'Tandem Cross Back').first.xref(title: 'Tandem Cross Back').xref(group: 'Tandem (C-2)'),
    c2.PeelToADiamond.where((tam) =>
      tam.title == 'Tandem Peel to a Diamond').first.xref(title: 'Tandem Peel to a Diamond').xref(group: 'Tandem (C-2)'),
    c2.SplitSwapAround.where((tam) =>
      tam.title == 'Tandem Reverse Split Swap Around').first.xref(title: 'Tandem Reverse Split Swap Around').xref(group: 'Tandem (C-2)'),
    c2.SplitSwapAround.where((tam) =>
      tam.title == 'Tandem Split Swap Around').first.xref(title: 'Tandem Split Swap Around').xref(group: 'Tandem (C-2)'),
    c2.CrossTheK.where((tam) =>
      tam.title == 'Tandem the K').first.xref(title: 'Tandem The K').xref(group: 'Tandem (C-2)'),
    c2.PeelToADiamond.where((tam) =>
      tam.title == 'Tandem Trail to a Diamond').first.xref(title: 'Tandem Trail to a Diamond').xref(group: 'Tandem (C-2)'),
    c2.TurnToALine.where((tam) =>
      tam.title == 'Tandem Turn to a Line').first.xref(title: 'Tandem Turn to a Line').xref(group: 'Tandem (C-2)'),
    c3a.CoupleUp.where((tam) =>
      tam.title == 'Tandem Couple Up').first.xref(title: 'Tandem Couple Up').xref(group: 'Tandem (C-3A)'),
    c3a.FollowToADiamond.where((tam) =>
      tam.title == 'Tandem Follow to a Diamond').first.xref(title: 'Tandem  Follow to a Diamond').xref(group: 'Tandem (C-3A)'),
    c3a.LockTheHinge.where((tam) =>
      tam.title == 'Tandem Hinge the Lock').first.xref(title: 'Tandem Hinge the Lock').xref(group: 'Tandem (C-3A)'),
    c3a.LockTheHinge.where((tam) =>
      tam.title == 'Tandem Lock the Hinge').first.xref(title: 'Tandem Lock the Hinge').xref(group: 'Tandem (C-3A)'),
    c3a.MiniChase.where((tam) =>
      tam.title == 'Tandem Mini Chase').first.xref(title: 'Tandem Mini Chase').xref(group: 'Tandem (C-3A)'),
    c3a.SingleConcept.where((tam) =>
      tam.title == 'Tandem Single Checkmate').first.xref(title: 'Tandem Single Checkmate').xref(group: 'Tandem (C-3A)'),
    c3b.Bingo.where((tam) =>
      tam.title == 'Tandem Bingo').first.xref(title: 'Tandem Bingo').xref(group: 'Tandem (C-3B)'),
  ];

