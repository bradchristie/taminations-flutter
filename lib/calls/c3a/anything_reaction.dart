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

  final List<AnimatedCall> AnythingReaction = [

    AnimatedCall('Flip Reaction',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Right-Hand Waves',parts:'9',
      paths:[
          LeadRight +
          Forward_4.changeBeats(3) +
          UmTurnRight.changeBeats(4.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          HingeRight.changeBeats(2) +
          CastLeft,

          LeadRight +
          RunRight +
          Forward_2 +
          SwingRight.changeBeats(2.5) +
          LeadRight.changeBeats(3.5).scale(5.0,3.0) +
          SwingRight.changeBeats(2) +
          CastLeft,

          LeadRight +
          RunRight +
          Forward_2 +
          SwingRight.changeBeats(2.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          HingeLeft.skew(0.5,-0.5) +
          SwingRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadRight +
          Forward_4.changeBeats(3) +
          RunRight.changeBeats(4.5).skew(1.0,0.0) +
          Forward.changeBeats(2) +
          HingeLeft +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Flip Reaction',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',parts:'9',
      paths:[
          LeadLeft +
          Forward_4.changeBeats(3) +
          RunLeft.changeBeats(4.5).skew(1.0,0.0) +
          Stand.changeBeats(3) +
          HingeRight.skew(1.0,0.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          LeadLeft +
          RunLeft +
          Forward_2 +
          SwingLeft.changeBeats(2.5) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          SwingLeft.changeBeats(2) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadLeft +
          RunLeft +
          Forward_2 +
          SwingLeft.changeBeats(2.5) +
          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          SwingLeft.changeBeats(2) +
          CastRight,

          LeadLeft +
          Forward_4.changeBeats(3) +
          UmTurnLeft.changeBeats(4.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeLeft.changeBeats(2) +
          CastRight
      ]),

    AnimatedCall('Flip Cross Reaction',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'9',
      paths:[
          LeadRight +
          Forward_4.changeBeats(3) +
          UmTurnRight.changeBeats(4.5).skew(1.0,0.0) +
          Stand.changeBeats(3) +
          HingeRight.changeBeats(2).scale(2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          LeadRight +
          RunRight +
          Forward_2 +
          SwingRight.changeBeats(2.5) +
          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          CastLeft,

          LeadRight +
          RunRight +
          Forward_2 +
          SwingRight.changeBeats(2.5) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadRight +
          Forward_4.changeBeats(3) +
          RunRight.changeBeats(4.5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          CastLeft
      ]),

    AnimatedCall('Flip Cross Reaction',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'9',
      paths:[
          LeadLeft +
          Forward_4.changeBeats(3) +
          RunLeft.changeBeats(4.5).skew(1.0,0.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Stand.changeBeats(2) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          CastRight,

          LeadLeft +
          RunLeft +
          Forward_2 +
          SwingLeft.changeBeats(2.5) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(0.0,1.0) +
          FlipRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadLeft +
          RunLeft +
          Forward_2 +
          SwingLeft.changeBeats(2.5) +
          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          RunLeft +
          CastRight,

          LeadLeft +
          Forward_4.changeBeats(3) +
          UmTurnLeft.changeBeats(4.5).skew(1.0,0.0) +
          Stand.changeBeats(3) +
          HingeLeft.changeBeats(2).scale(2.0,1.0) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Tag Reaction',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',group:' ',parts:'6',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward +
          SwingRight +
          LeadRight.changeBeats(3.5).scale(5.0,3.0) +
          SwingRight.changeBeats(2) +
          CastLeft,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          UmTurnRight.changeBeats(4).skew(2.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          HingeRight.changeBeats(2) +
          CastLeft,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.changeBeats(4).skew(2.0,0.0) +
          Forward.changeBeats(2) +
          HingeLeft +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward +
          SwingRight +
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          HingeLeft.skew(0.5,-0.5) +
          SwingRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Left Tag Reaction',
      formation:Formation('Two-Faced Lines LH'),
      group:' ',parts:'6',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          Forward +
          SwingLeft +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          SwingLeft.changeBeats(2) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.changeBeats(4).skew(2.0,0.0) +
          Stand.changeBeats(3) +
          HingeRight.skew(1.0,0.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          UmTurnLeft.changeBeats(4).skew(2.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeLeft.changeBeats(2) +
          CastRight,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          Forward +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          SwingLeft.changeBeats(2) +
          CastRight
      ]),

    AnimatedCall('Tag Cross Reaction',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',group:' ',parts:'6',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward +
          SwingRight +
          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          CastLeft,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          UmTurnRight.changeBeats(4).skew(2.0,0.0) +
          Stand.changeBeats(3) +
          HingeRight.changeBeats(2).scale(2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.changeBeats(4).skew(2.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          CastLeft,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward +
          SwingRight +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Left Tag Cross Reaction',
      formation:Formation('Two-Faced Lines LH'),
      group:' ',parts:'6',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          Forward +
          SwingLeft +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(0.0,1.0) +
          FlipRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.changeBeats(4).skew(2.0,0.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Stand.changeBeats(2) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          CastRight,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          UmTurnLeft.changeBeats(4).skew(2.0,0.0) +
          Stand.changeBeats(3) +
          HingeLeft.changeBeats(2).scale(2.0,1.0) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          Forward +
          SwingLeft +
          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          RunLeft +
          CastRight
      ]),

    AnimatedCall('Scoot Reaction',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'5',
      paths:[
          Forward_2 +
          SwingRight +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.0,1.0) +
          SwingRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          UmTurnRight.changeBeats(5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeRight.changeBeats(2) +
          CastLeft,

          Forward_2 +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          SwingRight.changeBeats(2) +
          CastLeft,

          RunRight.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(3) +
          HingeLeft.skew(1.0,0.0) +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Scoot Reaction',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'5',
      paths:[
          RunLeft.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(3) +
          HingeRight.skew(1.0,0.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          Forward_2 +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          SwingLeft.changeBeats(2) +
          CastRight,

          UmTurnLeft.changeBeats(5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeLeft.changeBeats(2) +
          CastRight,

          Forward_2 +
          SwingLeft +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          SwingLeft.changeBeats(2) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Scoot Cross Reaction',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'5',
      paths:[
          Forward_2 +
          SwingRight +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          UmTurnRight.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(3) +
          HingeRight.changeBeats(2).scale(2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          Forward_2 +
          SwingRight +
          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          CastLeft,

          RunRight.changeBeats(5).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          CastLeft
      ]),

    AnimatedCall('Scoot Cross Reaction',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'5',
      paths:[
          RunLeft.changeBeats(5).skew(1.0,0.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Stand.changeBeats(2) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          CastRight,

          Forward_2 +
          SwingLeft +
          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          RunLeft +
          CastRight,

          UmTurnLeft.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(3) +
          HingeLeft.changeBeats(2).scale(2.0,1.0) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          Forward_2 +
          SwingLeft +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(0.0,1.0) +
          FlipRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Scoot Chain Thru Reaction',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'11',
      paths:[
          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          SwingRight.changeBeats(2) +
          CastLeft,

          UmTurnRight.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(6) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeRight.changeBeats(2) +
          CastLeft,

          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.0,1.0) +
          SwingRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          RunRight.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(6) +
          Stand.changeBeats(3) +
          HingeLeft.skew(1.0,0.0) +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Scoot Chain Thru Reaction',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'11',
      paths:[
          RunLeft.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(6) +
          Stand.changeBeats(3) +
          HingeRight.skew(1.0,0.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          Forward_2 +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          SwingLeft.changeBeats(2) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          UmTurnRight.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(6) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeLeft.changeBeats(2) +
          CastRight,

          Forward_2 +
          SwingLeft +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          SwingLeft.changeBeats(2) +
          CastRight
      ]),

    AnimatedCall('Scoot Chain Thru Cross Reaction',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'11',
      paths:[
          Forward_2 +
          SwingRight +
          SwingLeft +
          SwingRight +
          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          CastLeft,

          UmTurnRight.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(6) +
          Stand.changeBeats(3) +
          HingeRight.changeBeats(2).scale(2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          Forward_2 +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          RunRight.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(6) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          CastLeft
      ]),

    AnimatedCall('Scoot Chain Thru Cross Reaction',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'11',
      paths:[
          RunLeft.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(6) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Stand.changeBeats(2) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          CastRight,

          Forward_2 +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(0.0,1.0) +
          FlipRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          UmTurnRight.changeBeats(5).skew(1.0,0.0) +
          Stand.changeBeats(6) +
          Stand.changeBeats(3) +
          HingeLeft.changeBeats(2).scale(2.0,1.0) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          Forward_2 +
          SwingLeft +
          SwingRight +
          SwingLeft +
          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          RunLeft +
          CastRight
      ]),

    AnimatedCall('Open Up Reaction',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'7.5',
      paths:[
          RunRight.changeBeats(5).scale(2.0,2.5) +
          LeadRight.changeBeats(2.5).scale(2.0,1.0) +
          Stand.changeBeats(3) +
          HingeLeft.skew(1.0,0.0) +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          Forward_2 +
          RunLeft.changeBeats(3.5).scale(1.0,1.5) +
          LeadLeft.changeBeats(2).scale(2.0,1.0) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeRight.changeBeats(2) +
          CastLeft,

          Forward_3 +
          CastRight +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.0,1.0) +
          SwingRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward.changeBeats(3) +
          CastRight +
          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          SwingRight.changeBeats(2) +
          CastLeft
      ]),

    AnimatedCall('Open Up Reaction',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'7.5',
      paths:[
          Forward.changeBeats(3) +
          CastLeft +
          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          SwingLeft.changeBeats(2) +
          CastRight,

          Forward_3 +
          CastLeft +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          SwingLeft.changeBeats(2) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward_2 +
          RunRight.changeBeats(3.5).scale(1.0,1.5) +
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeLeft.changeBeats(2) +
          CastRight,

          RunLeft.changeBeats(5).scale(2.0,2.5) +
          LeadLeft.changeBeats(2.5).scale(2.0,1.0) +
          Stand.changeBeats(3) +
          HingeRight.skew(1.0,0.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Transfer the Column Reaction',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',parts:'6.5',
      paths:[
          RunRight.scale(1.0,2.5) +
          Forward_2 +
          LeadRight.changeBeats(1.5).scale(2.0,1.0) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeRight.changeBeats(2) +
          CastLeft,

          Forward_2 +
          RunRight.scale(1.0,2.5) +
          LeadRight.changeBeats(1.5).scale(2.0,1.0) +
          Stand.changeBeats(3) +
          HingeLeft.skew(1.0,0.0) +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          Forward_2 +
          SwingRight.scale(0.5,1.0).skew(1.0,0.0) +
          HingeRight +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.0,1.0) +
          SwingRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_2 +
          SwingRight.scale(0.5,1.0).skew(-1.0,0.0) +
          HingeRight +
          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          SwingRight.changeBeats(2) +
          CastLeft
      ]),

    AnimatedCall('Transfer the Column Reaction',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',parts:'6.5',
      paths:[
          Forward_2 +
          SwingLeft.scale(0.5,1.0).skew(-1.0,0.0) +
          HingeLeft +
          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          SwingLeft.changeBeats(2) +
          CastRight,

          Forward_2 +
          SwingLeft.scale(0.5,1.0).skew(1.0,0.0) +
          HingeLeft +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          SwingLeft.changeBeats(2) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward_2 +
          RunLeft.scale(1.0,2.5) +
          LeadLeft.changeBeats(1.5).scale(2.0,1.0) +
          Stand.changeBeats(3) +
          HingeRight.skew(1.0,0.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          RunLeft.scale(1.0,2.5) +
          Forward_2 +
          LeadLeft.changeBeats(1.5).scale(2.0,1.0) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeLeft.changeBeats(2) +
          CastRight
      ]),
  ];

