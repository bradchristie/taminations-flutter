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

  final List<AnimatedCall> ScootAndPlenty = [ 

    AnimatedCall('Plenty',
      formation:Formations.QuarterTag,
      from:'Right-Hand Quarter Tag',parts:'5;7',
      paths:[
          ExtendRight.changeBeats(5).scale(1.0,4.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.75) +
          Forward_2,

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward_3.changeBeats(2) +
          FlipLeft.scale(1.0,0.75) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          FlipLeft.scale(1.0,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipRight.changeBeats(5).skew(2.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          RunRight.scale(1.0,1.25) +
          ExtendLeft.changeBeats(4).scale(4.0,0.5) +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.0,0.5),

          Forward_2.changeBeats(5) +
          RunRight.scale(1.0,1.25) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(3).scale(2.0,3.0) +
          LeadRight
      ]),

    AnimatedCall('Plenty',
      formation:Formations.n34Tag,
      from:'Right-Hand 3/4 Tag',parts:'6;7',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          Forward_4.changeBeats(3) +
          FlipRight +
          Forward_4 +
          RunRight.changeBeats(6).skew(-2.0,0.0),

          FlipRight.changeBeats(5).scale(2.0,2.0) +
          Forward +
          Forward_4 +
          RunRight +
          Forward_2.changeBeats(6),

          FlipRight.changeBeats(6).skew(2.0,0.0) +
          Forward_4 +
          FlipRight +
          Forward_4.changeBeats(3.5) +
          RunRight.changeBeats(2.5).skew(1.0,0.0),

          Forward_2.changeBeats(6) +
          FlipRight +
          Forward_4 +
          LeadRight.changeBeats(4).scale(2.0,3.0) +
          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Plenty',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',parts:'5;7',
      paths:[
          ExtendRight.changeBeats(5).scale(1.0,4.0) +
          Forward_4 +
          RunLeft +
          Forward_2.changeBeats(6),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward_3.changeBeats(2) +
          RunLeft +
          Forward_4 +
          RunLeft.changeBeats(6).skew(-2.0,0.0),

          FlipLeft.changeBeats(5).skew(2.0,0.0) +
          Forward_4 +
          RunLeft +
          Forward_4.changeBeats(3.5) +
          RunLeft.changeBeats(2.5).skew(1.0,0.0),

          Forward_2.changeBeats(5) +
          RunLeft +
          Forward_4 +
          LeadLeft.changeBeats(4).scale(2.0,3.0) +
          LeadLeft.changeBeats(2)
      ]),

    AnimatedCall('Plenty',
      formation:Formations.n34TagLH,
      from:'Left-Hand 3/4 Tag',parts:'5;7',
      paths:[
          FlipRight.changeBeats(2).skew(-1.0,0.0) +
          Forward_4.changeBeats(3) +
          RunRight.scale(1.0,1.25) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.changeBeats(6).skew(-2.0,0.0),

          FlipRight.changeBeats(4).scale(2.0,2.0) +
          Forward +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          RunRight.scale(1.0,1.25) +
          Forward_2.changeBeats(6),

          FlipLeft.changeBeats(5).skew(2.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.75) +
          Forward_4.changeBeats(3.5) +
          RunLeft.changeBeats(2.5).skew(1.0,0.0),

          Forward_2.changeBeats(5) +
          FlipLeft.scale(1.0,0.75) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(4).scale(2.0,3.0) +
          LeadLeft.changeBeats(2)
      ]),

    AnimatedCall('Plenty',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:0,angle:270),
  ]),
      from:'"I" formation',parts:'5;5',
      paths:[
          ExtendRight.changeBeats(5).scale(2.0,4.0) +
          Forward_2.skew(0.0,0.5) +
          FlipLeft.skew(0.0,-0.5) +
          Forward.changeBeats(5),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward_2 +
          RunLeft.scale(1.0,0.75) +
          Forward_2.skew(0.0,-0.5) +
          FlipLeft.changeBeats(5).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(5).skew(1.0,0.5) +
          FlipRight.skew(0.5,-0.5) +
          ExtendLeft.scale(1.25,0.5) +
          ExtendRight.scale(1.25,1.0) +
          CounterRotateRight_m2_m4.changeBeats(4).changehands(2) +
          QuarterRight.skew(0.0,1.0),

          ExtendLeft.changeBeats(5).scale(1.0,0.5) +
          Forward_2.skew(0.5,0.0) +
          RunRight.skew(-0.5,0.0) +
          CounterRotateRight_4_2.changeBeats(4).changehands(2) +
          QuarterRight.skew(0.0,1.0)
      ]),

    AnimatedCall('Plenty',
      formation:Formations.HourglassRHBP,
      from:'Hourglass',parts:'6;4',
      paths:[
          QuarterRight +
          ExtendLeft.changeBeats(3).scale(3.0,1.5) +
          LeadRight.scale(1.0,0.5) +
          Forward_2 +
          RunRight.changeBeats(2).scale(0.5,1.0) +
          UmTurnLeft.changeBeats(3).skew(-1.0,-0.25),

          FlipRight.changeBeats(6).skew(1.0,0.0) +
          ExtendRight.changeBeats(2).scale(1.5,0.5) +
          FlipRight.changeBeats(2).scale(1.0,0.75).skew(0.5,0.0) +
          LeadRight.changeBeats(3).scale(5.0,2.0) +
          QuarterRight,

          QuarterRight +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          QuarterLeft.skew(1.0,-0.5) +
          ExtendRight.scale(1.0,0.5) +
          Forward.scale(0.5,1.0) +
          FlipLeft.changeBeats(2).scale(1.0,1.25).skew(0.5,0.0) +
          UmTurnRight.changeBeats(3).skew(-1.0,-1.0),

          Forward.changeBeats(6) +
          ExtendRight.scale(1.0,0.5) +
          Forward +
          FlipRight.changeBeats(2).scale(1.0,0.75) +
          CounterRotateRight_4_2.changeBeats(3).skew(0.0,1.0) +
          QuarterRight
      ]),

    AnimatedCall('Plenty, Points Go As You Are',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',parts:'6;7',
      paths:[
          FlipRight.changeBeats(6).skew(2.0,0.0) +
          Forward_4 +
          RunRight +
          Forward_4.changeBeats(3) +
          RunRight.skew(1.0,0.0),

          Forward_4 +
          LeadRight.changeBeats(2) +
          Forward_4 +
          RunRight +
          Forward_2.changeBeats(6),

          Forward_2.changeBeats(6) +
          RunRight +
          Forward_4 +
          RunRight.changeBeats(6).skew(1.0,-2.0),

          LeadRight.changeBeats(2) +
          Forward_4 +
          RunRight +
          Forward_4 +
          RunRight.changeBeats(6).skew(-2.0,0.0)
      ]),

    AnimatedCall('Left Plenty',
      formation:Formations.QuarterTag,
      from:'Right-Hand Quarter Tag',parts:'5;7',
      paths:[
          ExtendLeft.changeBeats(2.5).scale(2.0,2.0) +
          Forward_3.changeBeats(2.5) +
          RunRight +
          Forward_4 +
          RunRight.changeBeats(6).skew(-2.0,0.0),

          ExtendLeft.changeBeats(5).scale(1.0,4.0) +
          Forward_4 +
          RunRight +
          Forward_2.changeBeats(6),

          FlipRight.changeBeats(5).skew(2.0,0.0) +
          Forward_4 +
          RunRight +
          Forward_4.changeBeats(3) +
          RunRight.skew(1.0,0.0),

          Forward_2.changeBeats(5) +
          RunRight +
          Forward_4 +
          RunRight.changeBeats(6).skew(1.0,-2.0)
      ]),

    AnimatedCall('Left Plenty',
      formation:Formations.n34Tag,
      from:'Right-Hand 3/4 Tag',parts:'5;7',
      paths:[
          FlipLeft.changeBeats(4).scale(2.0,2.0) +
          Forward +
          ExtendLeft.changeBeats(4).scale(4.0,0.5) +
          FlipLeft.scale(1.0,0.75) +
          Forward_2.changeBeats(5),

          FlipLeft.changeBeats(2).skew(-1.0,0.0) +
          Forward_4.changeBeats(3) +
          FlipLeft.scale(1.0,0.75) +
          ExtendRight.changeBeats(4).scale(4.0,0.5) +
          RunLeft.changeBeats(5).skew(-2.0,0.0),

          FlipRight.changeBeats(5).skew(2.0,0.0) +
          ExtendLeft.changeBeats(4).scale(4.0,0.5) +
          RunRight.scale(1.0,1.25) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          RunRight.changeBeats(2).skew(2.0,-0.5),

          Forward_2.changeBeats(5) +
          RunRight.scale(1.0,1.25) +
          ExtendRight.changeBeats(4).scale(4.0,0.5) +
          RunRight.changeBeats(5).skew(1.0,-2.0)
      ]),

    AnimatedCall('Left Plenty',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',parts:'5;7',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward_3.changeBeats(2) +
          RunRight.scale(1.0,1.25) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          FlipRight.scale(1.0,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(5).scale(1.0,4.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          RunRight.scale(1.0,1.25) +
          Forward_2,

          FlipLeft.changeBeats(5).skew(2.0,0.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          Forward +
          FlipLeft.scale(1.0,0.75) +
          ExtendRight.changeBeats(4).scale(4.0,0.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.0,0.5),

          Forward_2.changeBeats(5) +
          FlipLeft.scale(1.0,0.75) +
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(3).scale(2.0,3.0) +
          LeadLeft
      ]),

    AnimatedCall('Left Plenty',
      formation:Formations.n34TagLH,
      from:'Left-Hand 3/4 Tag',parts:'6;7',
      paths:[
          FlipLeft.changeBeats(5).scale(2.0,2.0) +
          Forward +
          Forward_4 +
          RunLeft +
          Forward_2.changeBeats(6),

          FlipLeft.skew(-1.0,0.0) +
          Forward_4.changeBeats(3) +
          FlipLeft +
          Forward_4 +
          RunLeft.changeBeats(6).skew(-2.0,0.0),

          FlipLeft.changeBeats(6).skew(2.0,0.0) +
          Forward_4 +
          FlipLeft +
          Forward_4.changeBeats(3.5) +
          RunLeft.changeBeats(2.5).skew(1.0,0.0),

          Forward_2.changeBeats(6) +
          FlipLeft +
          Forward_4 +
          LeadLeft.changeBeats(4).scale(2.0,3.0) +
          LeadLeft.changeBeats(2)
      ]),

    AnimatedCall('Scoot and Plenty',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',parts:'6;6;7',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          FlipRight.skew(-1.0,0.0) +
          Forward_4.changeBeats(3) +
          FlipRight +
          Forward_4 +
          RunRight.changeBeats(6).skew(-2.0,0.0),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          FlipRight.changeBeats(5).scale(2.0,2.0) +
          Forward +
          Forward_4 +
          RunRight +
          Forward_2.changeBeats(6),

          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          Forward_2.changeBeats(6) +
          FlipRight +
          Forward_4 +
          LeadRight.changeBeats(4).scale(2.0,3.0) +
          LeadRight.changeBeats(2),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          FlipRight.changeBeats(6).skew(2.0,0.0) +
          Forward_4 +
          FlipRight +
          Forward_4.changeBeats(3.5) +
          RunRight.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Scoot and Plenty',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',parts:'6;6;7',
      paths:[
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          FlipLeft.changeBeats(5).scale(2.0,2.0) +
          Forward +
          Forward_4 +
          RunLeft +
          Forward_2.changeBeats(6),

          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          FlipLeft.skew(-1.0,0.0) +
          Forward_4.changeBeats(3) +
          FlipLeft +
          Forward_4 +
          RunLeft.changeBeats(6).skew(-2.0,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          Forward_2.changeBeats(6) +
          FlipLeft +
          Forward_4 +
          LeadLeft.changeBeats(4).scale(2.0,3.0) +
          LeadLeft.changeBeats(2),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          FlipLeft.changeBeats(6).skew(2.0,0.0) +
          Forward_4 +
          FlipLeft +
          Forward_4.changeBeats(3.5) +
          RunLeft.changeBeats(2.5).skew(1.0,0.0)
      ]),
  ];

