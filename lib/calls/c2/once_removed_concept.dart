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
import '../c2/cross_the_k.dart' as c2;

  final List<AnimatedCall> OnceRemovedConcept = [

    AnimatedCall('Once Removed Boys Run',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
  ]),
      group:'(From lines) Once Removed',isGenderSpecific:true,
      taminator: '''
    For these animations, the dancers are colored to show those who work together.
    ''',
      paths:[
          DodgeRight.changeBeats(5).scale(1.0,2.0),

          RunRight.changeBeats(5).scale(1.0,2.0),

          DodgeRight.changeBeats(5).scale(1.0,2.0),

          RunRight.changeBeats(5).scale(1.0,2.0)
      ]),

    AnimatedCall('Once Removed Chase Right',
      formation:Formation('Lines Facing Out Compact'),
      group:'(From lines) Once Removed',
      paths:[
          UmTurnRight.skew(-2.0,0.0) +
          Forward +
          RunRight.changeBeats(5).scale(1.0,2.0),

          UmTurnRight.skew(-2.0,0.0) +
          Forward +
          RunRight.changeBeats(5).scale(1.0,2.0),

          RunRight.changeBeats(5).scale(1.0,2.0) +
          Forward_3,

          RunRight.changeBeats(5).scale(1.0,2.0) +
          Forward_3
      ]),

    AnimatedCall('Once Removed Circle By 1/4 by 1/2',
      formation:Formation('Normal Lines Compact'),
      group:'(From lines) Once Removed',
      taminator: '''
      Dancers are not Once Removed at the end of the call because the formation
      axis has changed.''',
      paths:[
          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(0.5,0.0) +
          CircleLeftQuarter.changeBeats(4).changehands(0).scale(2.0,2.0) +
          EighthLeft.changeBeats(1) +
          Stand.changehands(0) +
          ExtendLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5),

          EighthRight.changeBeats(1).changehands(Hands.RIGHT).skew(0.5,0.0) +
          CircleLeftQuarter.changeBeats(4).changehands(0).scale(2.0,2.0) +
          EighthLeft.changeBeats(1) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(0.5,0.0) +
          CircleLeftQuarter.changeBeats(4).changehands(0).scale(4.0,4.0) +
          EighthRight.changeBeats(1) +
          Stand.changehands(0) +
          Forward.changeBeats(2) +
          SwingRight.scale(0.75,1.0),

          EighthLeft.changeBeats(1).changehands(Hands.LEFT).skew(0.5,0.0) +
          CircleLeftQuarter.changeBeats(4).changehands(0).scale(4.0,4.0) +
          EighthRight.changeBeats(1) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.75,1.0)
      ]),

    AnimatedCall('Once Removed Circulate',
      formation:Formation('Two-Faced Lines RH Compact'),
      group:'(From lines) Once Removed',
      paths:[
          Forward_3.changeBeats(4),

          Forward_3.changeBeats(4),

          RunRight.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Once Removed Counter Rotate',
      formation:Formation('Two-Faced Lines RH Compact'),
      group:'(From lines) Once Removed',
      paths:[
          CounterRotateRight_2_0.scale(1.25,1.0),

          CounterRotateRight_2_0.scale(1.25,1.0),

          CounterRotateRight_0_m2.scale(1.0,2.0).skew(-0.5,0.0),

          CounterRotateRight_0_m2.scale(1.0,2.0).skew(-0.5,0.0)
      ]),

    AnimatedCall('Once Removed Partner Trade',
      formation:Formation('Lines Facing Out Compact'),
      group:'(From lines) Once Removed',
      paths:[
          FlipLeft.changeBeats(6).scale(1.0,2.0),

          FlipLeft.changeBeats(6).scale(1.0,2.0),

          RunRight.changeBeats(6).scale(1.0,2.0),

          RunRight.changeBeats(6).scale(1.0,2.0)
      ]),

    AnimatedCall('Once Removed Pass the Ocean',
      formation:Formation('Normal Lines'),
      group:'(From lines) Once Removed',
      taminator: '''
      Dancers are not Once Removed at the end of the call because the formation
      axis has changed.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(3.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(3.0,3.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(1.0,2.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(1.0,0.5)
      ]),

    AnimatedCall('Once Removed Peel Off',
      formation:Formation('Ocean Waves RH BGGB Compact'),
      group:'(From lines) Once Removed',
      paths:[
          UmTurnLeft.changeBeats(3).skew(1.5,-0.5) +
          BackSashayLeft.scale(1.0,0.5),

          FlipRight.changeBeats(3).skew(-1.5,1.5) +
          BackSashayLeft.scale(1.0,0.5),

          UmTurnRight.changeBeats(3).skew(1.5,0.5),

          FlipLeft.changeBeats(4).skew(-1.5,-1.5)
      ]),

    AnimatedCall('Once Removed Shakedown',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
  ]),
      group:'(From lines) Once Removed',
      paths:[
          UmTurnRight.skew(-1.25,0.0) +
          QuarterRight.skew(1.25,0.0),

          UmTurnRight.skew(-1.25,0.0) +
          QuarterRight.skew(1.25,0.0),

          RunRight.changeBeats(4).scale(1.0,2.0) +
          QuarterRight.skew(0.5,0.0),

          RunRight.changeBeats(4).scale(1.0,2.0) +
          QuarterRight.skew(0.5,0.0)
      ]),

    AnimatedCall('Once Removed Single Wheel',
      formation:Formation('Lines Facing Out Compact'),
      group:'(From lines) Once Removed',
      taminator: '''
      Note that this is the same as Turn and Deal.
      Dancers are not Once Removed at the end of the call because the formation
      axis has changed.
    ''',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-0.5,2.0),

          UmTurnLeft.changeBeats(4).skew(-0.5,2.0),

          UmTurnRight.changeBeats(4).skew(1.5,-2.0),

          UmTurnRight.changeBeats(4).skew(1.5,-2.0)
      ]),

    AnimatedCall('Once Removed Square Chain Thru',
      formation:Formation('Normal Lines Compact'),
      group:'(From lines) Once Removed',
      taminator: '''
      This call is done by "taking out" the Once Removed after the
      first pull by. After completion of the call the centers pass thru to
      restore the Once Removed setup.
    ''',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          Stand.changeBeats(1.5).changehands(0) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3).changehands(0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.scale(1.5,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          SwingLeft.scale(0.5,0.5) +
          Stand.changeBeats(3).changehands(0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          Stand.changeBeats(1.5).changehands(0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Once Removed Square Thru 3 to a Wave',
      formation:Formation('Normal Lines Compact'),
      group:'(From lines) Once Removed',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.scale(0.5,0.5) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          QuarterRight.changeBeats(2).skew(1.5,0.0) +
          DodgeLeft.changeBeats(1).scale(1.0,0.5).skew(0.5,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadRight.scale(0.5,0.5) +
          Forward.changeBeats(1.5).scale(2.5,1.0) +
          LeadRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.scale(1.5,0.5) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          LeadLeft.changeBeats(2) +
          Stand.changeBeats(1.5).changehands(0) +
          DodgeLeft.changeBeats(1).scale(1.0,0.5).skew(0.5,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.scale(1.5,0.5) +
          Forward.changeBeats(1.5).scale(0.5,1.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          LeadLeft.changeBeats(2).scale(0.5,1.5)
      ]),

    AnimatedCall('Once Removed Swap Around',
      formation:Formation('Normal Lines Compact'),
      group:'(From lines) Once Removed',
      paths:[
          FlipRight.changeBeats(4).scale(1.0,2.0),

          FlipRight.changeBeats(4).scale(1.0,2.0),

          Forward_3.changeBeats(4),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Once Removed Walk and Dodge',
      formation:Formation('Two-Faced Lines RH Compact'),
      group:'(From lines) Once Removed',
      paths:[
          Forward_3.changeBeats(4).changehands(Hands.RIGHT),

          Forward_3.changeBeats(4).changehands(Hands.LEFT),

          DodgeRight.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0),

          DodgeRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0)
      ]),

    AnimatedCall('Once Removed Circulate',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Once Removed',
      paths:[
          RunRight.changeBeats(4),

          RunRight.changeBeats(4),

          Forward_4,

          Forward_4
      ]),

    AnimatedCall('Once Removed Hinge',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Once Removed',
      paths:[
          LeadRight.scale(0.5,1.0),

          LeadRight.scale(1.5,1.0),

          LeadRight.scale(0.5,1.0),

          LeadRight.scale(1.5,1.0)
      ]),

    AnimatedCall('Once Removed Peel Off',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Once Removed',
      paths:[
          RunLeft.changeBeats(4).skew(-1.5,0.0),

          RunLeft.changeBeats(4).skew(-2.5,0.0),

          UmTurnLeft.changeBeats(4).skew(2.5,0.0),

          UmTurnLeft.changeBeats(4).skew(1.5,0.0)
      ]),

    AnimatedCall('Once Removed Quarter Thru',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Once Removed',
      paths:[
          LeadRight.scale(0.5,1.0),

          LeadRight.scale(1.5,1.0),

          LeadRight.scale(0.5,1.0) +
          LeadLeft.scale(0.5,1.0) +
          LeadLeft.scale(1.0,0.5),

          LeadRight.scale(1.5,1.0) +
          LeadLeft.scale(0.5,1.0) +
          LeadLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Once Removed Turn to a Line',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Once Removed',
      taminator: '''
      Dancers are not Once Removed at the end of the call because the formation
      axis has changed.
    ''',
      paths:[
          UmTurnRight.changeBeats(4).skew(-1.0,-2.0),

          QuarterRight.changeBeats(2).skew(-1.0,-1.5) +
          QuarterRight.changeBeats(2).skew(0.5,-2.0),

          QuarterLeft.changeBeats(2).skew(1.0,1.5) +
          QuarterLeft.changeBeats(2).skew(0.5,-2.0),

          UmTurnLeft.changeBeats(4).skew(1.0,2.0)
      ]),

    AnimatedCall('Once Removed Walk and Dodge',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      group:'(From columns) Once Removed',
      paths:[
          DodgeRight.changeBeats(4),

          DodgeRight.changeBeats(4),

          Forward_4,

          Forward_4
      ]),

    AnimatedCall('Once Removed Zoom',
      formation:Formation('Column RH GBGB'),
      group:'(From columns) Once Removed',
      paths:[
          RunLeft.skew(-2.0,0.0) +
          RunLeft.skew(2.0,0.0),

          RunLeft.skew(-2.0,0.0) +
          RunLeft.skew(2.0,0.0),

          Forward_4.changeBeats(6),

          Forward_4.changeBeats(6)
      ]),

    AnimatedCall('Once Removed Pass the Ocean',
      formation:Formation('Double Pass Thru'),
      group:'(From double pass thru) Once Removed',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          LeadRight.scale(1.5,1.0) +
          DodgeLeft.changeBeats(1).scale(1.0,0.5).skew(0.5,0.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          HingeLeft.scale(0.5,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          LeadRight.scale(1.5,1.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterLeft +
          DodgeLeft.changeBeats(1).scale(1.0,0.25).skew(0.5,0.0)
      ]),

    AnimatedCall('Once Removed Right and Left Thru',
      formation:Formation('Double Pass Thru'),
      group:'(From double pass thru) Once Removed',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0)
      ]),

    AnimatedCall('Once Removed Slide Thru',
      formation:Formation('Double Pass Thru'),
      group:'(From double pass thru) Once Removed',
      isGenderSpecific: true,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterLeft.skew(1.0,-1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterLeft.skew(1.0,-1.0)
      ]),

    AnimatedCall('Once Removed Touch a Quarter',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ]),
      group:'(From double pass thru) Once Removed',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterRight.skew(1.0,-1.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          QuarterRight.skew(1.0,-1.0)
      ]),

    AnimatedCall('Once Removed Turn to a Line',
      formation:Formation('Double Pass Thru'),
      group:'(From double pass thru) Once Removed',
      paths:[
          UmTurnLeft.changeBeats(4).skew(1.5,2.0),

          UmTurnLeft.changeBeats(4).skew(1.5,2.0),

          UmTurnLeft.changeBeats(4).skew(2.5,2.0),

          UmTurnLeft.changeBeats(4).skew(2.5,2.0)
      ]),

    AnimatedCall('Once Removed Crossfire',
      formation:Formation('Tidal Line RH'),
      group:'(From tidal line) Once Removed',
      paths:[
          LeadRight.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(2.5,0.5),

          LeadRight.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(3.5,0.5),

          LeadRight.scale(0.5,1.0) +
          LeadRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5),

          LeadRight.scale(0.5,1.0) +
          LeadRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,1.5)
      ]),

    AnimatedCall('Once Removed Reverse Explode',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'(From tidal line) Once Removed',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          LeadRight.changeBeats(2).scale(1.0,1.5),

          LeadRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Once Removed Spin the Top',
        formation: Formation('Two-Faced Tidal Line RH'),
        group:'(From tidal line) Once Removed',
        paths: [
          LeadRight.scale(0.5,0.5) +
              Forward +
              LeadRight.scale(0.5,0.5) +
              LeadLeft.scale(0.5,0.5) +
              Forward +
              LeadLeft.scale(0.5,0.5) +
              LeadLeft +
              Forward,

          LeadRight.scale(0.5,0.5) +
              Forward +
              LeadRight.scale(0.5,0.5) +
              LeadLeft.scale(0.5,0.5) +
              Forward +
              LeadLeft.scale(0.5,0.5) +
              QuarterLeft.skew(1, 0),

          LeadRight.scale(0.5,0.5) +
              Forward +
              LeadRight.scale(0.5,0.5) +
              LeadRight.changeBeats(4).scale(3,2),

          LeadRight.scale(0.5,0.5) +
              Forward +
              LeadRight.scale(0.5,0.5) +
              LeadRight.changeBeats(4).scale(3,4)

        ]),

    AnimatedCall('Once Removed Swing Thru',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'(From tidal line) Once Removed',
      paths:[
          LeadRight.scale(0.5,0.5) +
          Forward +
          LeadRight.scale(0.5,0.5) +
          LeadLeft.scale(0.5,0.5) +
          Forward +
          LeadLeft.scale(0.5,0.5),

          LeadRight.scale(0.5,0.5) +
          Forward +
          LeadRight.scale(0.5,0.5) +
          LeadLeft.scale(0.5,0.5) +
          Forward +
          LeadLeft.scale(0.5,0.5),

          LeadRight.scale(0.5,0.5) +
          Forward +
          LeadRight.scale(0.5,0.5),

          LeadRight.scale(0.5,0.5) +
          Forward +
          LeadRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Once Removed Switch to a Diamond',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'(From tidal line) Once Removed',
      paths:[
          LeadRight +
          Forward.changeBeats(2).scale(1.5,1.0),

          LeadRight.scale(1.0,1.5) +
          Forward_2,

          RunRight.changeBeats(3.5).scale(1.0,1.75),

          RunRight.changeBeats(3.5).scale(1.0,1.25)
      ]),

    AnimatedCall('Once Removed Turn and Deal',
      formation:Formation('Two-Faced Tidal Line LH'),
      group:'(From tidal line) Once Removed',
      paths:[
          UmTurnLeft.changeBeats(4).skew(-1.5,0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-2.5),

          UmTurnRight.changeBeats(4).skew(1.5,-3.5)
      ]),

    AnimatedCall('Once Removed Two-Thirds Recycle',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'(From tidal line) Once Removed',
      paths:[
          LeadRight.skew(0.0,0.5) +
          Forward_4,

          LeadRight.skew(0.0,-0.5) +
          Forward_4,

          LeadRight.skew(0.0,-0.5) +
          RunRight.changeBeats(4),

          LeadRight.skew(0.0,0.5) +
          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Once Removed Bend the Line',
      formation:Formation('Tidal Wave RH BGBG'),
      group:'(From tidal wave) Once Removed',
      paths:[
          HingeRight.changeBeats(3).scale(1.0,0.5),

          BackSashayLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadLeft.scale(1.0,0.5),

          BackSashayLeft.changeBeats(1.5).scale(1.0,0.5) +
          BackHingeLeft.scale(1.0,0.5),

          BackHingeRight.changeBeats(3).scale(1.0,0.5)
      ]),
    c2.CrossTheK.where((tam) =>
      tam.title == 'Once Removed the K').first.xref(title: 'Once Removed The K').xref(group: '(From tidal wave) Once Removed'),

    AnimatedCall('Once Removed Turn and Deal',
      formation:Formation('Tidal Wave RH BGBG'),
      group:'(From tidal wave) Once Removed',
      paths:[
          UmTurnRight.changeBeats(4).skew(1.5,-0.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,1.5),

          UmTurnRight.changeBeats(4).skew(1.5,-2.5),

          UmTurnLeft.changeBeats(4).skew(-1.5,3.5)
      ]),

    AnimatedCall('Once Removed Wheel and Deal',
      formation:Formation('Tidal Wave RH BGBG'),
      group:'(From tidal wave) Once Removed',
      paths:[
          Forward +
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(1.5,0.0) +
          ExtendLeft.changeBeats(3).scale(1.0,0.5),

          Forward +
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0) +
          ExtendRight.changeBeats(3).scale(2.5,1.5),

          Forward +
          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.5,0.0) +
          ExtendRight.changeBeats(3).scale(1.0,1.5),

          Forward +
          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT) +
          ExtendLeft.changeBeats(3).scale(2.5,0.5)
      ]),

    AnimatedCall('Once Removed Diamond Circulate',
      formation:Formation('Once Removed Diamonds Tandem Centers'),
      group:'(From OR diamonds, tandem centers) Once Removed',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,4.0),

          LeadRight.changeBeats(4).scale(4.0,1.0),

          LeadRight.changeBeats(4).scale(4.0,1.0),

          LeadRight.changeBeats(4).scale(1.0,4.0)
      ]),

    AnimatedCall('Once Removed Flip the Diamond',
      formation:Formation('Once Removed Diamonds Tandem Centers'),
      group:'(From OR diamonds, tandem centers) Once Removed',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.75),

          LeadRight.changeBeats(4).scale(2.5,1.0),

          LeadRight.changeBeats(4).scale(3.5,1.0),

          RunRight.changeBeats(4).scale(1.0,1.25)
      ]),

    AnimatedCall('Once Removed Cut the Diamond',
      formation:Formation('Once Removed Diamonds Tandem Centers'),
      group:'(From OR diamonds, tandem centers) Once Removed',
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,1.75) +
          RunRight.scale(0.5,1.0),

          LeadRight.changeBeats(4).scale(2.5,1.0),

          LeadRight.changeBeats(4).scale(3.5,1.0),

          DodgeRight.changeBeats(4).scale(1.0,1.25) +
          RunRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Once Removed Reverse Flip the Diamond',
      formation:Formation('Once Removed Diamonds Tandem Centers'),
      group:'(From OR diamonds, tandem centers) Once Removed',
      paths:[
          LeadRight.changeBeats(4).scale(1.0,3.5),

          FlipLeft.changeBeats(4).skew(0.5,0.0),

          FlipLeft.changeBeats(4).skew(-0.5,0.0),

          LeadRight.changeBeats(4).scale(1.0,4.5)
      ]),

    AnimatedCall('Once Removed Reverse Cut the Diamond',
      formation:Formation('Once Removed Diamonds Tandem Centers'),
      group:'(From OR diamonds, tandem centers) Once Removed',
      paths:[
          Stand +
          LeadRight.changeBeats(3.5).scale(1.0,3.5),

          HingeRight.scale(0.5,1.0) +
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          Stand +
          LeadRight.changeBeats(3.5).scale(1.0,4.5)
      ]),

    AnimatedCall('Once Removed Diamond Circulate',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      group:'(From OR diamonds, tandem points) Once Removed',
      taminator: '''
      Same as Interlocked Diamond Circulate
    ''',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0),

          Stand +
          LeadRight.changeBeats(2).scale(3.0,3.0),

          LeadRight.changeBeats(3).scale(3.0,3.0),

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Once Removed Flip the Diamond',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      group:'(From OR diamonds, tandem points) Once Removed',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0),

          RunRight,

          LeadRight.changeBeats(3).scale(3.0,3.0),

          RunRight
      ]),

    AnimatedCall('Once Removed Cut the Diamond',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      group:'(From OR diamonds, tandem points) Once Removed',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0),

          DodgeRight +
          SwingRight,

          LeadRight.changeBeats(3).scale(3.0,3.0),

          DodgeRight +
          SwingRight
      ]),

    AnimatedCall('Once Removed Reverse Flip the Diamond',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      group:'(From OR diamonds, tandem points) Once Removed',
      paths:[
          FlipLeft.changeBeats(4).scale(1.0,0.25),

          LeadRight.changeBeats(4).scale(2.5,3.0),

          FlipLeft.changeBeats(4).scale(1.0,0.75),

          LeadRight.changeBeats(4).scale(1.0,3.0).skew(-1.5,0.0)
      ]),

    AnimatedCall('Once Removed Reverse Cut the Diamond',
      formation:Formation('Interlocked Diamonds RH Girl Points'),
      group:'(From OR diamonds, tandem points) Once Removed',
      paths:[
          LeadRight.scale(0.5,1.0) +
          Forward.changeBeats(2).scale(3.5,1.0) +
          LeadRight.scale(1.0,0.5),

          Stand +
          LeadRight.changeBeats(4).scale(2.5,3.0),

          LeadRight.scale(0.5,1.0) +
          Forward.changeBeats(2).scale(2.5,1.0) +
          LeadRight.scale(1.0,0.5),

          Stand +
          LeadRight.changeBeats(4).scale(1.0,3.0).skew(-1.5,0.0)
      ]),
  ];

