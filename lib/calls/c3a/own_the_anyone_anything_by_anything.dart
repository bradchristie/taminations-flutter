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

  final List<AnimatedCall> OwnTheAnyoneAnythingByAnything = [

    AnimatedCall('Own the Boys: Ah So by Switch the Wave',
      formation:Formation('Tidal Wave RH BGBG'),
      from:'Right-Hand Tidal Wave',group:' ',isGenderSpecific:true,
      paths:[
          FoldRight.changeBeats(3).scale(0.65,0.5).skew(0.0,-1.5),

          SwingRight.scale(0.65,0.5),

          RunRight.changehands(0).skew(-1.25,1.5),

          RunRight.changeBeats(3).changehands(0).scale(1.0,0.75)
      ]),

    AnimatedCall('Own the Leaders: Step and Fold by 1/2 Crazy Lockit',
      formation:Formation('Ocean Waves RH GBGB'),
      from:'Right-Hand Waves',group:' ',
      paths:[
          HingeRight.changeBeats(2).skew(0.5,-2.0) +
          HingeLeft.scale(1.0,0.5),

          Forward.changeBeats(2).scale(1.0,1.0),

          HingeLeft.changeBeats(2).changehands(0).scale(0.5,1.0) +
          HingeRight.scale(3.0,1.5),

          FoldRight.changeBeats(2).changehands(0).scale(0.5,1.0)
      ]),

    AnimatedCall('Own the Ends: Regroup by Shakedown',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',group:' ',
      paths:[
          QuarterRight +
          RunRight.scale(2.0,2.5) +
          Forward.scale(2.0,1.0),

          FlipRight +
          QuarterRight.skew(1.0,0.0),

          UmTurnRight.skew(-1.5,-0.5) +
          LeadRight.scale(1.5,0.5),

          QuarterLeft +
          RunLeft.scale(1.0,2.5) +
          Forward.scale(2.0,1.0)
      ]),

    AnimatedCall('Own the Outsides: Swing and Mix by Linear Cycle',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',group:' ',
      paths:[
          SwingRight.scale(0.5,0.5) +
          RunLeft.scale(1.0,1.0),

          SwingRight.scale(0.65,0.5) +
          DodgeRight.changeBeats(.5).scale(1.0,0.25) +
          SwingRight.scale(1.0,0.75),

          HingeRight.scale(1.0,0.5) +
          FlipRight.scale(1.0,1.5) +
          Forward.skew(0.0,-1.0) +
          UmTurnRight.changeBeats(1).skew(1.0,0.0),

          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          FlipRight
      ]),

    AnimatedCall('Own the Girls: Explode the Line by Vertical 1/2 Tag',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines',group:' ',isGenderSpecific:true,
      paths:[
          UmTurnLeft +
          Forward.changeBeats(3).skew(2.0,0.0),

          LeadLeft.changeBeats(3).changehands(Hands.RIGHT).scale(0.5,2.0) +
          ExtendRight.changeBeats(3).scale(0.2,0.5),

          Forward.changeBeats(3).skew(2.0,0.0),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,2.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Own the Outsides: Linear Cycle by Pass the Ocean',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'Right-Hand Tidal Wave',group:' ',
      paths:[
          HingeRight.changeBeats(1.25).scale(2.0,1.0) +
          ExtendRight.changeBeats(4).scale(3.0,1.25) +
          RunRight.scale(0.5,0.88),

          HingeRight.scale(0.5,1.0) +
          RunRight.scale(1.0,1.0) +
          ExtendRight.changeBeats(2).scale(1.5,0.25) +
          UmTurnRight.changeBeats(1.8).scale(0.25,1.0).skew(1.5,-0.25),

          Forward.changeBeats(1.5).scale(1.0,1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          Forward.changeBeats(1.5).scale(1.0,0.25) +
          LeadLeft.changeBeats(2.5).changehands(Hands.LEFT)
      ]),
  ];

