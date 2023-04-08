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

  final List<AnimatedCall> Sashay = [ 

    AnimatedCall('Half Sashay',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          BackSashayRight.changeBeats(4),

          SashayLeft.changeBeats(4)
      ]),

    AnimatedCall('Half Sashay',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          BackSashayRight.changeBeats(4),

          SashayLeft.changeBeats(4),

          BackSashayRight.changeBeats(4),

          SashayLeft.changeBeats(4)
      ]),

    AnimatedCall('Half Sashay',
      formation:Formations.StaticSquare,
      from:'Squared Set',
      paths:[
          BackSashayRight.changeBeats(4),

          SashayLeft.changeBeats(4),

          BackSashayRight.changeBeats(4),

          SashayLeft.changeBeats(4)
      ]),

    AnimatedCall('Heads Half Sashay',
      formation:Formations.StaticSquare,
      from:'Squared Set',noDisplay: true,
      paths:[
          BackSashayRight.changeBeats(4),

          SashayLeft.changeBeats(4),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Half Sashay',
      formation:Formations.StaticSquare,
      from:'Squared Set',noDisplay: true,
      paths:[
          Path(),

          Path(),

          BackSashayRight.changeBeats(4),

          SashayLeft.changeBeats(4)
      ]),

    AnimatedCall('Ladies In, Men Sashay',
      formation:Formations.Circle,
      from:'Circle Left',isGenderSpecific:true,
      paths:[
          SxtnthLeft +
          cl.changeBeats(2) +
          cl.changeBeats(2) +
          SxtnthRight,

          Forward.changeBeats(2).scale(1.5,1.0) +
          Back.changeBeats(2).scale(1.5,1.0),

          SxtnthLeft +
          cl.changeBeats(2) +
          cl.changeBeats(2) +
          SxtnthRight,

          Forward.changeBeats(2).scale(1.5,1.0) +
          Back.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Ladies In, Men Sashay',
      formation:Formations.Circle,
      from:'Circle Right',isGenderSpecific:true,
      paths:[
          SxtnthRight +
          cr.changeBeats(2) +
          cr.changeBeats(2) +
          SxtnthLeft,

          Forward.changeBeats(2).scale(1.5,1.0) +
          Back.changeBeats(2).scale(1.5,1.0),

          SxtnthRight +
          cr.changeBeats(2) +
          cr.changeBeats(2) +
          SxtnthLeft,

          Forward.changeBeats(2).scale(1.5,1.0) +
          Back.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Rollaway',
      formation:Formations.FacingCouples,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          DodgeRight.changehands(6),

          FoldLeft.changeBeats(1.5).changehands(5).scale(0.6,0.5) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(1.2,-1.0)
      ]),

    AnimatedCall('Rollaway',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',
      paths:[
          FoldLeft.changeBeats(1.5).changehands(5).scale(0.6,0.5) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(1.2,-1.0),

          DodgeRight.changehands(6)
      ]),

    AnimatedCall('Rollaway',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          DodgeRight.changehands(6),

          FoldLeft.changeBeats(1.5).changehands(5).scale(0.6,0.5) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(1.2,-1.0),

          DodgeRight.changehands(6),

          FoldLeft.changeBeats(1.5).changehands(5).scale(0.6,0.5) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(1.2,-1.0)
      ]),

    AnimatedCall('Rollaway',
      formation:Formations.Circle,
      from:'Circle Left',isGenderSpecific:true,
      paths:[
          Stand.changeBeats(4.5).changehands(6) +
          Stand.changeBeats(.1).changehands(3),

          EighthLeft.changehands(5).skew(0.5,0.1) +
          QuarterLeft.changehands(5).skew(1.4,0.0) +
          QuarterLeft.changehands(5).skew(0.0,-1.4) +
          EighthLeft.changehands(5).skew(-0.4,-0.25) +
          Stand.changeBeats(.1).changehands(3),

          Stand.changeBeats(4.5).changehands(6) +
          Stand.changeBeats(.1).changehands(3),

          EighthLeft.changehands(5).skew(0.5,0.1) +
          QuarterLeft.changehands(5).skew(1.4,0.0) +
          QuarterLeft.changehands(5).skew(0.0,-1.4) +
          EighthLeft.changehands(5).skew(-0.4,-0.25) +
          Stand.changeBeats(.1).changehands(3)
      ]),

    AnimatedCall('Rollaway',
      formation:Formations.StaticSquare,
      from:'Static Square',
      paths:[
          DodgeRight.changehands(6),

          FoldLeft.changeBeats(1.5).changehands(5).scale(0.6,0.5) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(1.2,-1.0),

          DodgeRight.changehands(6),

          FoldLeft.changeBeats(1.5).changehands(5).scale(0.6,0.5) +
          UmTurnLeft.changeBeats(1.5).changehands(5).skew(1.2,-1.0)
      ]),
  ];

