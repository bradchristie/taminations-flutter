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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> WithConfidence = [

    AnimatedCall('With Confidence',
      formation:Formations.OceanWavesRHGBGB,
      from:'Right-Hand Waves',fractions:'3',
      paths:[
          Forward_2.changeBeats(3) +
          Forward_2.changehands(2),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(1.5) +
          UmTurnRight.skew(-1.0,0.0) +
          QuarterRight.changeBeats(3).changehands(1).skew(0.0,-0.5),

          HingeLeft +
          HingeRight +
          Forward_2.changehands(1),

          LeadRight.changeBeats(3).scale(2.0,3.0) +
          Forward.changeBeats(3) +
          LeadRight.changeBeats(3).changehands(2).scale(2.0,2.0)
      ]),

    AnimatedCall('With Confidence',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_2.changeBeats(3) +
          Forward.changeBeats(3) +
          HingeRight.changeBeats(2).scale(2.0,1.0),

          HingeRight +
          HingeLeft +
          UmTurnRight.skew(-1.0,0.0) +
          QuarterRight.changeBeats(2).changehands(1).skew(0.0,1.0),

          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(1.5) +
          ExtendRight.changeBeats(3).changehands(1).scale(2.0,1.5),

          LeadRight.changeBeats(3).scale(2.0,3.0) +
          ExtendRight.changeBeats(3).changehands(2).scale(2.0,1.0)
      ]),

    AnimatedCall('With Confidence',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,3.0) +
          Forward.changeBeats(3) +
          LeadLeft.changeBeats(3).changehands(1).scale(2.0,2.0),

          HingeRight +
          HingeLeft +
          Forward_2.changehands(2),

          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(1.5) +
          UmTurnLeft.skew(-1.0,0.0) +
          QuarterLeft.changeBeats(3).changehands(2).skew(0.0,0.5),

          Forward_2.changeBeats(3) +
          Forward_2.changehands(1)
      ]),

    AnimatedCall('With Confidence',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft.changeBeats(3).scale(2.0,3.0) +
          ExtendLeft.changeBeats(3).changehands(1).scale(2.0,1.0),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(1.5) +
          ExtendLeft.changeBeats(3).changehands(2).scale(2.0,1.5),

          HingeLeft +
          HingeRight +
          UmTurnLeft.skew(-1.0,0.0) +
          QuarterLeft.changeBeats(2).changehands(2).skew(0.0,-1.0),

          Forward_2.changeBeats(3) +
          Forward.changeBeats(3) +
          HingeLeft.changeBeats(2).scale(2.0,1.0)
      ]),
  ];

