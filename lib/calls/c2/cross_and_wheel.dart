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

  final List<AnimatedCall> CrossAndWheel = [

    AnimatedCall('Cross and Wheel',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',parts:'3',
      paths:[
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,3.0) +
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,0.5),

          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(0.5,1.0) +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,1.5),

          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(-1.5,1.0) +
          Forward +
          RunRight.changehands(Hands.RIGHT).skew(1.0,-0.5),

          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(-0.5,3.0) +
          Forward +
          BackRunLeft.changehands(Hands.LEFT).skew(1.0,-1.5)
      ]),

    AnimatedCall('Cross and Wheel',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
  ]),
      from:'Right-Hand Two-Faced Lines',parts:'3',
      paths:[
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,3.0) +
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,0.5),

          LeadRight.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,1.5),

          LeadRight.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          Forward +
          BackRunLeft.changehands(Hands.LEFT).skew(1.0,-1.5),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,3.0) +
          Forward +
          RunRight.changehands(Hands.RIGHT).skew(1.0,-0.5)
      ]),

    AnimatedCall('Cross and Wheel',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'3',
      paths:[
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.5,3.0) +
          Forward +
          RunLeft.changehands(Hands.LEFT).skew(1.0,0.5),

          LeadLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          Forward +
          BackRunRight.changehands(Hands.RIGHT).skew(1.0,1.5),

          LeadLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,1.5),

          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.5,3.0) +
          ExtendLeft.changeBeats(3).changehands(Hands.LEFT).scale(2.0,0.5)
      ]),

    AnimatedCall('Cross Trade and Wheel',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'3;3',
      paths:[
          HingeRight.changeBeats(3).scale(1.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,0.5),

          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          Stand.changeBeats(3) +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,1.5),

          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          Stand.changeBeats(3) +
          Forward +
          BackRunLeft.changehands(Hands.LEFT).skew(1.0,-1.5),

          HingeRight.changeBeats(3).scale(1.5,3.0) +
          Stand.changeBeats(3) +
          Forward +
          RunRight.changehands(Hands.RIGHT).skew(1.0,-0.5)
      ]),

    AnimatedCall('Cross Trade and Wheel',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'3;3',
      paths:[
          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          Stand.changeBeats(3) +
          Forward +
          RunLeft.changehands(Hands.LEFT).skew(1.0,0.5),

          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          Stand.changeBeats(3) +
          Forward +
          BackRunRight.changehands(Hands.RIGHT).skew(1.0,1.5),

          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(0.5,1.0) +
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,1.5),

          HingeLeft.changeBeats(3).scale(1.5,3.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).changehands(Hands.LEFT).scale(2.0,0.5)
      ]),

    AnimatedCall('Cross Trade and Wheel',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3;3',
      paths:[
          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(-0.5,3.0) +
          Stand.changeBeats(3) +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,1.5),

          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(-1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,0.5),

          LeadRight.changeBeats(3).changehands(Hands.LEFT).scale(0.5,1.0) +
          Stand.changeBeats(3) +
          Forward +
          BackRunLeft.changehands(Hands.LEFT).skew(1.0,-1.5),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,3.0) +
          Stand.changeBeats(3) +
          Forward +
          RunRight.changehands(Hands.RIGHT).skew(1.0,-0.5)
      ]),

    AnimatedCall('Grand Cross Trade and Wheel',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'3;3',
      paths:[
          HingeRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(1.5,3.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,0.5),

          HingeRight.changeBeats(3).changehands(Hands.GRIPBOTH).scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          BackRunLeft.changehands(Hands.GRIPLEFT).skew(2.0,-1.5),

          HingeRight.changeBeats(3).changehands(Hands.GRIPBOTH).scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,1.5),

          HingeRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(1.5,3.0) +
          Stand.changeBeats(3) +
          RunRight.changehands(Hands.GRIPRIGHT).skew(2.0,-0.5)
      ]),

    AnimatedCall('Single Cross and Wheel',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',parts:'1.5',
      paths:[
          HingeRight +
          Forward_2.changeBeats(3),

          HingeRight +
          RunRight.changeBeats(3).skew(2.0,0.0)
      ]),

    AnimatedCall('Single Cross and Wheel',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'1.5',
      paths:[
          HingeLeft +
          RunLeft.changeBeats(3).skew(2.0,0.0),

          HingeLeft +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Single Cross and Wheel',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',parts:'1.5',
      paths:[
          HingeRight.skew(-0.5,0.0) +
          Forward_2.changeBeats(3).scale(0.75,1.0),

          QuarterLeft.skew(-0.5,1.0) +
          RunRight.changeBeats(3).scale(1.0,0.5).skew(1.5,0.0)
      ]),

    AnimatedCall('Single Cross and Wheel',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'1.5',
      paths:[
          QuarterLeft.skew(-1.0,1.0) +
          Forward_2.changeBeats(3),

          HingeRight +
          RunRight.changeBeats(3).skew(2.0,0.0)
      ]),

    AnimatedCall('Single Cross Trade and Wheel',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',parts:'1.5;3',
      paths:[
          HingeRight +
          SwingLeft +
          Forward_2,

          HingeRight +
          Stand.changeBeats(3) +
          RunRight.changeBeats(5).skew(2.0,0.0)
      ]),

    AnimatedCall('Single Cross Trade and Wheel',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',parts:'1.5;3',
      paths:[
          HingeLeft +
          Stand.changeBeats(3) +
          RunLeft.changeBeats(5).skew(2.0,0.0),

          HingeLeft +
          SwingRight +
          Forward_2
      ]),

    AnimatedCall('Single Cross Trade and Wheel',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',parts:'1.5;3',
      paths:[
          LeadRight +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,0.5),

          QuarterLeft.skew(0.0,1.0) +
          Stand.changeBeats(3) +
          FlipRight.scale(1.0,0.25).skew(1.5,0.0)
      ]),

    AnimatedCall('Single Cross Trade and Wheel',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',parts:'1.5;3',
      paths:[
          QuarterLeft.skew(-1.0,1.0) +
          SwingLeft +
          Forward_2,

          LeadRight +
          Stand.changeBeats(3) +
          RunRight.changeBeats(5).skew(2.0,0.0)
      ]),

    AnimatedCall('Single Cross Trade and Wheel',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'1.5;3',
      paths:[
          HingeRight +
          SwingLeft +
          Forward,

          HingeRight +
          Stand.changeBeats(3) +
          RunRight.changeBeats(5).skew(1.0,0.0),

          HingeRight +
          SwingLeft +
          Forward,

          HingeRight +
          Stand.changeBeats(3) +
          RunRight.changeBeats(5).skew(1.0,0.0)
      ]),

    AnimatedCall('Single Cross Trade and Wheel',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'1.5;3',
      paths:[
          HingeLeft +
          Stand.changeBeats(3) +
          RunLeft.changeBeats(5).skew(1.0,0.0),

          HingeLeft +
          SwingRight +
          Forward,

          HingeLeft +
          Stand.changeBeats(3) +
          RunLeft.changeBeats(5).skew(1.0,0.0),

          HingeLeft +
          SwingRight +
          Forward
      ]),

    AnimatedCall('Single Cross Trade and Wheel',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'1.5;3',
      paths:[
          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          RunRight.changeBeats(5).scale(1.0,0.25).skew(2.0,0.0),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          RunRight.changeBeats(5).scale(1.0,0.25).skew(2.0,0.0),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Single Cross Trade and Wheel',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'1.5;3',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          RunLeft.changeBeats(5).scale(1.0,0.25).skew(2.0,0.0),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          RunLeft.changeBeats(5).scale(1.0,0.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'1.5',
      paths:[
          HingeRight.scale(0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'1.5',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          UmTurnLeft.changeBeats(2).skew(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Trade By'),
      from:'Trade By',
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          UmTurnLeft.changeBeats(2).skew(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns, Left-Hand Centers',
      paths:[
          HingeRight.scale(0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Mixed Columns RH Ends In'),
      from:'Mixed Columns #1',
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Mixed Columns LH Ends In'),
      from:'Mixed Columns #2',
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Mixed Columns RH Ends Out'),
      from:'Mixed Columns #3',
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Mixed Columns LH Ends Out'),
      from:'Mixed Columns #4',
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Mixed Columns RH Centers In'),
      from:'Mixed Columns #5',
      paths:[
          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Mixed Columns LH Centers In'),
      from:'Mixed Columns #6',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          UmTurnLeft.changeBeats(2).skew(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Mixed Columns RH Centers Out'),
      from:'Mixed Columns #7',
      paths:[
          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          UmTurnRight.changeBeats(2).skew(2.0,-0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross and Wheel',
      formation:Formation('Mixed Columns LH Centers Out'),
      from:'Mixed Columns #8',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          UmTurnLeft.changeBeats(2).skew(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',parts:'1.5;3',
      paths:[
          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'1.5;3',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipLeft.changeBeats(2).skew(2.0,-1.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'1.5;3',
      paths:[
          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'1.5;3',
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',parts:'1.5;3',
      paths:[
          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',parts:'1.5;3',
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,2.5),

          HingeRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,3.5),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipLeft.changeBeats(2).skew(2.0,-1.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns, Left-Hand Centers',parts:'1.5;3',
      paths:[
          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,3.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          HingeRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,2.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Mixed Columns RH Ends In'),
      from:'Mixed Columns #1',parts:'1.5;3',noDisplay: true,
      paths:[
          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Mixed Columns LH Ends In'),
      from:'Mixed Columns #2',parts:'1.5;3',noDisplay: true,
      paths:[
          LeadRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,2.5),

          QuarterLeft.skew(-0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,3.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Mixed Columns RH Ends Out'),
      from:'Mixed Columns #3',parts:'1.5;3',noDisplay: true,
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Mixed Columns LH Ends Out'),
      from:'Mixed Columns #4',parts:'1.5;3',noDisplay: true,
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          FlipLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,2.5),

          LeadRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,3.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Mixed Columns RH Centers In'),
      from:'Mixed Columns #5',parts:'1.5;3',noDisplay: true,
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Mixed Columns LH Centers In'),
      from:'Mixed Columns #6',parts:'1.5;3',noDisplay: true,
      paths:[
          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipLeft.changeBeats(2).skew(2.0,-1.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,2.5),

          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,3.5),

          QuarterLeft.skew(-0.5,1.0) +
          FlipLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Mixed Columns RH Centers Out'),
      from:'Mixed Columns #7',parts:'1.5;3',noDisplay: true,
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipRight.changeBeats(2).skew(2.0,1.5),

          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Grand Single Cross Trade and Wheel',
      formation:Formation('Mixed Columns LH Centers Out'),
      from:'Mixed Columns #8',parts:'1.5;3',noDisplay: true,
      paths:[
          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          FlipLeft.changeBeats(2).skew(2.0,-1.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,2.5),

          QuarterLeft.skew(-0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,3.5),

          LeadRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5)
      ]),
  ];

