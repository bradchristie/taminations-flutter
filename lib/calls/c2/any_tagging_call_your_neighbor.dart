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

  final List<AnimatedCall> AnyTaggingCallYourNeighbor = [

    AnimatedCall('Flip Your Neighbor',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'5.5',
      paths:[
          LeadRight +
          Forward_4 +
          LeadRight.changeBeats(2.5).scale(2.0,1.0) +
          RunRight.changeBeats(4).scale(1.0,0.5),

          LeadRight +
          RunRight.changeBeats(4).changehands(0) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.scale(1.0,0.75)
      ]),

    AnimatedCall('Flip Your Neighbor',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'5.5',
      paths:[
          LeadLeft +
          Forward_4 +
          LeadLeft.changeBeats(2.5).scale(2.0,1.0) +
          RunLeft.changeBeats(4).scale(1.0,0.5),

          LeadLeft +
          RunLeft.changeBeats(4).changehands(0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Flip Your Neighbor',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'5.5',
      paths:[
          LeadRight +
          Forward_4 +
          LeadRight.changeBeats(2.5).scale(2.0,1.0) +
          RunRight.changeBeats(4).scale(1.0,0.5),

          LeadRight +
          RunRight.changeBeats(4).changehands(0) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.scale(1.0,0.75),

          LeadRight +
          RunRight.changeBeats(4).changehands(0) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.scale(1.0,0.75),

          LeadRight +
          Forward_4 +
          LeadRight.changeBeats(2.5).scale(2.0,1.0) +
          RunRight.changeBeats(4).scale(1.0,0.5)
      ]),

    AnimatedCall('Flip Your Neighbor',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',parts:'5.5',
      paths:[
          LeadLeft +
          Forward_4 +
          LeadLeft.changeBeats(2.5).scale(2.0,1.0) +
          RunLeft.changeBeats(4).scale(1.0,0.5),

          LeadLeft +
          RunLeft.changeBeats(4).changehands(0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.scale(1.0,0.75),

          LeadLeft +
          RunLeft.changeBeats(4).changehands(0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.scale(1.0,0.75),

          LeadLeft +
          Forward_4 +
          LeadLeft.changeBeats(2.5).scale(2.0,1.0) +
          RunLeft.changeBeats(4).scale(1.0,0.5)
      ]),

    AnimatedCall('Flip Your Neighbor',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'5',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,0.5) +
          Forward.changeBeats(2) +
          LeadRight.changeBeats(2.5).scale(1.5,1.0) +
          UmTurnRight.changeBeats(4),

          LeadRight.scale(1.0,0.5) +
          RunRight.changeBeats(4).scale(0.5,1.0) +
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          LeadRight.scale(1.0,0.5) +
          RunRight.changeBeats(4).scale(0.5,1.0) +
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5),

          LeadRight.changeBeats(2).scale(1.0,0.5) +
          Forward.changeBeats(2) +
          LeadRight.changeBeats(2.5).scale(1.5,1.0) +
          UmTurnRight.changeBeats(4)
      ]),

    AnimatedCall('Flip Your Neighbor',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'5',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,0.5) +
          Forward.changeBeats(2) +
          LeadLeft.changeBeats(2.5).scale(1.5,1.0) +
          UmTurnLeft.changeBeats(4),

          LeadLeft.scale(1.0,0.5) +
          RunLeft.changeBeats(4).scale(0.5,1.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          LeadLeft.scale(1.0,0.5) +
          RunLeft.changeBeats(4).scale(0.5,1.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5) +
          Forward.changeBeats(2) +
          LeadLeft.changeBeats(2.5).scale(1.5,1.0) +
          UmTurnLeft.changeBeats(4)
      ]),

    AnimatedCall('Flip Your Cross Neighbor',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',group:' ',parts:'5.5',
      paths:[
          LeadRight +
          Forward_4 +
          LeadRight.changeBeats(2.5).scale(2.0,1.0) +
          RunRight.changeBeats(4).scale(1.0,0.5),

          LeadRight +
          RunRight.changeBeats(4).changehands(0) +
          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Flip Your Criss Cross Neighbor',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',group:' ',parts:'5.5',
      paths:[
          LeadRight +
          Forward_4 +
          LeadRight.changeBeats(2) +
          RunRight.changeBeats(6).scale(2.0,2.0),

          LeadRight +
          RunRight.changeBeats(4).changehands(0) +
          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,0.75)
      ]),

    AnimatedCall('Tag Your Neighbor',
      formation:Formation('Two-Faced Line RH'),
      group:' ',parts:'2',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          RunRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag Your Cross Neighbor',
      formation:Formation('Two-Faced Line RH'),
      group:' ',parts:'2',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          RunRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Tag Your Criss Cross Neighbor',
      formation:Formation('Two-Faced Line RH'),
      group:' ',parts:'2',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,1.0).skew(0.0,-0.25),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          RunRight.changeBeats(5).scale(2.0,2.5)
      ]),

    AnimatedCall('Vertical Tag Your Neighbor',
      formation:Formation('Couples Facing Out'),
      group:' ',fractions:'4.5',
      paths:[
          UmTurnLeft.skew(-1.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          RunRight.scale(1.0,0.5),

          FlipRight.skew(0.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          Forward.changeBeats(1.5).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25)
      ]),

    AnimatedCall('Vertical Tag Your Cross Neighbor',
      formation:Formation('Couples Facing Out'),
      group:' ',fractions:'4.5',
      paths:[
          UmTurnLeft.skew(-1.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          RunRight.scale(1.0,0.5),

          FlipRight.skew(0.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25)
      ]),

    AnimatedCall('Vertical Tag Your Criss Cross Neighbor',
      formation:Formation('Couples Facing Out'),
      group:' ',fractions:'4.5',
      paths:[
          UmTurnLeft.skew(-1.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          LeadRight +
          RunRight.changeBeats(6).scale(2.0,1.5),

          FlipRight.skew(0.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,1.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,0.75)
      ]),
  ];

