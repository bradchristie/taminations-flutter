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

  final List<AnimatedCall> TeacupChain = [

    AnimatedCall('Teacup Chain',
      formation:Formations.StaticSquare,
      from:'Static Square',fractions:'7;7;10',difficulty: 1,
      paths:[
          QuarterLeft.changeBeats(2).skew(-0.75,-1.0) +
          CastRight.scale(0.75,0.75) +
          FlipRight.changeBeats(4.5).scale(0.75,0.75) +
          SwingRight.scale(0.75,0.75) +
          UmTurnRight.changeBeats(7.5) +
          SwingLeft.scale(0.75,0.75) +
          UmTurnLeft.changeBeats(2.5).skew(0.0,0.75) +
          UmTurnLeft.changeBeats(2).skew(0.0,-0.75) +
          BeauWheel.scale(1.0,0.875),

          PullLeft.changeBeats(2).scale(3.0,1.75) +
          HingeRight.scale(0.75,0.75) +
          PullRight.changeBeats(2.5).scale(3.0,1.5) +
          SwingLeft.scale(0.75,0.75) +
          LeadRight.changeBeats(2).scale(3.75,2.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.875),

          DodgeRight.changeBeats(5).scale(0.875,0.875) +
          Stand +
          SwingLeft.scale(0.75,0.75) +
          UmTurnLeft.changeBeats(6) +
          CastRight.scale(0.75,0.75) +
          QuarterRight.changeBeats(3).skew(0.75,-0.75) +
          CastRight.scale(0.75,0.75) +
          QuarterLeft.changeBeats(3).skew(-0.75,-0.75) +
          BeauWheel.scale(1.0,0.875),

          ExtendRight.changeBeats(2).scale(3.0,1.25) +
          CastRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.875)
      ]),

    AnimatedCall('Teacup Chain',
      formation:Formations.NormalLines,
      from:'Normal Lines',fractions:'10;8.5;13',difficulty: 3,
      paths:[
          Stand.changeBeats(4) +
          CastRight.scale(0.75,0.75) +
          LeadRight.scale(0.75,0.75) +
          Stand.changeBeats(4) +
          CastRight.scale(0.75,0.75) +
          RunRight.changeBeats(7).scale(0.5,0.5).skew(0.75,0.25) +
          SwingLeft.scale(0.75,0.75) +
          DodgeLeft.changeBeats(6).scale(1.0,0.75) +
          QuarterLeft.changehands(2) +
          UmTurnLeft.changeBeats(3).changehands(2),

          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(4).scale(4.0,0.5) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.25,0.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(3).scale(2.75,1.75) +
          HingeLeft.scale(1.5,1.5) +
          RunLeft.changehands(1).scale(1.5,1.75),

          DodgeRight.changeBeats(7).scale(1.0,0.5) +
          SwingLeft.scale(0.75,0.75) +
          RunRight.changeBeats(8).scale(0.5,0.5) +
          CastRight.scale(0.75,0.75) +
          LeadRight.changeBeats(4.5).scale(0.75,0.75) +
          CastRight.scale(0.75,0.75) +
          QuarterLeft.changeBeats(6).skew(-0.75,-0.75) +
          UmTurnLeft.changeBeats(3).changehands(2),

          ExtendLeft.changeBeats(4).scale(4.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.25,0.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(3).scale(2.0,1.75) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(3).scale(2.75,1.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(4).scale(3.0,2.75) +
          SwingRight.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).scale(0.5,1.25) +
          RunLeft.changehands(1).scale(1.5,1.75)
      ]),

    AnimatedCall('All Ladies Center, Teacup Chain',
      formation:Formations.StaticSquare,
      from:'Static Square',fractions:'7;7;10',difficulty: 2,
      paths:[
          DodgeRight.changeBeats(5).scale(0.875,0.875) +
          Stand +
          SwingLeft.scale(0.75,0.75) +
          UmTurnRight.changeBeats(3) +
          SwingRight.scale(0.75,0.75) +
          FlipRight.changeBeats(3).scale(1.0,0.75) +
          Stand.changeBeats(5.5) +
          CastRight.scale(0.75,0.75) +
          QuarterLeft.changeBeats(2).skew(-0.75,-0.75) +
          BeauWheel.scale(1.0,0.875),

          PullLeft.changeBeats(2).scale(3.0,1.75) +
          HingeRight.scale(0.75,0.75) +
          PullRight.changeBeats(2.5).scale(3.0,1.5) +
          SwingLeft.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(3.75,2.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.875),

          DodgeRight.changeBeats(5).scale(0.875,0.875) +
          Stand +
          SwingLeft.scale(0.75,0.75) +
          UmTurnRight.changeBeats(3) +
          SwingRight.scale(0.75,0.75) +
          FlipRight.changeBeats(3).scale(1.0,0.75) +
          Stand.changeBeats(5.5) +
          CastRight.scale(0.75,0.75) +
          QuarterLeft.changeBeats(2).skew(-0.75,-0.75) +
          BeauWheel.scale(1.0,0.875),

          PullLeft.changeBeats(2).scale(3.0,1.75) +
          HingeRight.scale(0.75,0.75) +
          PullRight.changeBeats(2.5).scale(3.0,1.5) +
          SwingLeft.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(3.75,2.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.875)
      ]),

    AnimatedCall('All Ladies Right, Teacup Chain',
      formation:Formations.StaticSquare,
      from:'Static Square',fractions:'7;7;10',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(2).skew(-0.75,-1.0) +
          CastRight.scale(0.75,0.75) +
          FlipRight.changeBeats(4.5).scale(0.75,0.75) +
          Stand.changeBeats(4) +
          SwingRight.scale(0.75,0.75) +
          UmTurnRight.changeBeats(4.5) +
          SwingLeft.scale(0.75,0.75) +
          UmTurnLeft.changeBeats(2.5).skew(0.0,0.75) +
          Stand.changeBeats(1) +
          UmTurnLeft.changeBeats(2).skew(0.0,-0.75) +
          BeauWheel.scale(1.0,0.875),

          ExtendRight.changeBeats(2).scale(3.0,1.25) +
          CastRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(3).scale(3.0,1.5) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.875),

          QuarterLeft.changeBeats(2).skew(-0.75,-1.0) +
          CastRight.scale(0.75,0.75) +
          FlipRight.changeBeats(4.5).scale(0.75,0.75) +
          Stand.changeBeats(4) +
          SwingRight.scale(0.75,0.75) +
          UmTurnRight.changeBeats(4.5) +
          SwingLeft.scale(0.75,0.75) +
          UmTurnLeft.changeBeats(2.5).skew(0.0,0.75) +
          Stand.changeBeats(1) +
          UmTurnLeft.changeBeats(2).skew(0.0,-0.75) +
          BeauWheel.scale(1.0,0.875),

          ExtendRight.changeBeats(2).scale(3.0,1.25) +
          CastRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(3).scale(3.0,1.5) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          HingeRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.875)
      ]),

    AnimatedCall('Beer Mug Chain',
      formation:Formations.StaticSquare,
      from:'Static Square',fractions:'7;7;10',difficulty: 3,
      paths:[
          PullRight.changeBeats(2).scale(3.0,1.75) +
          HingeLeft.scale(0.75,0.75) +
          PullLeft.changeBeats(2.5).scale(3.0,1.5) +
          SwingRight.scale(0.75,0.75) +
          LeadLeft.changeBeats(2).scale(3.75,2.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          BeauReverseWheel.scale(1.0,0.875),

          QuarterRight.changeBeats(2).skew(-0.75,1.0) +
          CastLeft.scale(0.75,0.75) +
          FlipLeft.changeBeats(4.5).scale(0.75,0.75) +
          SwingLeft.scale(0.75,0.75) +
          UmTurnLeft.changeBeats(7.5) +
          SwingRight.scale(0.75,0.75) +
          UmTurnRight.changeBeats(2.5).skew(0.0,-0.75) +
          UmTurnRight.changeBeats(2).skew(0.0,0.75) +
          BelleReverseWheel.scale(1.0,0.875),

          ExtendLeft.changeBeats(2).scale(3.0,1.25) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          HingeLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          BeauReverseWheel.scale(1.0,0.875),

          DodgeLeft.changeBeats(5).scale(0.875,0.875) +
          Stand +
          SwingRight.scale(0.75,0.75) +
          UmTurnRight.changeBeats(6) +
          CastLeft.scale(0.75,0.75) +
          QuarterLeft.changeBeats(3).skew(0.75,0.75) +
          CastLeft.scale(0.75,0.75) +
          QuarterRight.changeBeats(3).skew(-0.75,0.75) +
          BelleReverseWheel.scale(1.0,0.875)
      ]),

    AnimatedCall('Tea Mug Chain',
      formation:Formations.StaticSquare,
      from:'Static Square',fractions:'7;7;10',difficulty: 3,
      paths:[
          QuarterRight.changeBeats(2).skew(-0.75,-1.0) +
          CastLeft.scale(0.75,0.75) +
          UmTurnRight.changeBeats(4.5) +
          SwingRight.scale(0.75,0.75) +
          UmTurnRight.changeBeats(7.5).skew(0.0,-1.5) +
          SwingRight.scale(0.75,0.75) +
          QuarterRight.changeBeats(2.5).skew(0.0,-0.75) +
          QuarterLeft.changeBeats(2).skew(-0.75,0.0) +
          BeauWheel.scale(1.0,0.875),

          PullLeft.changeBeats(2).scale(3.0,1.75) +
          HingeRight.scale(0.75,0.75) +
          PullRight.changeBeats(2.5).scale(3.0,1.5) +
          SwingLeft.scale(0.75,0.75) +
          LeadRight.changeBeats(2).scale(3.75,2.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.875),

          ExtendLeft.changeBeats(2).scale(3.0,1.25) +
          CastLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          CastRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          CastLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(3.0,1.5) +
          HingeLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(3.0,1.5) +
          BeauReverseWheel.scale(1.0,0.875),

          DodgeLeft.changeBeats(5).scale(0.125,0.125) +
          Stand +
          SwingLeft.scale(0.75,0.75) +
          FlipLeft.changeBeats(6).scale(1.0,0.75) +
          CastLeft.scale(0.75,0.75) +
          QuarterLeft.changeBeats(3).skew(-0.75,0.75) +
          CastRight.scale(0.75,0.75) +
          QuarterLeft.changeBeats(3).skew(0.75,-0.75) +
          BelleReverseWheel.scale(1.0,0.875)
      ]),
  ];

