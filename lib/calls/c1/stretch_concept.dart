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
import '../c1/ah_so.dart' as c1;
import '../c1/follow_thru.dart' as c1;
import '../c1/recycle.dart' as c1;
import '../c1/reverse_explode.dart' as c1;
import '../c1/shakedown.dart' as c1;
import '../c1/step_and_flip.dart' as c1;
import '../c1/step_and_fold.dart' as c1;
import '../c1/wheel_fan_thru.dart' as c1;
import '../c1/zing.dart' as c1;
import '../c2/bounce.dart' as c2;
import '../c2/turn_to_a_line.dart' as c2;
import '../c3a/mini_chase.dart' as c3a;
import '../c3a/single_concept.dart' as c3a;

  final List<AnimatedCall> StretchConcept = [

    AnimatedCall('Stretch Bend the Line',
      formation:Formation('Normal Lines'),
      group:'Stretch',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          LeadRight.scale(1.0,1.5),

          BackHingeLeft,

          BackHingeRight,

          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Stretch Cast Off 3/4',
      formation:Formation('Lines Facing Out'),
      group:'Stretch',
      paths:[
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.skew(-0.33,-0.33),

          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          Forward.changeBeats(1).scale(1.5,1.5) +
          LeadRight.scale(2.0,2.0).skew(0.17,-0.33),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          LeadLeft.changeBeats(2).scale(2.0,2.0).skew(1.67,0.33),

          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.skew(-0.33,0.33)
      ]),

    AnimatedCall('Stretch Chase Right',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
  ]),
      group:'Stretch',
      paths:[
          UmTurnRight.changeBeats(1.5) +
          Forward_4 +
          FlipRight.changeBeats(1.5),

          RunRight +
          Forward_4,

          UmTurnRight.changeBeats(1.5) +
          Forward_2 +
          FlipRight.changeBeats(1.5),

          FlipRight +
          Forward_2
      ]),

    AnimatedCall('Stretch Crossfire',
      formation:Formation('Two-Faced Lines RH'),
      group:'Stretch',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,2.0) +
          Forward +
          QuarterRight.skew(1.0,0.0),

          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5) +
          Forward,

          SwingRight +
          Forward_3,

          CrossFoldRight +
          Forward
      ]),

    AnimatedCall('Stretch Cross Trail Thru',
      formation:Formation('Normal Lines'),
      group:'Stretch',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Stand +
          ExtendRight.changeBeats(5).scale(2.0,4.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Stand +
          ExtendRight.changeBeats(3).scale(2.0,2.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(4).scale(2.0,3.5)
      ]),

    AnimatedCall('Stretch Flutterwheel (from Eight Chain Thru)',
      formation:Formation('Eight Chain Thru'),
      group:'Stretch',
      paths:[
          Stand.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          Forward_2 +
          RunRight.changehands(Hands.RIGHT).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight.changehands(Hands.BOTH).scale(0.5,0.5) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.0,0.5),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          RunRight.changehands(Hands.RIGHT).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.0,1.5) +
          SwingRight.changehands(Hands.BOTH).scale(0.5,0.5) +
          Forward_2 +
          UmTurnRight.changehands(Hands.LEFT).skew(1.0,0.5)
      ]),

    AnimatedCall('Stretch Flutterwheel (from Lines)',
      formation:Formation('Normal Lines'),
      group:'Stretch',
      paths:[
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.5,-1.5),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,2.25),

          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(1.5,0.5),

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(1.5,0.25)
      ]),

    AnimatedCall('Stretch Hinge',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Stretch',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0),

          HingeRight,

          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight
      ]),

    AnimatedCall('Stretch Linear Cycle',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Stretch',
      paths:[
          HingeRight +
          Forward_4 +
          RunRight,

          HingeRight +
          RunRight +
          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          UmTurnRight.skew(1.0,0.0),

          HingeRight +
          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          HingeRight +
          Forward_4 +
          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Stretch Partner Hinge',
      formation:Formation('Normal Lines'),
      group:'Stretch',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          LeadRight.changeBeats(3).scale(3.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0)
      ]),

    AnimatedCall('Stretch Partner Trade',
      formation:Formation('Lines Facing Out'),
      group:'Stretch',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,2.0),

          RunRight,

          FlipLeft,

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Stretch Recycle (from Right-Hand Waves)',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Stretch',
      paths:[
          RunRight.changeBeats(4).skew(3.0,-2.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-1.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(1.5,0.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Stretch Recycle (from Left-Hand Waves)',
      formation:Formation('Ocean Waves LH BGGB'),
      group:'Stretch',
      paths:[
          RunLeft.changeBeats(4).skew(1.0,2.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0),

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-1.5,0.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(1.5,0.0),

          RunLeft.changeBeats(4).skew(3.0,2.0)
      ]),

    AnimatedCall('Stretch Reverse Flutterwheel',
      formation:Formation('Eight Chain Thru'),
      group:'Stretch',
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.changehands(Hands.BOTH).scale(0.5,0.5) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.0,-0.5),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          Forward_2 +
          RunLeft.changehands(Hands.LEFT).skew(1.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft.changehands(Hands.BOTH).scale(0.5,0.5) +
          Forward_2 +
          UmTurnLeft.changehands(Hands.RIGHT).skew(1.0,-0.5),

          Stand.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          RunLeft.changehands(Hands.LEFT).skew(1.0,0.5)
      ]),

    AnimatedCall('Stretch Shakedown',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
  ]),
      from:'Lines Facing Out',group:'Stretch',
      paths:[
          UmTurnRight.skew(-1.5,-1.0) +
          LeadRight.scale(1.5,1.0),

          FlipRight +
          QuarterRight.skew(1.0,0.0),

          UmTurnRight.skew(-1.5,-2.5) +
          LeadRight.scale(1.5,0.5),

          FlipRight.scale(1.0,2.0) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Stretch Single Wheel',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Stretch',
      paths:[
          LeadRight.changeBeats(2).scale(3.0,1.0) +
          QuarterRight.skew(1.0,0.0),

          UmTurnRight.skew(1.0,0.0),

          UmTurnRight.changeBeats(3).skew(3.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Stretch Slide',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Stretch',
      paths:[
          BackSashayRight.changeBeats(4).scale(1.0,2.0),

          BackSashayRight,

          BackSashayRight,

          BackSashayRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Stretch Split Circulate (from Waves)',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Stretch',
      paths:[
          Forward_4,

          RunRight,

          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward,

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Stretch Split Circulate (from Columns)',
      formation:Formation('Column RH GBGB'),
      group:'Stretch',
      paths:[
          RunRight,

          Forward_2,

          Forward +
          RunRight.skew(1.0,0.0),

          Forward_4
      ]),

    AnimatedCall('Stretch Split Counter Rotate',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Stretch',
      paths:[
          CounterRotateRight_2_0.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          CounterRotateRight_0_m2.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          CounterRotateRight_3_1.changeBeats(4).changehands(Hands.RIGHT).skew(0.0,1.0),

          CounterRotateRight_m1_m3.changeBeats(4).changehands(Hands.RIGHT).skew(0.0,-1.0)
      ]),

    AnimatedCall('Stretch Split Transfer (from Waves)',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Stretch',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25),

          RunRight.changeBeats(4).scale(0.5,1.25) +
          Forward_2 +
          LeadRight.scale(1.0,0.5),

          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(3.5).scale(3.0,0.25),

          RunRight.changeBeats(6).scale(0.5,2.25) +
          Forward_2 +
          LeadRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Stretch Split Transfer (from Columns)',
      formation:Formation('Column RH GBGB'),
      group:'Stretch',
      paths:[
          RunRight.changeBeats(4).scale(0.5,1.75) +
          Forward_3 +
          LeadRight.scale(1.0,0.5),

          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(3).scale(2.0,2.25),

          RunRight.changeBeats(4).scale(0.5,1.75) +
          Forward +
          LeadRight.scale(1.0,0.5),

          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25)
      ]),

    AnimatedCall('Stretch Swing',
      formation:Formation('Ocean Waves RH BGBG'),
      group:'Stretch',
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight,

          RunRight,

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Stretch Touch',
      formation:Formation('Eight Chain Thru'),
      group:'Stretch',
      paths:[
          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0)
      ]),

    AnimatedCall('Stretch Touch a Quarter',
      formation:Formation('Eight Chain Thru'),
      group:'Stretch',
      paths:[
          ExtendLeft +
          Forward_2 +
          QuarterRight.changehands(Hands.RIGHT).skew(1.0,0.0),

          Forward_3 +
          HingeRight,

          ExtendLeft +
          QuarterRight.changehands(Hands.RIGHT).skew(1.0,0.0),

          Forward +
          HingeRight
      ]),

    AnimatedCall('Stretch Turn and Deal',
      formation:Formation('Two-Faced Lines RH'),
      group:'Stretch',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          LeadRight.changeBeats(2) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          LeadRight.changeBeats(2) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Stretch Turn and Deal (from Lines Facing Out)',
      formation:Formation('Lines Facing Out'),
      group:'Stretch',
      taminator: '''
    In this case the centers cannot easily move to the far center spots
    during the call.  So instead the centers Pass Thru after
    completing the Turn and Deal.
    ''',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          UmTurnLeft.changeBeats(4).skew(-1.0,2.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0),

          UmTurnRight.changeBeats(4).skew(1.0,-2.0)
      ]),

    AnimatedCall('Stretch Wheel and Deal',
      formation:Formation('Normal Lines'),
      group:'Stretch',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(3.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(3.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Stretch Veer Right',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',group:'Stretch',
      paths:[
          Forward_2.changehands(Hands.RIGHT) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0),

          Forward_2.changehands(Hands.LEFT) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0)
      ]),

    AnimatedCall('Stretch Wheel Thru',
      formation:Formation('Normal Lines'),
      group:'Stretch',
      paths:[
          LeadRight.changeBeats(4).scale(4.0,2.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          LeadRight.changeBeats(4).scale(1.0,2.0),

          LeadRight.changeBeats(4).scale(3.0,2.0),

          QuarterRight.changeBeats(3).skew(1.0,0.0)
      ]),

    AnimatedCall('Stretch Zoom',
      formation:Formation('Column RH GBGB'),
      group:'Stretch',
      paths:[
          FlipLeft.changeBeats(1).scale(0.5,0.5) +
          Forward_3 +
          LeadLeft.changeBeats(1).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0),

          Forward_2,

          FlipLeft.changeBeats(1).scale(0.5,0.5) +
          Forward +
          LeadLeft.changeBeats(1).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0),

          Forward_4
      ]),
    c1.Recycle.where((tam) =>
      tam.title == 'Stretch 2/3 Recycle').first.xref(title: 'Stretch 2/3 Recycle').xref(group: 'Stretch (C-1)'),
    c1.AhSo.where((tam) =>
      tam.title == 'Stretch Ah So').first.xref(title: 'Stretch Ah So').xref(group: 'Stretch (C-1)'),
    c1.FollowThru.where((tam) =>
      tam.title == 'Stretch Follow Thru').first.xref(title: 'Stretch Follow Thru').xref(group: 'Stretch (C-1)'),
    c1.ReverseExplode.where((tam) =>
      tam.title == 'Stretch Reverse Explode').first.xref(title: 'Stretch Reverse Explode').xref(group: 'Stretch (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'Stretch Shakedown (from columns)').first.xref(title: 'Stretch Shakedown (from columns)').xref(group: 'Stretch (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'Stretch Shakedown (from lines)').first.xref(title: 'Stretch Shakedown (from lines)').xref(group: 'Stretch (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'Stretch Left Shakedown (from columns)').first.xref(title: 'Stretch Left Shakedown (from columns)').xref(group: 'Stretch (C-1)'),
    c1.Shakedown.where((tam) =>
      tam.title == 'Stretch Left Shakedown (from lines)').first.xref(title: 'Stretch Left Shakedown (from lines)').xref(group: 'Stretch (C-1)'),
    c1.StepAndFlip.where((tam) =>
      tam.title == 'Stretch Step and Flip').first.xref(title: 'Stretch Step and Flip').xref(group: 'Stretch (C-1)'),
    c1.StepAndFold.where((tam) =>
      tam.title == 'Stretch Step and Fold').first.xref(title: 'Stretch Step and Fold').xref(group: 'Stretch (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'Stretch Wheel Fan Thru').first.xref(title: 'Stretch Wheel Fan Thru').xref(group: 'Stretch (C-1)'),
    c1.WheelFanThru.where((tam) =>
      tam.title == 'Stretch Left Wheel Fan Thru').first.xref(title: 'Stretch Left Wheel Fan Thru').xref(group: 'Stretch (C-1)'),
    c1.Zing.where((tam) =>
      tam.title == 'Stretch Zing').first.xref(title: 'Stretch Zing').xref(group: 'Stretch (C-1)'),
    c2.Bounce.where((tam) =>
      tam.title == 'Stretch Bounce the Boys').first.xref(title: 'Stretch Bounce the Boys').xref(group: 'Stretch (C-2)'),
    c2.TurnToALine.where((tam) =>
      tam.title == 'Stretch Turn to a Line').first.xref(title: 'Stretch Turn to a Line').xref(group: 'Stretch (C-2)'),
    c3a.MiniChase.where((tam) =>
      tam.title == 'Stretch Mini Chase').first.xref(title: 'Stretch Mini Chase').xref(group: 'Stretch (C-3A)'),
    c3a.SingleConcept.where((tam) =>
      tam.title == 'Stretch Single Checkmate').first.xref(title: 'Stretch Single Checkmate').xref(group: 'Stretch (C-3A)'),
  ];

