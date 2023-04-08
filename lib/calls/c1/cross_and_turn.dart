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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> CrossAndTurn = [ 

    AnimatedCall('Cross and Turn',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          Forward +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,2.0),

          UmTurnLeft
      ]),

    AnimatedCall('Cross and Turn',
      formation:Formations.NormalLinesCompact,
      from:'Lines',
      paths:[
          Forward +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,2.0),

          UmTurnLeft,

          Forward +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,2.0),

          UmTurnLeft
      ]),

    AnimatedCall('Cross and Turn',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).changehands(2).scale(1.5,2.0),

          UmTurnLeft,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).changehands(2).scale(1.5,2.0),

          UmTurnLeft
      ]),

    AnimatedCall('As Couples Cross and Turn',
      formation:Formations.NormalLines,
      from:'Lines',group:' ',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.5) +
          ExtendRight.changeBeats(4).changehands(2).scale(2.0,2.5),

          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5) +
          ExtendRight.changeBeats(4).changehands(1).scale(2.0,3.5),

          BeauWheel.changeBeats(6),

          BelleWheel.changeBeats(6)
      ]),

    AnimatedCall('All 8 Cross and Turn',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_3 +
          HingeRight +
          LeadLeft.changeBeats(3).scale(1.0,2.0),

          UmTurnLeft,

          Forward_3 +
          HingeRight +
          LeadLeft.changeBeats(3).scale(1.0,2.0),

          UmTurnLeft
      ]),

    AnimatedCall('Butterfly Cross and Turn',
      formation:Formations.ButterflyChainThru,
      group:' ',
      paths:[
          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendRight.changeBeats(4).changehands(2).scale(1.5,4.0),

          UmTurnLeft,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendRight.changeBeats(4).changehands(2).scale(1.5,4.0),

          UmTurnLeft
      ]),

    AnimatedCall('Concentric Cross and Turn',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',group:' ',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          Forward_2 +
          ExtendRight.changeBeats(3).scale(2.0,3.0),

          UmTurnLeft,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).changehands(2).scale(1.5,2.0),

          UmTurnLeft
      ]),

    AnimatedCall('"O" Cross and Turn',
      formation:Formations.OEightChainThru,
      group:' ',
      paths:[
          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendRight.changeBeats(4).changehands(2).scale(1.5,4.0),

          UmTurnLeft,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendRight.changeBeats(4).changehands(2).scale(1.5,4.0),

          UmTurnLeft
      ]),

    AnimatedCall('Reverse Cross and Turn',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          UmTurnRight,

          Forward +
          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,2.0)
      ]),

    AnimatedCall('Reverse Cross and Turn',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          UmTurnRight,

          Forward +
          ExtendLeft.changeBeats(2).changehands(1).scale(3.0,2.0),

          UmTurnRight,

          Forward +
          ExtendLeft.changeBeats(2).changehands(1).scale(3.0,2.0)
      ]),

    AnimatedCall('Reverse Cross and Turn',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          UmTurnRight,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(1.5,2.0),

          UmTurnRight,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(1.5,2.0)
      ]),

    AnimatedCall('As Couples Reverse Cross and Turn',
      formation:Formations.NormalLines,
      group:' ',
      paths:[
          BeauReverseWheel,

          BelleReverseWheel,

          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(4).changehands(2).scale(2.0,3.5),

          ExtendLeft.changeBeats(2).changehands(1).scale(2.0,1.5) +
          ExtendLeft.changeBeats(4).changehands(1).scale(2.0,2.5)
      ]),

    AnimatedCall('All 8 Reverse Cross and Turn',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          UmTurnRight,

          Forward_3 +
          HingeLeft +
          LeadRight.changeBeats(3).scale(1.0,2.0),

          UmTurnRight,

          Forward_3 +
          HingeLeft +
          LeadRight.changeBeats(3).scale(1.0,2.0)
      ]),

    AnimatedCall('Butterfly Reverse Cross and Turn',
      formation:Formations.ButterflyChainThru,
      group:' ',
      paths:[
          UmTurnRight,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).changehands(1).scale(1.5,4.0),

          UmTurnRight,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).changehands(1).scale(1.5,4.0)
      ]),

    AnimatedCall('Concentric Reverse Cross and Turn',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',group:' ',
      paths:[
          UmTurnRight,

          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          Forward_2 +
          ExtendLeft.changeBeats(3).scale(2.0,3.0),

          UmTurnRight,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).changehands(1).scale(1.5,2.0)
      ]),

    AnimatedCall('"O" Reverse Cross and Turn',
      formation:Formations.OEightChainThru,
      group:' ',
      paths:[
          UmTurnRight,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).changehands(1).scale(1.5,4.0),

          UmTurnRight,

          Forward.changeBeats(.5).scale(0.5,0.5) +
          ExtendLeft.changeBeats(4).changehands(1).scale(1.5,4.0)
      ]),
  ];

