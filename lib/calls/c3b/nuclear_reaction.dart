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

  final List<AnimatedCall> NuclearReaction = [ 

    AnimatedCall('Nuclear Reaction',
      formation:Formations.QuarterTag,
      from:'1/4 Tag',parts:'3;5',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          HingeLeft.changeBeats(2.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,-1.0) +
          CounterRotateLeft_5_1,

          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(3).scale(3.0,2.0) +
          Forward_2 +
          CounterRotateRight_m1_m3,

          Stand.changeBeats(3) +
          BackHingeRight.changeBeats(2.5) +
          LeadLeft.changeBeats(2.5) +
          CounterRotateLeft_1_5,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          UmTurnLeft.changeBeats(5).skew(-1.0,0.0) +
          CounterRotateRight_3_1
      ]),

    AnimatedCall('Nuclear Reaction',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand 1/4 Tag',parts:'3;5',
      paths:[
          Stand.changeBeats(3) +
          Forward_5 +
          CounterRotateRight_m1_m3.changehands(3),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          HingeRight.changeBeats(2.5) +
          QuarterRight.changeBeats(2.5).skew(1.0,1.0) +
          CounterRotateRight_5_m1.changehands(2),

          Stand.changeBeats(3) +
          BackHingeLeft.changeBeats(2.5) +
          LeadRight.changeBeats(2.5) +
          CounterRotateRight_1_m5.changehands(2),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          RunRight.changeBeats(3.7) +
          Forward.changeBeats(1.3) +
          CounterRotateRight_3_1.changehands(3)
      ]),

    AnimatedCall('Nuclear Reaction',
      formation:Formations.QuarterLinesRH,
      from:'Quarter Lines',parts:'3;5',
      paths:[
          Stand.changeBeats(3) +
          Forward_5 +
          CounterRotateRight_m1_m3.changeBeats(5).changehands(2),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          HingeRight.changeBeats(2.5) +
          QuarterRight.changeBeats(2.5).skew(1.0,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          RunRight.changeBeats(3.7) +
          Forward.changeBeats(1.3) +
          CounterRotateRight_3_1.changeBeats(5).changehands(2),

          Stand.changeBeats(3) +
          HingeRight.changeBeats(2.5) +
          QuarterRight.changeBeats(2.5).skew(-1.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Cross Nuclear Reaction',
      formation:Formations.QuarterTag,
      from:'1/4 Tag',parts:'3;5',
      paths:[
          Stand.changeBeats(3) +
          Forward_5 +
          CounterRotateRight_m1_m3.changehands(3),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          HingeLeft.changeBeats(2.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,-1.0) +
          CounterRotateLeft_5_1,

          Stand.changeBeats(3) +
          BackHingeRight.changeBeats(2.5) +
          LeadLeft.changeBeats(2.5) +
          CounterRotateLeft_1_5,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          RunRight.changeBeats(3.7) +
          Forward.changeBeats(1.3) +
          CounterRotateRight_3_1.changehands(3)
      ]),

    AnimatedCall('Cross Nuclear Reaction',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
  ]),
      from:'Two-Faced Line Between Mini-Waves',parts:'3;5',
      paths:[
          Stand.changeBeats(3) +
          HingeRight.changeBeats(2.5) +
          QuarterRight.changeBeats(2.5).skew(-1.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          UmTurnLeft.changeBeats(2).skew(-2.0,0.0) +
          Forward_3 +
          CounterRotateRight_m1_m3.changeBeats(5).changehands(2),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          HingeRight.changeBeats(2.5) +
          QuarterRight.changeBeats(2.5).skew(1.0,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(3.0,2.0),

          Stand.changeBeats(3) +
          RunRight.changeBeats(3.7) +
          Forward.changeBeats(1.3) +
          CounterRotateRight_3_1.changeBeats(5).changehands(3)
      ]),
  ];

