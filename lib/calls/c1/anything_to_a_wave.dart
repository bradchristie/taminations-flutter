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

  final List<AnimatedCall> AnythingToAWave = [

    AnimatedCall('Flip Back to a Wave',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',fractions:'5.5',
      taminator: '''Note that the outside dancers adjust so they do not finish offset.
    ''',
      paths:[
          HingeRight +
          Forward_4 +
          RunRight.changeBeats(6).scale(1.0,0.5).skew(1.0,0.0),

          HingeRight +
          RunRight.changeBeats(4) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.875)
      ]),

    AnimatedCall('Flip Back to a Wave',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',fractions:'5.5',
      paths:[
          HingeLeft +
          Forward_4 +
          RunLeft.changeBeats(6).scale(1.0,0.5).skew(1.0,0.0),

          HingeLeft +
          RunLeft.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.875)
      ]),

    AnimatedCall('Flip Back to a Wave',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Right-Hand Waves',fractions:'5.5',
      paths:[
          HingeRight +
          Forward_4 +
          UmTurnRight.changeBeats(6).skew(1.0,0.0),

          HingeRight +
          RunRight.changeBeats(4) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.875),

          HingeRight +
          RunRight.changeBeats(4) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.875),

          HingeRight +
          Forward_4 +
          RunRight.changeBeats(6).skew(1.0,0.0)
      ]),

    AnimatedCall('Flip Back to a Wave',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',fractions:'5.5',
      paths:[
          HingeLeft +
          Forward_4 +
          RunLeft.changeBeats(6).skew(1.0,0.0),

          HingeLeft +
          RunLeft.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.875),

          HingeLeft +
          RunLeft.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.875),

          HingeLeft +
          Forward_4 +
          UmTurnLeft.changeBeats(6).skew(1.0,0.0)
      ]),

    AnimatedCall('Flip Back to a Wave',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'4.5',
      paths:[
          LeadRight.scale(1.0,0.5) +
          Forward_2.changeBeats(3) +
          RunRight.changeBeats(6).scale(0.5,0.5),

          LeadRight.scale(1.0,0.5) +
          RunRight.skew(1.0,0.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.75),

          LeadRight.scale(1.0,0.5) +
          RunRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.75),

          LeadRight.scale(1.0,0.5) +
          Forward_3.changeBeats(3) +
          RunRight.changeBeats(6).scale(1.0,0.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Flip Back to a Wave',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'4.5',
      paths:[
          LeadLeft.scale(1.0,0.5) +
          Forward_2.changeBeats(3) +
          RunLeft.changeBeats(6).scale(0.5,0.5),

          LeadLeft.scale(1.0,0.5) +
          RunLeft.skew(1.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.75),

          LeadLeft.scale(1.0,0.5) +
          RunLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.75),

          LeadLeft.scale(1.0,0.5) +
          Forward_3.changeBeats(3) +
          RunLeft.changeBeats(6).scale(1.0,0.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Square Chain Thru to a Wave',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:1.5,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1.5,angle:270),
  ]),
      from:'Facing Couples',
      paths:[
          PullLeft.scale(1.5,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft,

          PullLeft.scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('Square Chain Thru to a Wave',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          PullLeft.scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft,

          PullLeft.scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft,

          PullLeft.scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft,

          PullLeft.scale(2.0,0.5) +
          LeadLeft.changeBeats(2).scale(3.0,0.5) +
          SwingLeft +
          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('Square Chain Thru to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',parts:'3;3;3',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(0.5,1.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          Stand.changeBeats(3) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5)
      ]),

    AnimatedCall('Scoot Chain Thru to a Wave',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',fractions:'2;3;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          SwingRight,

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight,

          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight,

          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight
      ]),

    AnimatedCall('Scoot Chain Thru to a Wave',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',fractions:'2;3;3',
      paths:[
          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          SwingLeft,

          Forward_2 +
          SwingLeft +
          SwingRight +
          SwingLeft,

          Forward_2 +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft
      ]),

    AnimatedCall('Scoot Chain Thru to a Wave',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',parts:'2;3;3',
      paths:[
          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight,

          Stand.changeBeats(2) +
          UmTurnRight.skew(1.0,0.0),

          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight,

          Stand.changeBeats(2) +
          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Scoot Chain Thru to a Wave',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',parts:'2;3;3',
      paths:[
          Stand.changeBeats(2) +
          RunLeft.skew(1.0,0.0),

          Forward_2 +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft,

          Stand.changeBeats(2) +
          UmTurnLeft.skew(1.0,0.0),

          Forward_2 +
          SwingLeft +
          SwingRight +
          SwingLeft
      ]),

    AnimatedCall('Square Thru 3 to a Wave',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',group:' ',fractions:'2;1.5',
      paths:[
          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.changeBeats(2).skew(2.0,0.5),

          Forward.scale(0.5,1.0) +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5)
      ]),

    AnimatedCall('Load the Boat to a Wave',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',group:' ',fractions:'2;2;3',
      paths:[
          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(2.5,3.5) +
          LeadRight.changeBeats(2.5).scale(3.5,3.5) +
          LeadRight.changeBeats(2.5),

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2) +
          FlipLeft +
          Forward.changeBeats(2),

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight.changeBeats(2) +
          RunRight +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,3.5) +
          LeadLeft.changeBeats(2.5).scale(2.5,2.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Percolate, Outsides to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',group:' ',fractions:'2;1;1.5',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          HingeRight.scale(1.0,0.75) +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.75,2.0) +
          Forward,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          HingeRight.scale(1.0,1.25) +
          Stand.changeBeats(4).changehands(0),

          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.75),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(0.5,0.5) +
          SwingRight.scale(0.5,0.75)
      ]),

    AnimatedCall('Tag Back to a Wave',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',fractions:'3',
      paths:[
          LeadRight.changeBeats(3) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.875),

          LeadRight +
          Forward_2.changeBeats(1.5) +
          UmTurnRight.changeBeats(6).skew(1.0,0.0),

          QuarterLeft.skew(-1.0,1.0) +
          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(6).skew(1.0,0.0),

          QuarterLeft.changeBeats(3).skew(-1.0,1.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.875)
      ]),

    AnimatedCall('Turn Thru to a Wave',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',group:' ',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.25),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,1.25),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.25),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,1.25)
      ]),
  ];

