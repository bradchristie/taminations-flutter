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
import '../c3b/lift_off.dart' as c3b;
import '../c3b/rip_off.dart' as c3b;
import '../c3a/swap_the_top.dart' as c3a;
import '../c3b/swap_the_top.dart' as c3b;

  final List<AnimatedCall> MirrorConcept = [

    AnimatedCall('Mirror All 4 Couples Right and Left Thru',
      formation:Formation('Static Square'),
      group:'Mirror',
      paths:[
          ExtendLeft.changeBeats(3.5).scale(3.0,1.0) +
          Forward_2 +
          ExtendRight +
          BeauReverseWheel,

          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadLeft +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          BelleReverseWheel,

          ExtendLeft.changeBeats(3.5).scale(3.0,1.0) +
          Forward_2 +
          ExtendRight +
          BeauReverseWheel,

          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadLeft +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          BelleReverseWheel
      ]),

    AnimatedCall('Mirror Brace Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
  ]),
      from:'Lines',group:'Mirror',fractions:'3',
      taminator: '''
    If you are uncertain about any of these Mirror animations, hold a
    mirror to the side and look at the animation through the mirror.
    You will see the "normal" version of the call.
    ''',
      paths:[
          PullRight.changeBeats(1.5).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          UmTurnRight,

          PullRight.changeBeats(1.5).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          UmTurnLeft,

          PullRight.changeBeats(1.5).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          BelleReverseWheel,

          PullRight.changeBeats(1.5).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          BeauReverseWheel
      ]),

    AnimatedCall('Mirror Pass the Ocean',
      formation:Formation('Facing Couples'),
      group:'Mirror',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          Forward.changeBeats(.5) +
          LeadLeft.scale(2.0,1.5)
      ]),

    AnimatedCall('Mirror Pass the Sea',
      formation:Formation('Facing Couples'),
      group:'Mirror',
      paths:[
          ExtendRight.changeBeats(2.5).scale(2.0,0.5) +
          LeadRight.changeBeats(3.5).scale(3.0,0.5),

          ExtendRight.changeBeats(2.5).scale(2.0,0.5) +
          LeadLeft.changeBeats(3.5).scale(1.0,1.5)
      ]),

    AnimatedCall('Mirror Recycle',
      formation:Formation('Facing Couples'),
      from:'Facing Couples',group:'Mirror',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.NONE, cx1: -.5, cy1: 0, cx2: 0, cy2: -4, x2: 2, y2: -4, cx3: 1, cx4: 2, cy4: -2, x4: 3, y4: -2  )),

          UmTurnLeft.changeBeats(3).skew(2.0,0.0)
      ]),

    AnimatedCall('Mirror Right and Left Thru',
      formation:Formation('Facing Couples Compact'),
      group:'Mirror',
      paths:[
          PullRight.scale(1.5,0.5) +
          ExtendLeft.scale(1.5,0.5) +
          BeauReverseWheel.scale(0.67,1.0),

          PullRight.scale(1.5,0.5) +
          ExtendLeft.scale(1.5,0.5) +
          BelleReverseWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Mirror Single Wheel',
      formation:Formation('Facing Couples'),
      group:'Mirror',
      paths:[
          UmTurnRight.skew(-1.0,-1.0),

          UmTurnLeft.skew(1.0,1.0)
      ]),

    AnimatedCall('Mirror Slide Thru',
      formation:Formation('Facing Couples Compact'),
      group:'Mirror',isGenderSpecific:true,
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,1.0),

          ExtendRight.changeBeats(2).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    c3a.SwapTheTop.where((tam) =>
    tam.title == 'Reverse Swap the Top').first.xref(title: 'Mirror Swap the Top').xref(group: 'Mirror'),

    AnimatedCall('Mirror Wheel and Deal',
      formation:Formation('Lines Facing Out'),
      group:'Mirror',
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(-1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('Mirror Triple Star Thru',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ]),
      from:'Double Pass Thru',group:'Mirror',fractions:'3;3',
      paths:[
          Stand.changeBeats(6) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,1.5),

          Stand.changeBeats(6) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5),

          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,1.5),

          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5)
      ]),
    c3b.LiftOff.where((tam) =>
      tam.title == 'Mirror Lift Off').first.xref(title: 'Mirror Lift Off').xref(group: 'Mirror (C-3B)'),
    c3b.RipOff.where((tam) =>
      tam.title == 'Mirror Rip Off' && tam.from == 'Completed Double Pass Thru').first.xref(title: 'Mirror Rip Off (from completed double pass thru)').xref(group: 'Mirror (C-3B)'),
    c3b.RipOff.where((tam) =>
      tam.title == 'Mirror Rip Off' && tam.from == 'Magic Columns').first.xref(title: 'Mirror Rip Off (from magic columns)').xref(group: 'Mirror (C-3B)'),
    c3b.SwapTheTop.where((tam) =>
      tam.title == 'Mirror Cross Swap the Top').first.xref(title: 'Mirror Cross Swap the Top').xref(group: 'Mirror (C-3B)'),
  ];

