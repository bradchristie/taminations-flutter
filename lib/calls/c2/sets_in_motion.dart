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
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> SetsInMotion = [

    AnimatedCall('Sets in Motion',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          Forward_4 +
          RunRight.changeBeats(4).scale(2.0,2.0) +
          Forward_2,

          HingeLeft +
          QuarterLeft +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          FlipRight.changeBeats(3).skew(2.0,0.5),

          HingeLeft +
          SwingRight +
          LeadRight.scale(0.5,1.0) +
          Forward_3 +
          FlipLeft.scale(1.0,0.25),

          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward_2
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          Forward_2,

          HingeRight +
          SwingLeft +
          QuarterLeft.skew(-0.5,1.0) +
          Forward_3 +
          FlipLeft.scale(1.0,0.25),

          HingeRight +
          QuarterRight +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          FlipRight.changeBeats(3).skew(2.0,0.5),

          Forward_4 +
          RunLeft.changeBeats(4) +
          Forward_2
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_4 +
          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_2,

          HingeRight +
          SwingLeft +
          QuarterLeft +
          ExtendLeft.scale(1.0,0.5) +
          Forward_3 +
          FlipLeft.scale(1.0,0.25),

          HingeRight +
          QuarterRight +
          Stand.changeBeats(3) +
          ExtendLeft.scale(1.0,0.5) +
          Forward_3 +
          FlipRight.changeBeats(3).skew(2.0,0.5),

          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward_2
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          Forward_2,

          HingeLeft +
          QuarterLeft +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          FlipRight.changeBeats(3).skew(2.0,0.5),

          HingeLeft +
          SwingRight +
          LeadRight.scale(0.5,1.0) +
          Forward_3 +
          FlipLeft.scale(1.0,0.25),

          Forward_4 +
          RunLeft.changeBeats(4) +
          Forward_2
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          RunLeft.changeBeats(5).scale(2.0,3.0) +
          Forward_2,

          QuarterLeft.skew(-1.0,1.0) +
          SwingLeft +
          QuarterLeft +
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          FlipLeft.scale(1.0,0.25).skew(-0.5,0.0),

          HingeRight +
          QuarterRight +
          Stand.changeBeats(3) +
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          FlipRight.changeBeats(3).skew(1.5,0.5),

          RunRight.changeBeats(5).scale(3.0,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          HingeRight.changeBeats(3).scale(4.0,3.0) +
          QuarterRight.changeBeats(.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,1.0) +
          Forward.changeBeats(1.8).scale(3.0,1.0) +
          Forward.changeBeats(1).scale(1.0,1.0),

          QuarterLeft.skew(-1.0,1.0) +
          SwingLeft +
          QuarterLeft.skew(-0.5,1.0) +
          Forward_3 +
          FlipLeft.scale(1.0,0.25),

          HingeRight +
          QuarterRight +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          FlipRight.changeBeats(3).skew(2.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,1.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,1.0) +
          HingeLeft.changeBeats(3).changehands(0).scale(2.5,3.0) +
          QuarterLeft.changeBeats(.5) +
          ExtendLeft.scale(1.0,1.0) +
          Forward.changeBeats(2.3).scale(3.5,1.0) +
          Forward.changeBeats(1).scale(1.0,1.0)
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          HingeRight.changeBeats(3).scale(4.0,3.0) +
          QuarterRight.changeBeats(.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,1.0) +
          Forward.changeBeats(1.8).scale(3.0,1.0) +
          Forward.changeBeats(1).scale(1.0,1.0),

          HingeLeft +
          QuarterLeft +
          Stand.changeBeats(3) +
          ExtendLeft +
          Forward.changeBeats(2).scale(3.5,1.0) +
          FlipRight.changeBeats(3).skew(1.5,0.0),

          HingeLeft +
          SwingRight +
          QuarterRight +
          ExtendLeft.scale(1.0,1.0) +
          Forward.changeBeats(2).scale(3.5,1.0) +
          UmTurnLeft.skew(-0.5,0.0),

          ExtendLeft.changeBeats(1.5).scale(2.0,1.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,1.0) +
          HingeLeft.changeBeats(3).changehands(0).scale(2.5,3.0) +
          QuarterLeft.changeBeats(.5) +
          ExtendLeft.scale(1.0,1.0) +
          Forward.changeBeats(2.3).scale(3.5,1.0) +
          Forward.changeBeats(1).scale(1.0,1.0)
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]),
      from:'3 and 1 Lines #3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          HingeRight.changeBeats(3).scale(4.0,3.0) +
          QuarterRight.changeBeats(.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,1.0) +
          Forward.changeBeats(1.8).scale(3.0,1.0) +
          Forward.changeBeats(1).scale(1.0,1.0),

          HingeRight +
          SwingLeft +
          QuarterLeft +
          ExtendLeft.scale(1.0,1.0) +
          Forward.changeBeats(2).scale(3.5,1.0) +
          UmTurnLeft.skew(-0.5,0.0),

          HingeRight +
          QuarterRight +
          Stand.changeBeats(3) +
          ExtendLeft.scale(1.0,1.0) +
          Forward.changeBeats(2).scale(3.5,1.0) +
          FlipRight.changeBeats(3).skew(1.5,0.0),

          ExtendLeft.changeBeats(1.5).scale(2.0,1.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,1.0) +
          HingeLeft.changeBeats(3).changehands(0).scale(2.5,3.0) +
          QuarterLeft.changeBeats(.5) +
          ExtendLeft.scale(1.0,1.0) +
          Forward.changeBeats(2.3).scale(3.5,1.0) +
          Forward.changeBeats(1).scale(1.0,1.0)
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',
      paths:[
          Forward_4 +
          RunRight.changeBeats(4).scale(2.0,2.0) +
          Forward_2,

          QuarterLeft.skew(-1.0,1.0) +
          SwingLeft +
          QuarterLeft.skew(-0.5,1.0) +
          Forward_3 +
          FlipLeft.scale(1.0,0.25),

          HingeRight +
          QuarterRight +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward_2 +
          FlipRight.changeBeats(3).skew(2.0,0.5),

          RunRight.changeBeats(4).scale(2.0,3.0) +
          Forward_2
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',
      paths:[
          RunLeft.changeBeats(5).scale(2.0,3.0) +
          Forward_2,

          HingeRight +
          SwingLeft +
          QuarterLeft +
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          FlipLeft.scale(1.0,0.25).skew(-0.5,0.0),

          HingeRight +
          QuarterRight +
          Stand.changeBeats(3) +
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          FlipRight.changeBeats(3).skew(1.5,0.5),

          RunRight.changeBeats(5).scale(3.0,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',
      paths:[
          RunLeft.changeBeats(5).scale(2.0,3.0) +
          Forward_2,

          HingeLeft +
          QuarterLeft +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          Forward +
          FlipRight.changeBeats(3).skew(1.5,0.5),

          HingeLeft +
          SwingRight +
          LeadRight.scale(0.5,1.0) +
          Forward_2 +
          FlipLeft.scale(1.0,0.25).skew(-0.5,0.0),

          RunRight.changeBeats(5).scale(3.0,3.0) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          Forward_2,

          QuarterLeft.skew(-1.0,1.0) +
          SwingLeft +
          QuarterLeft.skew(-0.5,1.0) +
          Forward_3 +
          FlipLeft.scale(1.0,0.25),

          HingeRight +
          QuarterRight +
          Stand.changeBeats(2) +
          ExtendLeft.scale(1.0,0.5) +
          Forward_3 +
          FlipRight.changeBeats(3).skew(2.0,0.5),

          Forward_4 +
          RunLeft.changeBeats(4) +
          Forward_2
      ]),

    AnimatedCall('Sets in Motion',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ]),
      from:'T-Bones',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(4).scale(3.0,2.5),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(4).scale(5.0,3.5),

          LeadRight.scale(0.5,1.0) +
          QuarterRight +
          Stand.changeBeats(3) +
          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipRight.changeBeats(3).skew(1.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          QuarterLeft +
          ExtendLeft.scale(1.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.25)
      ]),
  ];

