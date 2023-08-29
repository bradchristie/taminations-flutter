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
import '../c2/bounce.dart' as c2;
import '../c2/circle_to_a_wave.dart' as c2;
import '../c2/cross_the_k.dart' as c2;
import '../c2/turn_to_a_line.dart' as c2;

  final List<AnimatedCall> CrossConcentricConcept = [
    c2.Bounce.where((tam) =>
      tam.title == 'Cross Concentric Bounce the Boys').first.xref(title: 'Cross Concentric Bounce the Boys').xref(group: 'Cross Concentric'),
    c2.CircleToAWave.where((tam) =>
      tam.title == 'Cross Concentric Circle to a Wave').first.xref(title: 'Cross Concentric Circle to a Wave').xref(group: 'Cross Concentric'),

    AnimatedCall('Cross Concentric Crossfire',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'Cross Concentric',
      paths:[
          Stand.changeBeats(3) +
          RunRight.changeBeats(4).scale(1.0,2.25).skew(1.0,0.0),

          Stand.changeBeats(3) +
          RunRight.scale(1.0,1.75) +
          Forward,

          RunLeft.skew(3.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Cross Concentric Flip the Diamond',
      formation:Formation('Concentric Diamonds RH'),
      group:'Cross Concentric',
      paths:[
          LeadRight.changeBeats(3).scale(1.5,3.0),

          LeadRight.changeBeats(3).scale(3.5,1.0),

          UmTurnRight.skew(0.0,0.5),

          RunRight.scale(1.0,1.75)
      ]),

    AnimatedCall('Cross Concentric Hinge',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Cross Concentric',
      paths:[
          QuarterRight.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,-1.5),

          QuarterRight.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.5),

          QuarterRight.changeBeats(3).skew(3.0,0.5),

          QuarterRight.changeBeats(3).skew(3.0,-1.5)
      ]),

    AnimatedCall('Cross Concentric Recycle',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Cross Concentric',
      paths:[
          Stand.changeBeats(1) +
          LeadRight.changeBeats(3).scale(1.0,2.5) +
          QuarterRight.changeBeats(3).skew(2.0,0.0),

          Stand.changeBeats(2) +
          UmTurnRight.skew(-1.0,0.5) +
          UmTurnRight.skew(0.0,-1.0),

          RunRight.changeBeats(4).skew(3.0,-0.5),

          FlipRight.scale(1.0,0.5).skew(-1.5,0.0) +
          FlipRight.scale(1.0,0.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Cross Concentric Reverse Explode',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Cross Concentric',
      paths:[
          Stand +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          Stand +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(3).scale(3.0,0.5),

          LeadRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Cross Concentric Star Thru',
      formation:Formation('Normal Lines'),
      group:'Cross Concentric',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(3).skew(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(3).skew(3.0,-1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Concentric Star Thru (example 1)',
      formation:Formation('Double Pass Thru'),
      group:'Cross Concentric',
      paths:[
          Forward_2 +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5),

          Forward_2 +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          ExtendLeft +
          QuarterRight.changeBeats(2).skew(1.0,1.0),

          Forward +
          QuarterLeft.changeBeats(2).skew(1.0,-2.0)
      ]),

    AnimatedCall('Cross Concentric Star Thru (example 2)',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:270),
  ]),
      group:'Cross Concentric',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(3).skew(3.0,-1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(1.0,0.5)
      ]),

    AnimatedCall('Cross Concentric Star Thru (example 3)',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:270),
  ]),
      group:'Cross Concentric',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(3).scale(1.0,2.5),

          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(3).skew(1.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.changeBeats(3).skew(1.0,-2.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(3).scale(1.0,1.5)
      ]),

    AnimatedCall('Cross Concentric Step and Fold',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Cross Concentric',
      paths:[
          FlipRight.scale(1.0,1.25).skew(1.0,0.0),

          ExtendLeft.changeBeats(3).scale(1.0,1.5),

          FlipRight.scale(1.0,0.25).skew(3.0,0.0),

          ExtendRight.changeBeats(3).scale(3.0,0.5)
      ]),
    c2.CrossTheK.where((tam) =>
      tam.title == 'Cross Concentric the K').first.xref(title: 'Cross Concentric The K').xref(group: 'Cross Concentric'),
    c2.TurnToALine.where((tam) =>
      tam.title == 'Cross Concentric Turn to a Line (from waves)').first.xref(title: 'Cross Concentric Turn to a Line').xref(group: 'Cross Concentric'),

    AnimatedCall('Cross Concentric Wheel and Deal',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'Cross Concentric',
      paths:[
          RunRight.changehands(Hands.RIGHT).skew(1.0,-2.5),

          UmTurnRight.changehands(Hands.LEFT).skew(1.0,-1.5),

          RunLeft.changehands(Hands.GRIPLEFT).skew(3.0,0.5),

          UmTurnLeft.changehands(Hands.GRIPRIGHT).skew(3.0,-0.5)
      ]),
  ];

