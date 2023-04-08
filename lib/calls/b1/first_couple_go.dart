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

  final List<AnimatedCall> FirstCoupleGo = [

    AnimatedCall('First Couple Go Left, Next Couple Go Right',
      formation:Formations.CompletedDoublePassThru,
      group:' ',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.5,2.0).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(2).scale(1.5,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('First Couple Go Right, Next Couple Go Left',
      formation:Formations.CompletedDoublePassThru,
      group:' ',
      paths:[
          UmTurnRight.changeBeats(4).changehands(1).skew(-1.0,0.0),

          RunRight.changeBeats(4).changehands(2).scale(1.5,2.0).skew(-1.0,0.0),

          RunLeft.changeBeats(4).changehands(1).scale(1.5,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(1.0,0.0)
      ]),

    AnimatedCall('First Couple Go Left, Next Couple Go Left',
      formation:Formations.CompletedDoublePassThru,
      group:' ',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.5,2.5).skew(-3.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(-3.0,1.0),

          LeadLeft.changeBeats(4).changehands(1).scale(3.0,1.0),

          QuarterLeft.changeBeats(4).changehands(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('First Couple Go Right, Next Couple Go Right',
      formation:Formations.CompletedDoublePassThru,
      group:' ',
      paths:[
          UmTurnRight.changeBeats(4).changehands(1).skew(-3.0,-1.0),

          RunRight.changeBeats(4).changehands(2).scale(1.5,2.5).skew(-3.0,0.0),

          QuarterRight.changeBeats(4).changehands(1).skew(1.0,1.0),

          LeadRight.changeBeats(4).changehands(2).scale(3.0,1.0)
      ]),
  ];

