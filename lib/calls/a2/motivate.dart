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

  final List<AnimatedCall> Motivate = [

    AnimatedCall('Motivate',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'4;4.5;3',difficulty: 1,
      paths:[
          Forward_4 +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          RunLeft.changeBeats(4) +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_4 +
          CastLeft +
          SwingRight +
          CastLeft,

          RunRight.changeBeats(4).scale(2.0,3.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Motivate',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'4;4.5;3',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          SwingLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          Forward_4 +
          CastRight +
          SwingLeft +
          CastRight,

          RunRight.changeBeats(4) +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward_4 +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          CastRight
      ]),

    AnimatedCall('Motivate',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',parts:'4;4.5;3',difficulty: 3,
      paths:[
          Forward_4.changehands(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          RunRight +
          BeauWheel.scale(1.0,-1.0) +
          BackHingeLeft,

          Forward_4.changehands(1) +
          CastRight +
          EighthLeft.changehands(1).skew(0.353,0.647) +
          HingeLeft.scale(0.5,0.5) +
          EighthLeft.changehands(1).skew(0.707,-0.207) +
          BelleWheel.scale(1.0,-1.0) +
          HingeRight,

          RunRight.changeBeats(4).changehands(1) +
          CastRight +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          RunRight.changeBeats(4).changehands(2).scale(3.0,3.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          EighthRight.skew(1.06,0.06) +
          LeadRight.scale(1.5,1.5) +
          EighthRight.changehands(2).skew(0.707,-0.707) +
          ExtendLeft.changeBeats(4.5).scale(2.0,4.0)
      ]),

    AnimatedCall('Motivate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
  ]),
      from:'T-Bones',parts:'2;4.5;3',difficulty: 3,
      paths:[
          Forward_2 +
          LeadRight.changeBeats(2.5).scale(1.0,2.0) +
          ExtendRight.changeBeats(2) +
          EighthRight.skew(1.06,0.06) +
          LeadRight.scale(1.5,1.5) +
          EighthRight.changehands(2).skew(0.8,-0.7) +
          ExtendLeft.changeBeats(4.5).scale(2.0,3.9),

          Forward_2 +
          LeadRight.changeBeats(4.5).scale(2.0,1.0) +
          RunRight +
          BelleReverseWheel +
          BackHingeLeft,

          Forward_2 +
          HingeRight.skew(0.5,0.0) +
          HingeRight.skew(0.0,0.25) +
          HingeRight.skew(-0.25,0.0) +
          EighthLeft.changehands(1).skew(0.353,0.647) +
          HingeLeft.scale(0.5,0.5) +
          EighthLeft.changehands(1).skew(0.707,-0.207) +
          CastRight,

          Forward_2 +
          HingeRight.skew(-0.5,0.0) +
          HingeRight.skew(0.0,-0.25) +
          HingeRight.skew(0.25,0.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Motivate, Turn the Star 1/4',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',group:' ',parts:'4;4.5;3',difficulty: 1,
      paths:[
          Forward_4 +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          RunLeft.changeBeats(4) +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_4 +
          CastLeft +
          HingeRight.changeBeats(3) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(2.0,3.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          HingeRight.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('Motivate, Turn the Star 1/4',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',group:' ',parts:'4;4.5;3',difficulty: 1,noDisplay: true,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          HingeLeft.changeBeats(3) +
          CastRight,

          Forward_4 +
          CastRight +
          HingeLeft.changeBeats(3) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          RunRight.changeBeats(4) +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward_4 +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          CastRight
      ]),

    AnimatedCall('Motivate, Turn the Star 3/4',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',group:' ',parts:'4;4.5;3',difficulty: 1,
      paths:[
          Forward_4 +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight.changeBeats(4.5) +
          CastLeft,

          RunLeft.changeBeats(4) +
          CastLeft +
          SwingRight.changeBeats(4.5) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_4 +
          CastLeft +
          CastRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          RunRight.changeBeats(4).scale(2.0,3.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          CastRight +
          CastLeft
      ]),

    AnimatedCall('Motivate, Turn the Star 3/4',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',group:' ',parts:'4;4.5;3',difficulty: 1,noDisplay: true,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          CastLeft +
          CastRight,

          Forward_4 +
          CastRight +
          CastLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          RunRight.changeBeats(4) +
          CastRight +
          SwingLeft.changeBeats(4.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward_4 +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft.changeBeats(4.5) +
          CastRight
      ]),

    AnimatedCall('Motivate, Do Not Turn the Star',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',group:' ',parts:'4;4.5;3',difficulty: 2,
      paths:[
          Forward_4 +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          RunLeft.changeBeats(4) +
          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_4 +
          CastLeft +
          Stand.changeBeats(3) +
          CastLeft,

          RunRight.changeBeats(4).scale(2.0,3.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          Stand.changeBeats(3) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Motivate, Do Not Turn the Star',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',group:' ',parts:'4;4.5;3',difficulty: 2,noDisplay: true,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,3.0) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          Stand.changeBeats(3) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          Forward_4 +
          CastRight +
          Stand.changeBeats(3) +
          CastRight,

          RunRight.changeBeats(4) +
          CastRight +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward_4 +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0) +
          SwingLeft +
          CastRight
      ]),
  ];

