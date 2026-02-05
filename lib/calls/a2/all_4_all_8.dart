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
import '../a2/box_transfer.dart' as a2;
import '../a2/pass_and_roll.dart' as a2;
import '../a2/pass_and_roll_your_neighbor.dart' as a2;
import '../a2/peel_and_trail.dart' as a2;
import '../a2/recycle.dart' as a2;
import '../a2/remake.dart' as a2;
import '../a2/scoot_and_weave.dart' as a2;
import '../a2/slip.dart' as a2;
import '../a2/swing_and_mix.dart' as a2;
import '../a2/switch_the_wave.dart' as a2;
import '../a2/trail_off.dart' as a2;
import '../c1/alter_the_wave.dart' as c1;
import '../c1/anything_and_weave.dart' as c1;
import '../c1/chase_your_neighbor.dart' as c1;
import '../c1/cross_and_turn.dart' as c1;
import '../c1/cross_your_neighbor.dart' as c1;
import '../c1/dixie_diamond.dart' as c1;
import '../c1/dixie_sashay.dart' as c1;
import '../c1/follow_thru.dart' as c1;
import '../c1/phantom_formation.dart' as c1;
import '../c1/recycle.dart' as c1;
import '../c1/reverse_explode.dart' as c1;
import '../c1/shakedown.dart' as c1;
import '../c1/square_chain_the_top.dart' as c1;
import '../c1/step_and_fold.dart' as c1;
import '../c1/switch_the_line.dart' as c1;
import '../c1/tagging_calls_back_to_a_wave.dart' as c1;
import '../c1/vertical_tag.dart' as c1;
import '../c1/wheel_fan_thru.dart' as c1;
import '../c1/with_the_flow.dart' as c1;
import '../c1/zing.dart' as c1;
import '../c2/criss_cross_your_neighbor.dart' as c2;
import '../c2/cross_back.dart' as c2;
import '../c2/peel_to_a_diamond.dart' as c2;
import '../c2/rotate.dart' as c2;
import '../c2/turn_to_a_line.dart' as c2;
import '../c2/wheel_the_ocean.dart' as c2;
import '../c3a/follow_to_a_diamond.dart' as c3a;
import '../c3a/lock_the_hinge.dart' as c3a;
import '../c3a/mini_chase.dart' as c3a;

  final List<AnimatedCall> All4All8 = [

    AnimatedCall('All 4 Couples Chase Right',
      formation:Formation('Static Facing Out'),
      group:'All 4 Couples (with calls through Plus)',
      taminator: '''
      All 8 Chase Right may also be correct for this example.  The dancers
      are not required to weave around the outside to avoid collisions in the center.
    ''',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          ExtendRight.changeBeats(3).scale(2.0,1.0),

          RunRight.scale(1.0,0.5).skew(-2.0,0.0) +
          Forward_3 +
          RunRight.changeBeats(4).scale(1.0,1.5).skew(1.0,0.0),

          RunRight.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          ExtendRight.changeBeats(3).scale(2.0,1.0),

          RunRight.scale(1.0,0.5).skew(-2.0,0.0) +
          Forward_3 +
          RunRight.changeBeats(4).scale(1.0,1.5).skew(1.0,0.0)
      ]),

    AnimatedCall('All 4 Couples Fan the Top',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_3 +
          CastLeft,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_3 +
          CastLeft
      ]),

    AnimatedCall('All 4 Couples Left Chase',
      formation:Formation('Static Facing Out'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          Forward_3 +
          RunLeft.changeBeats(4).scale(1.0,1.5).skew(1.0,0.0),

          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          ExtendLeft.changeBeats(3).scale(2.0,1.0),

          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          Forward_3 +
          RunLeft.changeBeats(4).scale(1.0,1.5).skew(1.0,0.0),

          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          ExtendLeft.changeBeats(3).scale(2.0,1.0)
      ]),

    AnimatedCall('All 4 Couples Left Touch a Quarter',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft +
          Forward_2 +
          HingeLeft,

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          HingeLeft.skew(0.0,-1.0),

          ExtendLeft +
          Forward_2 +
          HingeLeft,

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          HingeLeft.skew(0.0,-1.0)
      ]),

    AnimatedCall('All 4 Couples Pass Thru',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft
      ]),

    AnimatedCall('All 4 Couples Pass the Ocean',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft +
          LeadRight,

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          QuarterLeft.skew(0.0,1.0) +
          ExtendLeft,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft +
          LeadRight,

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          QuarterLeft.skew(0.0,1.0) +
          ExtendLeft
      ]),

    AnimatedCall('All 4 Couples Right and Left Thru',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          BeauWheel,

          ExtendRight.changeBeats(3.5).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft +
          BelleWheel,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          BeauWheel,

          ExtendRight.changeBeats(3.5).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft +
          BelleWheel
      ]),

    AnimatedCall('All 4 Couples Single Circle to a Wave',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,1.5) +
          Forward.scale(1.3,1.0) +
          ssqtr +
          ssqtr +
          ExtendLeft.changeBeats(1.5).scale(0.7,1.5),

          Forward +
          ExtendRight.changeBeats(1.5).scale(1.3,1.5) +
          ssqtr +
          ssqtr +
          ExtendLeft.changeBeats(1.5).scale(0.7,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.0,1.5) +
          Forward.scale(1.3,1.0) +
          ssqtr +
          ssqtr +
          ExtendLeft.changeBeats(1.5).scale(0.7,1.5),

          Forward +
          ExtendRight.changeBeats(1.5).scale(1.3,1.5) +
          ssqtr +
          ssqtr +
          ExtendLeft.changeBeats(1.5).scale(0.7,0.5)
      ]),

    AnimatedCall('All 4 Couples Slide Thru',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.skew(1.0,-1.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.skew(1.0,-1.0)
      ]),

    AnimatedCall('All 4 Couples Box Counter Rotate',
        formation:Formation('Static Square'),
        group:'All 4 Couples (with calls through Plus)',
        noDisplay: true,
        paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
              Forward +
              QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
              QuarterLeft.skew(1.0,-1.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
              Forward +
              QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
              QuarterLeft.skew(1.0,-1.0)
        ]),

    AnimatedCall('All 4 Couples Slide Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]),
      group:'All 4 Couples (with calls through Plus)',isGenderSpecific:true,noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.skew(1.0,-1.0)
      ]),

    AnimatedCall('All 4 Couples Slide Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
  ]),
      group:'All 4 Couples (with calls through Plus)',isGenderSpecific:true,noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight
      ]),

    AnimatedCall('All 4 Couples Spin the Top',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          SwingRight +
          CastLeft,

          Forward_3 +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          SwingRight +
          CastLeft,

          Forward_3 +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('All 4 Couples Square Thru',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          ExtendRight,

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,3.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft +
          LeadRight.changeBeats(1.5).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          ExtendRight,

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,3.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft +
          LeadRight.changeBeats(1.5).scale(1.0,2.0)
      ]),

    AnimatedCall('All 4 Couples Square Thru to a Wave',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadRight.changeBeats(4).scale(1.0,3.0),

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,3.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadRight.changeBeats(4).scale(1.0,3.0),

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,3.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0)
      ]),

    AnimatedCall('All 4 Couples Square Thru 3',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadRight.changeBeats(2).changehands(Hands.LEFT) +
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,3.0) +
          Forward_2 +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0) +
          LeadRight.changeBeats(2).changehands(Hands.LEFT) +
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,3.0) +
          Forward_2 +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT)
      ]),

    AnimatedCall('All 4 Couples Square Thru 3 to a Wave',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0),

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft.changeBeats(4).scale(1.0,3.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0),

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('All 4 Couples Square Thru 2',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          ExtendRight,

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft +
          LeadRight.changeBeats(1.5).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,3.0) +
          Forward_2 +
          ExtendRight,

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          LeadLeft +
          LeadRight.changeBeats(1.5).scale(1.0,2.0)
      ]),

    AnimatedCall('All 4 Couples Square Thru 2 to a Wave',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).scale(1.0,3.0),

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward.changehands(Hands.RIGHT) +
          LeadRight.changeBeats(4).scale(1.0,3.0),

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0)
      ]),

    AnimatedCall('All 4 Couples Star Thru',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.skew(1.0,-1.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.skew(1.0,-1.0)
      ]),

    AnimatedCall('All 4 Couples Star Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
  ]),
      group:'All 4 Couples (with calls through Plus)',isGenderSpecific:true,noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          QuarterLeft.skew(1.0,-1.0)
      ]),

    AnimatedCall('All 4 Couples Star Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
  ]),
      group:'All 4 Couples (with calls through Plus)',isGenderSpecific:true,noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight
      ]),

    AnimatedCall('All 4 Couples Step to a Wave',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward,

          Forward_3,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward,

          Forward_3
      ]),

    AnimatedCall('All 4 Couples Swing Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          SwingRight +
          SwingLeft,

          Forward_3 +
          SwingRight,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          SwingRight +
          SwingLeft,

          Forward_3 +
          SwingRight
      ]),

    AnimatedCall('All 4 Couples Touch',
        formation:Formation('Static Square'),
        group:'All 4 Couples (with calls through Plus)',
        noDisplay: true,
        paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
              Forward,

          Forward_3,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
              Forward,

          Forward_3
        ]),

    AnimatedCall('All 4 Couples Touch a Quarter',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,2.5) +
          HingeRight.skew(0.0,0.5),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight.skew(0.0,-0.5),

          ExtendLeft.changeBeats(3).scale(3.0,2.5) +
          HingeRight.skew(0.0,0.5),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          HingeRight.skew(0.0,-0.5)
      ]),

    AnimatedCall('All 4 Couples Turn Thru',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          Forward +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          Forward_2,

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          Forward +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          Forward_2
      ]),

    AnimatedCall('All 8 Box Circulate',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with calls through Plus)',
      paths:[
          Forward_6.changeBeats(4),

          RunRight.changeBeats(4),

          Forward_6.changeBeats(4),

          RunRight.changeBeats(4)
      ]),

    AnimatedCall('All 8 Box Circulate',
      formation:Formation('Static MiniWaves LH'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          RunLeft.changeBeats(4),

          Forward_6.changeBeats(4),

          RunLeft.changeBeats(4),

          Forward_6.changeBeats(4)
      ]),

    AnimatedCall('All 8 Chain Down the Line',
      formation:Formation('Thar RH Girls'),
      group:'All 8 (with calls through Plus)',
      paths:[
          SwingRight +
          HingeLeft +
          BelleWheel.skew(1.0,0.0),

          UmTurnLeft +
          BackHingeRight +
          BeauWheel.skew(1.0,0.0),

          SwingRight +
          HingeLeft +
          BelleWheel.skew(1.0,0.0),

          UmTurnLeft +
          BackHingeRight +
          BeauWheel.skew(1.0,0.0)
      ]),

    AnimatedCall('All 8 Chain Down the Line',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:0,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
  ]),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          SwingRight +
          HingeLeft +
          BelleWheel.skew(1.0,0.0),

          Stand.changeBeats(3) +
          BackHingeRight +
          BeauWheel.skew(1.0,0.0),

          SwingRight +
          HingeLeft +
          BelleWheel.skew(1.0,0.0),

          Stand.changeBeats(3) +
          BackHingeRight +
          BeauWheel.skew(1.0,0.0)
      ]),

    AnimatedCall('All 8 Chase Right',
      formation:Formation('Static Facing Out'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          ExtendRight.changeBeats(3).scale(2.0,1.0),

          RunRight.scale(1.0,0.5).skew(-2.0,0.0) +
          Forward_3 +
          RunRight.changeBeats(4).scale(1.0,1.5).skew(1.0,0.0),

          RunRight.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          ExtendRight.changeBeats(3).scale(2.0,1.0),

          RunRight.scale(1.0,0.5).skew(-2.0,0.0) +
          Forward_3 +
          RunRight.changeBeats(4).scale(1.0,1.5).skew(1.0,0.0)
      ]),

    AnimatedCall('All 8 Left Chase',
      formation:Formation('Static Facing Out'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          Forward_3 +
          RunLeft.changeBeats(4).scale(1.0,1.5).skew(1.0,0.0),

          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          ExtendLeft.changeBeats(3).scale(2.0,1.0),

          RunLeft.scale(1.0,0.5).skew(-2.0,0.0) +
          Forward_3 +
          RunLeft.changeBeats(4).scale(1.0,1.5).skew(1.0,0.0),

          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          Forward_3 +
          ExtendLeft.changeBeats(3).scale(2.0,1.0)
      ]),

    AnimatedCall('All 8 Crossfire',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:0,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
  ]),
      group:'All 8 (with calls through Plus)',
      paths:[
          SwingRight +
          Forward_3,

          RunRight.changeBeats(5).scale(1.0,2.0).skew(3.0,0.0),

          SwingRight +
          Forward_3,

          RunRight.changeBeats(5).scale(1.0,2.0).skew(3.0,0.0)
      ]),

    AnimatedCall('All 8 Crossfire',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:0,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-3,y:0,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
  ]),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          SwingLeft +
          Forward_3,

          RunLeft.changeBeats(5).scale(1.0,2.0).skew(3.0,0.0),

          SwingLeft +
          Forward_3,

          RunLeft.changeBeats(5).scale(1.0,2.0).skew(3.0,0.0)
      ]),

    AnimatedCall('All 8 Cut the Diamond',
      formation:Formation('Thar LH Girls'),
      group:'All 8 (with calls through Plus)',
      paths:[
          Forward_2 +
          LeadLeft,

          DodgeRight +
          SwingRight,

          Forward_2 +
          LeadLeft,

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('All 8 Diamond Circulate',
      formation:Formation('Star Promenade'),
      group:'All 8 (with calls through Plus)',
      paths:[
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0),

          LeadLeft.changeBeats(3).scale(3.0,1.0),

          LeadLeft.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('All 8 Diamond Circulate',
      formation:Formation('Reverse Star Promenade'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          LeadRight.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).scale(1.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('All 8 Diamond Circulate',
      formation:Formation('Thar LH Boys'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          LeadLeftPassing.changeBeats(3).scale(3.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,3.0),

          LeadLeftPassing.changeBeats(3).scale(3.0,1.0),

          LeadRightPassing.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('All 8 Diamond Circulate',
      formation:Formation('Thar RH Boys'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          LeadRightPassing.changeBeats(3).scale(3.0,1.0),

          LeadLeftPassing.changeBeats(3).scale(1.0,3.0),

          LeadRightPassing.changeBeats(3).scale(3.0,1.0),

          LeadLeftPassing.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('All 8 Dixie Style to a Wave',
      formation:Formation('Static Square'),
      group:'All 8 (with calls through Plus)',
      paths:[
          ExtendRight.changeBeats(5).scale(1.0,1.75) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75),

          ExtendRight.changeBeats(5).scale(1.0,1.75) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,2.0) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('All 8 Reverse Dixie Style to a Wave',
      formation:Formation('Static Square'),
      group:'All 8 (with calls through Plus)',
      paths:[
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.75) +
          HingeRight.scale(1.0,0.75),

          ExtendLeft.changeBeats(5).scale(1.0,1.75) +
          HingeRight.scale(1.0,0.75),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.75) +
          HingeRight.scale(1.0,0.75),

          ExtendLeft.changeBeats(5).scale(1.0,1.75) +
          HingeRight.scale(1.0,0.75)
      ]),

    AnimatedCall('All 8 Dixie Style to a Wave',
      formation:Formation('Static Girls Lead'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(4).scale(2.0,0.75) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.0) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75),

          ExtendRight.changeBeats(4).scale(2.0,0.75) +
          HingeLeft.scale(1.0,0.75),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.0) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('All 8 Reverse Dixie Style to a Wave',
      formation:Formation('Static Girls Lead'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(4).scale(2.0,0.75) +
          HingeRight.scale(1.0,0.75),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.0) +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.75) +
          HingeRight.scale(1.0,0.75),

          ExtendLeft.changeBeats(4).scale(2.0,0.75) +
          HingeRight.scale(1.0,0.75),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.0) +
          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(2.0,1.75) +
          HingeRight.scale(1.0,0.75)
      ]),

    AnimatedCall('All 8 Explode the Wave',
      formation:Formation('Thar LH Girls'),
      group:'All 8 (with calls through Plus)',
      taminator: '''
    This can be broken down to as All 8 Step Forward and Quarter In, then
    All 4 Couples Pass Thru.
    ''',
      paths:[
          LeadLeft.changeBeats(4).scale(2.0,1.0) +
          Forward_2 +
          ExtendLeft,

          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          LeadLeft.changeBeats(4).scale(2.0,1.0) +
          Forward_2 +
          ExtendLeft,

          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('All 8 Flip the Diamond',
      formation:Formation('Thar LH Girls'),
      group:'All 8 (with calls through Plus)',
      paths:[
          Forward_2 +
          LeadLeft,

          FlipRight,

          Forward_2 +
          LeadLeft,

          FlipRight
      ]),

    AnimatedCall('All 8 Flutterwheel',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 8 (with calls through Plus)',
      paths:[
          QuarterLeft.changeBeats(4.5).skew(0.0,-1.0) +
          HingeRight.changeBeats(3).scale(3.0,3.0) +
          HingeRight.changeBeats(3).scale(3.0,2.0) +
          QuarterRight.changeBeats(3).changehands(Hands.RIGHT).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          HingeRight +
          HingeRight.changeBeats(3).changehands(Hands.BOTH) +
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(1.5,0.0) +
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(0.0,1.5),

          QuarterLeft.changeBeats(4.5).skew(0.0,-1.0) +
          HingeRight.changeBeats(3).scale(3.0,3.0) +
          HingeRight.changeBeats(3).scale(3.0,2.0) +
          QuarterRight.changeBeats(3).changehands(Hands.RIGHT).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          HingeRight +
          HingeRight.changeBeats(3).changehands(Hands.BOTH) +
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(1.5,0.0) +
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(0.0,1.5)
      ]),

    AnimatedCall('All 8 Follow Your Neighbor',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with calls through Plus)',
      paths:[
          Forward_3 +
          CastRight,

          LeadRight.changeBeats(2.5).skew(0.33,0.0) +
          LeadRight.changeBeats(2.5).skew(0.0,0.33) +
          LeadRight.changeBeats(2.5).skew(-0.33,0.0),

          Forward_3 +
          CastRight,

          LeadRight.changeBeats(2.5).skew(0.33,0.0) +
          LeadRight.changeBeats(2.5).skew(0.0,0.33) +
          LeadRight.changeBeats(2.5).skew(-0.33,0.0)
      ]),

    AnimatedCall('All 8 Follow Your Neighbor and Spread',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with calls through Plus)',
      paths:[
          Forward_3 +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).skew(-0.33,0.0) +
          LeadRight.changeBeats(3).skew(0.0,-0.33) +
          LeadRight.changeBeats(3).skew(0.33,0.0),

          Forward_3 +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).skew(-0.33,0.0) +
          LeadRight.changeBeats(3).skew(0.0,-0.33) +
          LeadRight.changeBeats(3).skew(0.33,0.0)
      ]),

    AnimatedCall('All 8 Half Tag',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1,y:0,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:0,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
  ]),
      group:'All 8 (with calls through Plus)',
      paths:[
          HingeRight +
          Forward_3,

          QuarterRight.changeBeats(3).skew(1.0,0.0),

          HingeRight +
          Forward_3,

          QuarterRight.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('All 8 Lead Right',
        formation: Formation('Static Square'),
        group:'All 8 (with calls through Plus)',
        paths: [
          HingeRight.changeBeats(4).scale(0.5,0.5).skew(3.5,-3.5),

          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,2.0),

          HingeRight.changeBeats(4).scale(0.5,0.5).skew(3.5,-3.5),

          LeadRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,2.0),
        ]),

    AnimatedCall('All 8 Lead Left',
        formation: Formation('Static Square'),
        group:'All 8 (with calls through Plus)',
        noDisplay: true,
        paths: [
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0),

          HingeLeft.changeBeats(4).scale(0.5,0.5).skew(3.5,3.5),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0),

          HingeLeft.changeBeats(4).scale(0.5,0.5).skew(3.5,3.5),
        ]),

    AnimatedCall('All 8 Left Swing Thru',
      formation:Formation('Thar RH Boys'),
      group:'All 8 (with calls through Plus)',
      paths:[
          SwingLeft,

          SwingLeft +
          SwingRight,

          SwingLeft,

          SwingLeft +
          SwingRight
      ]),

    AnimatedCall('All 8 Linear Cycle',
      formation:Formation('Thar LH Boys'),
      group:'All 8 (with calls through Plus)',
      paths:[
          HingeRight +
          RunRight +
          Forward_3 +
          UmTurnRight.skew(2.0,0.0),

          HingeRight +
          Forward_5 +
          RunRight,

          HingeRight +
          RunRight +
          Forward_3 +
          UmTurnRight.skew(2.0,0.0),

          HingeRight +
          Forward_5 +
          RunRight
      ]),

    AnimatedCall('All 8 Peel Off',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with calls through Plus)',
      paths:[
          UmTurnLeft.changeBeats(4).skew(3.0,0.0),

          RunLeft.changeBeats(4).skew(-3.0,0.0),

          UmTurnLeft.changeBeats(4).skew(3.0,0.0),

          RunLeft.changeBeats(4).skew(-3.0,0.0)
      ]),

    AnimatedCall('All 8 Peel the Top',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with calls through Plus)',
      paths:[
          Forward_3.changeBeats(4) +
          CastRight,

          RunLeft.changeBeats(4).skew(-3.0,0.0) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward_3.changeBeats(4) +
          CastRight,

          RunLeft.changeBeats(4).skew(-3.0,0.0) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('All 8 Peel the Top',
      formation:Formation('Static MiniWaves LH'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          RunRight.changeBeats(4).skew(-3.0,0.0) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_3.changeBeats(4) +
          CastLeft,

          RunRight.changeBeats(4).skew(-3.0,0.0) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_3.changeBeats(4) +
          CastLeft
      ]),

    AnimatedCall('All 8 Recycle',
      formation:Formation('Thar LH Girls'),
      group:'All 8 (with calls through Plus)',
      paths:[
          RunRight.changeBeats(2).scale(0.5,0.5).skew(-1.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(1.5,0.0),

          RunRight.changeBeats(4).skew(3.0,-2.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-1.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(1.5,0.0),

          RunRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('All 8 Recycle',
      formation:Formation('Thar RH Girls'),
      group:'All 8 (with calls through Plus)',noDisplay: true,
      paths:[
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-1.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.5,0.0),

          RunLeft.changeBeats(4).skew(3.0,2.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-1.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.5,0.0),

          RunLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('All 8 Reverse Flutterwheel',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 8 (with calls through Plus)',
      paths:[
          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          HingeLeft +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(1.5,0.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.5),

          QuarterRight.changeBeats(4.5).skew(0.0,1.0) +
          HingeLeft.changeBeats(3).scale(3.0,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,2.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(2.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,2.0) +
          HingeLeft +
          HingeLeft.changeBeats(3).changehands(Hands.BOTH) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(1.5,0.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.5),

          QuarterRight.changeBeats(4.5).skew(0.0,1.0) +
          HingeLeft.changeBeats(3).scale(3.0,3.0) +
          HingeLeft.changeBeats(3).scale(3.0,2.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(2.0,0.0)
      ]),

    AnimatedCall('All 8 Scoot Back',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with calls through Plus)',
      paths:[
          Forward_3 +
          SwingRight +
          Forward_3,

          RunRight,

          Forward_3 +
          SwingRight +
          Forward_3,

          RunRight
      ]),

    AnimatedCall('All 8 Swing Thru',
      formation:Formation('Thar LH Girls'),
      group:'All 8 (with calls through Plus)',
      paths:[
          SwingRight,

          SwingRight +
          SwingLeft,

          SwingRight,

          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('All 8 Turn Thru',
        formation:Formation('Thar LH Girls'),
        from: 'Thar',
        group:'All 8 (with calls through Plus)',
        paths: [
          SwingRight +
              Forward_2 +
              ExtendRight.changeBeats(2).scale(1,2),
          SwingRight +
              Forward_3.changeBeats(4),
          SwingRight +
              Forward_2 +
              ExtendRight.changeBeats(2).scale(1, 2),
          SwingRight +
              Forward_3.changeBeats(4),
        ]),

    AnimatedCall('All 8 Veer Left',
      formation:Formation('Static Square'),
      group:'All 8 (with calls through Plus)',
      paths:[
          ExtendLeft.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,2.0),

          ExtendLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,2.0)
      ]),

    AnimatedCall('All 8 Walk and Dodge',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with calls through Plus)',
      paths:[
          Forward_3 +
          Forward_3,

          DodgeRight,

          Forward_3 +
          Forward_3,

          DodgeRight
      ]),

    AnimatedCall('All 8 Zoom',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with calls through Plus)',
      paths:[
          Forward_3.changeBeats(4) +
          Forward_3.changeBeats(4),

          RunLeft.changeBeats(4).skew(-3.0,0.0) +
          RunLeft.changeBeats(4).skew(3.0,0.0),

          Forward_3.changeBeats(4) +
          Forward_3.changeBeats(4),

          RunLeft.changeBeats(4).skew(-3.0,0.0) +
          RunLeft.changeBeats(4).skew(3.0,0.0)
      ]),

    AnimatedCall('All 4 Couples Brace Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:1,y:-3,angle:90),
  ]),
      group:'All 4 Couples (with A-1 calls)',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          BeauWheel,

          ExtendRight.changeBeats(3.5).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft +
          BelleWheel,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          UmTurnRight,

          ExtendRight.changeBeats(3.5).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft +
          UmTurnLeft
      ]),

    AnimatedCall('All 4 Couples Cross Trail Thru',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with A-1 calls)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft.changeBeats(2).scale(1.0,3.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft.changeBeats(2).scale(1.0,3.0)
      ]),

    AnimatedCall('All 4 Couples Double Star Thru',
      formation:Formation('Static Square'),
      group:'All 4 Couples (with A-1 calls)',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadLeft,

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadLeft,

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('All 4 Couples Pair Off',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 4 Couples (with A-1 calls)',
      paths:[
          EighthLeft.changeBeats(.5) +
          Forward.changeBeats(3).scale(2.828,2.828) +
          EighthLeft.changeBeats(.5),

          LeadRight.changeBeats(4).scale(2.0,2.0),

          EighthLeft.changeBeats(.5) +
          Forward.changeBeats(3).scale(2.828,2.828) +
          EighthLeft.changeBeats(.5),

          LeadRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('All 4 Couples Pass In',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 4 Couples (with A-1 calls)',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,3.0) +
          Forward +
          LeadRight,

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          QuarterLeft.skew(1.0,0.0),

          ExtendLeft.changeBeats(3).scale(2.0,3.0) +
          Forward +
          LeadRight,

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('All 4 Couples Pass Out',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 4 Couples (with A-1 calls)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          LeadRight
      ]),

    AnimatedCall('All 4 Couples Pass the Sea',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 4 Couples (with A-1 calls)',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight.changeBeats(3).scale(1.0,3.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward +
          LeadLeft.changeBeats(2).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight.changeBeats(3).scale(1.0,3.0),

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward +
          LeadLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('All 4 Couples Quarter In',
      formation:Formation('Squared Set'),
      group:'All 4 Couples (with A-1 calls)',
      paths:[
          ExtendLeft.changeBeats(3).scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(2.0,1.0) +
          QuarterLeft.skew(0.0,-1.0),

          ExtendLeft.changeBeats(3).scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(2.0,1.0) +
          QuarterLeft.skew(0.0,-1.0)
      ]),

    AnimatedCall('All 4 Couples Quarter Out',
      formation:Formation('Squared Set'),
      group:'All 4 Couples (with A-1 calls)',
      paths:[
          ExtendLeft.changeBeats(3).scale(1.0,2.0) +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(2.0,1.0) +
          QuarterRight.skew(0.0,-1.0),

          ExtendLeft.changeBeats(3).scale(1.0,2.0) +
          QuarterLeft.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(2.0,1.0) +
          QuarterRight.skew(0.0,-1.0)
      ]),

    AnimatedCall('All 4 Couples Square Chain Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 4 Couples (with A-1 calls)',parts:'6.5;6',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight.changeBeats(3.5).scale(1.0,3.0) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward_3,

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight.changeBeats(3.5).scale(1.0,3.0) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward_3,

          ExtendRight.changeBeats(3).scale(3.0,1.0) +
          Forward_2 +
          LeadLeft.scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          ExtendLeft.changeBeats(3).scale(3.0,2.0)
      ]),

    AnimatedCall('All 8 Left Quarter Thru',
      formation:Formation('Static MiniWaves LH'),
      group:'All 8 (with A-1 calls)',fractions:'1.5',
      paths:[
          QuarterLeft.changehands(Hands.LEFT).skew(0.0,1.0),

          HingeLeft.skew(1.0,0.0) +
          SwingRight,

          QuarterLeft.changehands(Hands.LEFT).skew(0.0,1.0),

          HingeLeft.skew(1.0,0.0) +
          SwingRight
      ]),

    AnimatedCall('All 8 Left Roll to a Wave',
      formation:Formation('Static Facing Out'),
      from:'Couples Facing Out',group:'All 8 (with A-1 calls)',
      paths:[
          RunLeft.changeBeats(4).skew(-3.0,0.0),

          UmTurnLeft.changeBeats(4).skew(-3.0,0.0),

          RunLeft.changeBeats(4).skew(-3.0,0.0),

          UmTurnLeft.changeBeats(4).skew(-3.0,0.0)
      ]),

    AnimatedCall('All 8 Left Roll to a Wave',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with A-1 calls)',noDisplay: true,
      paths:[
          Forward_3.changeBeats(4),

          RunLeft.changeBeats(4).skew(-3.0,0.0),

          Forward_3.changeBeats(4),

          RunLeft.changeBeats(4).skew(-3.0,0.0)
      ]),

    AnimatedCall('All 8 Left Roll to a Wave',
      formation:Formation('Static MiniWaves LH'),
      group:'All 8 (with A-1 calls)',noDisplay: true,
      paths:[
          UmTurnLeft.changeBeats(4).skew(-3.0,0.0),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          UmTurnLeft.changeBeats(4).skew(-3.0,0.0),

          ExtendRight.changeBeats(4).scale(3.0,2.0)
      ]),

    AnimatedCall('All 8 Left Wheel Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 8 (with A-1 calls)',
      paths:[
          LeadLeft.changeBeats(7.5).scale(2.0,2.0),

          Forward_3 +
          HingeLeft +
          Forward_3,

          LeadLeft.changeBeats(7.5).scale(2.0,2.0),

          Forward_3 +
          HingeLeft +
          Forward_3
      ]),

    AnimatedCall('All 8 Lockit',
      formation:Formation('Thar LH Boys'),
      from:'Right-Hand Thar',group:'All 8 (with A-1 calls)',
      paths:[
          HingeLeft.changeBeats(6),

          LeadRight.changeBeats(6).scale(3.0,3.0),

          HingeLeft.changeBeats(6),

          LeadRight.changeBeats(6).scale(3.0,3.0)
      ]),

    AnimatedCall('All 8 Lockit',
      formation:Formation('Thar RH Boys'),
      from:'Right-Hand Thar',group:'All 8 (with A-1 calls)',noDisplay: true,
      paths:[
          HingeRight.changeBeats(6),

          LeadLeft.changeBeats(6).scale(3.0,3.0),

          HingeRight.changeBeats(6),

          LeadLeft.changeBeats(6).scale(3.0,3.0)
      ]),

    AnimatedCall('All 8 Mix',
      formation:Formation('Thar LH Boys'),
      from:'Thar',group:'All 8 (with A-1 calls)',parts:'4.5',
      paths:[
          HingeLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Stand.changeBeats(1.5) +
          DodgeRight +
          SwingRight,

          HingeLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Stand.changeBeats(1.5) +
          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('All 8 Mix',
      formation:Formation('Thar RH Boys'),
      from:'Thar',group:'All 8 (with A-1 calls)',parts:'4.5',noDisplay: true,
      paths:[
          HingeRight +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          Stand.changeBeats(1.5) +
          DodgeLeft +
          SwingLeft,

          HingeRight +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          Stand.changeBeats(1.5) +
          DodgeLeft +
          SwingLeft
      ]),

    AnimatedCall('All 8 Partner Tag',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 8 (with A-1 calls)',
      paths:[
          LeadRight +
          ExtendLeft.changeBeats(3).scale(3.0,1.0),

          QuarterLeft.skew(0.0,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          LeadRight +
          ExtendLeft.changeBeats(3).scale(3.0,1.0),

          QuarterLeft.skew(0.0,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('All 8 Quarter Thru',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with A-1 calls)',fractions:'1.5',
      paths:[
          HingeRight.skew(1.0,0.0) +
          SwingLeft,

          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0),

          HingeRight.skew(1.0,0.0) +
          SwingLeft,

          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0)
      ]),

    AnimatedCall('All 8 Reverse Swap Around',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 8 (with A-1 calls)',fractions:'3',
      paths:[
          Forward_6,

          FlipLeft.changeBeats(6),

          Forward_6,

          FlipLeft.changeBeats(6)
      ]),

    AnimatedCall('All 8 Right Roll to a Wave',
      formation:Formation('Static Facing Out'),
      from:'Couples Facing Out',group:'All 8 (with A-1 calls)',
      paths:[
          UmTurnRight.changeBeats(4).skew(-3.0,0.0),

          RunRight.changeBeats(4).skew(-3.0,0.0),

          UmTurnRight.changeBeats(4).skew(-3.0,0.0),

          RunRight.changeBeats(4).skew(-3.0,0.0)
      ]),

    AnimatedCall('All 8 Right Roll to a Wave',
      formation:Formation('Static MiniWaves RH'),
      group:'All 8 (with A-1 calls)',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          UmTurnRight.changeBeats(4).skew(-3.0,0.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          UmTurnRight.changeBeats(4).skew(-3.0,0.0)
      ]),

    AnimatedCall('All 8 Right Roll to a Wave',
      formation:Formation('Static MiniWaves LH'),
      group:'All 8 (with A-1 calls)',noDisplay: true,
      paths:[
          RunRight.changeBeats(4).skew(-3.0,0.0),

          Forward_3.changeBeats(4),

          RunRight.changeBeats(4).skew(-3.0,0.0),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('All 8 Scoot and Dodge',
      formation:Formation('Static MiniWaves RH'),
      from:'Static Mini-Waves',group:'All 8 (with A-1 calls)',
      paths:[
          Forward_3 +
          SwingRight +
          Forward_3,

          DodgeRight,

          Forward_3 +
          SwingRight +
          Forward_3,

          DodgeRight
      ]),

    AnimatedCall('All 8 Scoot and Dodge',
      formation:Formation('Static MiniWaves LH'),
      from:'Static Mini-Waves',group:'All 8 (with A-1 calls)',noDisplay: true,
      paths:[
          DodgeLeft,

          Forward_3 +
          SwingLeft +
          Forward_3,

          DodgeLeft,

          Forward_3 +
          SwingLeft +
          Forward_3
      ]),

    AnimatedCall('All 8 Swap Around',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 8 (with A-1 calls)',fractions:'3',
      paths:[
          FlipRight.changeBeats(6),

          Forward_6,

          FlipRight.changeBeats(6),

          Forward_6
      ]),

    AnimatedCall('All 8 3/4 Thru',
      formation:Formation('Static MiniWaves RH'),
      from:'Static Mini-Waves',group:'All 8 (with A-1 calls)',parts:'4.5',
      paths:[
          SwingRight +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0),

          SwingRight +
          HingeRight.skew(1.0,0.0) +
          SwingLeft,

          SwingRight +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0),

          SwingRight +
          HingeRight.skew(1.0,0.0) +
          SwingLeft
      ]),

    AnimatedCall('All 8 Turn and Deal',
      formation:Formation('Thar RH Boys'),
      from:'Thar',group:'All 8 (with A-1 calls)',noDisplay: true,
      paths:[
          UmTurnRight.changeBeats(4).skew(3.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-3.0,2.0),

          UmTurnRight.changeBeats(4).skew(3.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-3.0,2.0)
      ]),

    AnimatedCall('All 8 Turn and Deal',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',group:'All 8 (with A-1 calls)',noDisplay: true,
      paths:[
          UmTurnLeft.changeBeats(4).skew(-3.0,2.0),

          UmTurnRight.changeBeats(4).skew(3.0,-2.0),

          UmTurnLeft.changeBeats(4).skew(-3.0,2.0),

          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('All 8 Turn and Deal',
      formation:Formation('Star Promenade'),
      from:'Star Promenade',group:'All 8 (with A-1 calls)',noDisplay: true,
      paths:[
          UmTurnLeft.changeBeats(4).skew(3.0,2.0),

          UmTurnLeft.changeBeats(4).skew(3.0,2.0),

          UmTurnLeft.changeBeats(4).skew(3.0,2.0),

          UmTurnLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('All 8 Turn and Deal',
      formation:Formation('Reverse Star Promenade'),
      from:'Reverse Star Promenade',group:'All 8 (with A-1 calls)',
      paths:[
          UmTurnRight.changeBeats(4).skew(3.0,-2.0),

          UmTurnRight.changeBeats(4).skew(3.0,-2.0),

          UmTurnRight.changeBeats(4).skew(3.0,-2.0),

          UmTurnRight.changeBeats(4).skew(3.0,-2.0)
      ]),

    AnimatedCall('All 8 Wheel Thru',
      formation:Formation('Static Square'),
      from:'Static Square',group:'All 8 (with A-1 calls)',
      paths:[
          Forward_3 +
          HingeRight +
          Forward_3,

          LeadRight.changeBeats(7.5).scale(2.0,2.0),

          Forward_3 +
          HingeRight +
          Forward_3,

          LeadRight.changeBeats(7.5).scale(2.0,2.0)
      ]),
    a2.BoxTransfer.where((tam) =>
      tam.title == 'All 8 Box Transfer').first.xref(title: 'All 8 Box Transfer').xref(group: 'All 8 (with A-2 calls)'),
    a2.PassAndRoll.where((tam) =>
      tam.title == 'All 8 Pass and Roll').first.xref(title: 'All 8 Pass and Roll').xref(group: 'All 8 (with A-2 calls)'),
    a2.PassAndRollYourNeighbor.where((tam) =>
      tam.title == 'All 8 Pass and Roll Your Neighbor and Spread').first.xref(title: 'All 8 Pass and Roll Your Neighbor and Spread').xref(group: 'All 8 (with A-2 calls)'),
    a2.PeelAndTrail.where((tam) =>
      tam.title == 'All 8 Peel and Trail').first.xref(title: 'All 8 Peel and Trail').xref(group: 'All 8 (with A-2 calls)'),
    a2.Recycle.where((tam) =>
      tam.title == 'All 8 Recycle').first.xref(title: 'All 8 Recycle').xref(group: 'All 8 (with A-2 calls)'),
    a2.Remake.where((tam) =>
      tam.title == 'All 8 Remake').first.xref(title: 'All 8 Remake').xref(group: 'All 8 (with A-2 calls)'),
    a2.ScootAndWeave.where((tam) =>
      tam.title == 'All 8 Scoot and Weave').first.xref(title: 'All 8 Scoot and Weave').xref(group: 'All 8 (with A-2 calls)'),
    a2.Slip.where((tam) =>
      tam.title == 'All 8 Slide').first.xref(title: 'All 8 Slide').xref(group: 'All 8 (with A-2 calls)'),
    a2.Slip.where((tam) =>
      tam.title == 'All 8 Slip').first.xref(title: 'All 8 Slip').xref(group: 'All 8 (with A-2 calls)'),
    a2.Slip.where((tam) =>
      tam.title == 'All 8 Slither').first.xref(title: 'All 8 Slither').xref(group: 'All 8 (with A-2 calls)'),
    a2.Slip.where((tam) =>
      tam.title == 'All 8 Swing').first.xref(title: 'All 8 Swing').xref(group: 'All 8 (with A-2 calls)'),
    a2.SwingAndMix.where((tam) =>
      tam.title == 'All 8 Swing and Mix').first.xref(title: 'All 8 Swing and Mix').xref(group: 'All 8 (with A-2 calls)'),
    a2.SwitchTheWave.where((tam) =>
      tam.title == 'All 8 Switch the Wave').first.xref(title: 'All 8 Switch the Wave').xref(group: 'All 8 (with A-2 calls)'),
    a2.TrailOff.where((tam) =>
      tam.title == 'All 8 Trail Off').first.xref(title: 'All 8 Trail Off').xref(group: 'All 8 (with A-2 calls)'),
    c1.WithTheFlow.where((tam) =>
      tam.title == 'All 4 Couples Right and Left Thru With the Flow').first.xref(title: 'All 4 Couples Right and Left Thru With the Flow').xref(group: 'All 4 Couples (C-1)'),
    c1.SquareChainTheTop.where((tam) =>
      tam.title == 'All 4 Couples Square Chain the Top').first.xref(title: 'All 4 Couples Square Chain the Top').xref(group: 'All 4 Couples (C-1)'),
    c1.Zing.where((tam) =>
      tam.title == 'All 4 Couples Zing').first.xref(title: 'All 4 Couples Zing').xref(group: 'All 4 Couples (C-1)'),
    c1.AlterTheWave.where((tam) =>
      tam.title == 'All 8 Alter the Wave').first.xref(title: 'All 8 Alter the Wave').xref(group: 'All 8 (C-1)'),
    c1.Recycle.where((tam) =>
      tam.title == 'All 8 Box Recycle').first.xref(title: 'All 8 Box Recycle').xref(group: 'All 8 (C-1)'),
    c1.ChaseYourNeighbor.where((tam) =>
      tam.title == 'All 8 Chase Your Neighbor').first.xref(title: 'All 8 Chase Your Neighbor').xref(group: 'All 8 (C-1)'),
    c1.CrossAndTurn.where((tam) =>
      tam.title == 'All 8 Cross and Turn').first.xref(title: 'All 8 Cross and Turn').xref(group: 'All 8 (C-1)'),
    c1.CrossYourNeighbor.where((tam) =>
      tam.title == 'All 8 Cross Your Neighbor').first.xref(title: 'All 8 Cross Your Neighbor').xref(group: 'All 8 (C-1)'),
    c1.DixieDiamond.where((tam) =>
      tam.title == 'All 8 Dixie Diamond').first.xref(title: 'All 8 Dixie Diamond').xref(group: 'All 8 (C-1)'),
    c1.DixieSashay.where((tam) =>
      tam.title == 'All 8 Dixie Sashay').first.xref(title: 'All 8 Dixie Sashay').xref(group: 'All 8 (C-1)'),
    c1.FollowThru.where((tam) =>
      tam.title == 'All 8 Follow Thru').first.xref(title: 'All 8 Follow Thru').xref(group: 'All 8 (C-1)'),
    c1.PhantomFormation.where((tam) =>
      tam.title == 'Phantom All 8 Circulate').first.xref(title: 'All 8 Phantom Circulate').xref(group: 'All 8 (C-1)'),
    c1.CrossAndTurn.where((tam) =>
      tam.title == 'All 8 Reverse Cross and Turn').first.xref(title: 'All 8 Reverse Cross and Turn').xref(group: 'All 8 (C-1)'),
    c1.ReverseExplode.where((tam) =>
      tam.title == 'All 8 Reverse Explode').first.xref(title: 'All 8 Reverse Explode').xref(group: 'All 8 (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'All 8 Shakedown').first.xref(title: 'All 8 Shakedown').xref(group: 'All 8 (C-1)'),
    c1.StepAndFold.where((tam) =>
      tam.title == 'All 8 Step and Fold').first.xref(title: 'All 8 Step and Fold').xref(group: 'All 8 (C-1)'),
    c1.SwitchTheLine.where((tam) =>
      tam.title == 'All 8 Switch the Line').first.xref(title: 'All 8 Switch the Line').xref(group: 'All 8 (C-1)'),
    c1.VerticalTag.where((tam) =>
      tam.title == 'All 8 Vertical 1/2 Tag').first.xref(title: 'All 8 Vertical 1/2 Tag').xref(group: 'All 8 (C-1)'),
    c1.TaggingCallsBackToAWave.where((tam) =>
      tam.title == 'All 8 Vertical Tag Back').first.xref(title: 'All 8 Vertical Tag Back').xref(group: 'All 8 (C-1)'),
    c1.AnythingAndWeave.where((tam) =>
      tam.title == 'All 8 Weave').first.xref(title: 'All 8 Weave').xref(group: 'All 8 (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'All 8 Wheel Fan Thru').first.xref(title: 'All 8 Wheel Fan Thru').xref(group: 'All 8 (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'All 8 Left Wheel Fan Thru').first.xref(title: 'All 8 Left Wheel Fan Thru').xref(group: 'All 8 (C-1)'),
    c2.Rotate.where((tam) =>
      tam.title == 'All 4 Couples Rotate 1/2').first.xref(title: 'All 4 Couples Rotate 1/2').xref(group: 'All 4 Couples (C-2)'),
    c2.CrissCrossYourNeighbor.where((tam) =>
      tam.title == 'All 8 Criss Cross Your Neighbor').first.xref(title: 'All 8 Criss Cross Your Neighbor').xref(group: 'All 8 (C-2)'),
    c2.CrossBack.where((tam) =>
      tam.title == 'All 8 Cross Back').first.xref(title: 'All 8 Cross Back').xref(group: 'All 8 (C-2)'),
    c2.PeelToADiamond.where((tam) =>
      tam.title == 'All 8 Peel to a Diamond').first.xref(title: 'All 8 Peel to a Diamond').xref(group: 'All 8 (C-2)'),
    c2.PeelToADiamond.where((tam) =>
      tam.title == 'All 8 Trail to a Diamond').first.xref(title: 'All 8 Trail to a Diamond').xref(group: 'All 8 (C-2)'),
    c2.TurnToALine.where((tam) =>
      tam.title == 'All 8 Turn to a Line').first.xref(title: 'All 8 Turn to a Line').xref(group: 'All 8 (C-2)'),
    c2.WheelTheOcean.where((tam) =>
      tam.title == 'All 8 Wheel the Ocean').first.xref(title: 'All 8 Wheel the Ocean').xref(group: 'All 8 (C-2)'),
    c2.WheelTheOcean.where((tam) =>
      tam.title == 'All 8 Wheel the Sea').first.xref(title: 'All 8 Wheel the Sea').xref(group: 'All 8 (C-2)'),
    c3a.FollowToADiamond.where((tam) =>
      tam.title == 'All 8 Follow to a Diamond').first.xref(title: 'All 8 Follow to a Diamond').xref(group: 'All 8 (C-3A)'),
    c3a.LockTheHinge.where((tam) =>
      tam.title == 'All 8 Hinge the Lock').first.xref(title: 'All 8 Hinge the Lock').xref(group: 'All 8 (C-3A)'),
    c3a.MiniChase.where((tam) =>
      tam.title == 'All 8 Mini Chase').first.xref(title: 'All 8 Mini Chase').xref(group: 'All 8 (C-3A)'),
  ];

