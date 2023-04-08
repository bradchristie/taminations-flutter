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
import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> AnythingAndScatter = [

    AnimatedCall('Chase and Scatter',
      formation:Formations.LinesFacingOut,
      group:' ',fractions:'5',
      paths:[
          UmTurnRight.skew(-2.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(6).scale(2.0,3.0),

          FlipRight.changeBeats(5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          UmTurnRight.skew(-2.0,0.0) +
          Forward_2 +
          RunLeft.changeBeats(6),

          FlipRight.changeBeats(5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Cross Flip and Scatter',
      formation:Formations.TwomFacedLinesRH,
      group:' ',fractions:'5.5',
      paths:[
          LeadRight +
          Forward_4 +
          RunLeft.changeBeats(6),

          RunRight.changeBeats(4).scale(1.0,2.0) +
          LeadRight +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          RunRight.changeBeats(4).scale(1.0,2.0) +
          LeadRight +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          LeadRight +
          Forward_4 +
          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Cross Loop and Scatter',
      formation:Formations.ColumnRHGBGB,
      group:' ',fractions:'7',
      paths:[
          RunRight.scale(0.4,1.5).skew(-1.0,0.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward_2 +
          RunLeft.changeBeats(6),

          Forward +
          LeadRight.changeBeats(2) +
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          RunRight.scale(0.4,1.5).skew(-1.0,0.0) +
          LeadRight.changeBeats(2).scale(1.0,2.0) +
          Forward_2 +
          RunRight.changeBeats(6).scale(2.0,3.0),

          Forward +
          LeadRight.changeBeats(2) +
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Flip and Scatter',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',fractions:'5.5',
      paths:[
          LeadRight +
          Forward_4 +
          RunLeft.changeBeats(6),

          LeadRight +
          RunRight.changeBeats(4) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          LeadRight +
          RunRight.changeBeats(4) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          LeadRight +
          Forward_4 +
          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Invert and Scatter',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
  ]),
      group:' ',fractions:'6',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          Forward_4.changeBeats(3) +
          RunLeft.changeBeats(6).scale(2.0,3.0),

          Forward.changeBeats(3) +
          RunLeft +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25),

          Forward_3.changeBeats(6) +
          RunRight.changeBeats(6),

          Forward.changeBeats(6) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Loop and Scatter',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',group:' ',fractions:'8.5',
      paths:[
          LeadRight +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          Forward_4.changeBeats(3) +
          RunLeft.changeBeats(6),

          LeadLeft +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          ExtendLeft.changeBeats(3).scale(4.0,2.0) +
          RunRight.changeBeats(6).scale(2.0,3.0),

          Forward_2 +
          LeadRight +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,0.5) +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          Forward_2 +
          LeadLeft +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Vertical Tag and Scatter',
      formation:Formations.LinesFacingOut,
      group:' ',fractions:'5',
      paths:[
          UmTurnLeft.skew(-2.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(6).scale(2.0,3.0),

          FlipRight.changeBeats(5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          UmTurnLeft.skew(-2.0,0.0) +
          Forward_2 +
          RunLeft.changeBeats(6),

          FlipRight.changeBeats(5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25)
      ]),
  ];

