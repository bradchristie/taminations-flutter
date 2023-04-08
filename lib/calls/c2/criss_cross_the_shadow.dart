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

  final List<AnimatedCall> CrissCrossTheShadow = [ 

    AnimatedCall('Criss Cross the Shadow',
      formation:Formations.OceanWavesRHGBBG,
      from:'Right-Hand Waves',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.5),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,3.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          HingeRight.changeBeats(3) +
          Forward_2,

          UmTurnLeft.changeBeats(2).skew(-2.0,-0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Criss Cross the Shadow',
      formation:Formations.OceanWavesLHGBBG,
      from:'Left-Hand Waves',
      paths:[
          UmTurnRight.changeBeats(2).skew(-2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.5),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          HingeLeft.changeBeats(3) +
          Forward_2,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,3.0),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          QuarterLeft.changeBeats(3).skew(3.0,-0.5)
      ]),

    AnimatedCall('Criss Cross the Shadow',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          HingeLeft.changeBeats(3) +
          Forward_2,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,3.0),

          UmTurnLeft.changeBeats(2).skew(-2.0,-0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Criss Cross the Shadow',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          UmTurnRight.changeBeats(2).skew(-2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.5),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          LeadRight.changeBeats(3).scale(2.0,3.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          HingeRight.changeBeats(3) +
          Forward_2,

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          QuarterLeft.changeBeats(3).skew(3.0,-0.5)
      ]),

    AnimatedCall('Criss Cross the Shadow',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines, Centers In',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.5),

          ExtendLeft.changeBeats(4).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(1.0,0.5),

          ExtendLeft.changeBeats(4).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(1.0,1.5),

          UmTurnLeft.changeBeats(2).skew(-2.0,-0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Criss Cross the Shadow',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines, Centers Out',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.5),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          LeadRight.changeBeats(3).scale(2.5,2.0) +
          LeadRight.changeBeats(3).scale(2.0,3.5),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).scale(1.5,2.0) +
          LeadLeft.changeBeats(3).scale(2.0,2.5),

          UmTurnLeft.changeBeats(2).skew(-2.0,-0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(3).scale(3.0,1.5)
      ]),
  ];

