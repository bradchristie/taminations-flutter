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
import '../plus/fan_the_top.dart' as plus;

  final List<AnimatedCall> FanConcept = [

    AnimatedCall('Fan Alter and Circulate',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',fractions:'7.5;4',
      paths:[
          UmTurnRight +
          RunLeft.changeBeats(4.5).scale(3.0,3.0) +
          RunLeft.changeBeats(4).scale(1.5,3.0) +
          FlipLeft,

          CastLeft +
          SwingRight +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          CastLeft +
          Stand.changeBeats(3) +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          UmTurnRight +
          Forward_4.changeBeats(4.5) +
          RunLeft.changeBeats(4).scale(1.5,3.0) +
          FlipLeft
      ]),

    AnimatedCall('Fan Alter the Wave',
      formation:Formations.WaveRH,
      group:' ',fractions:'4.5;4',
      paths:[
          UmTurnRight.changeBeats(4.5) +
          LeadLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).scale(3.0,2.0) +
          RunLeft,

          CastLeft +
          SwingLeft.changeBeats(4) +
          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Fan Chain and Exchange the Gears',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',fractions:'4.5;3;4.5;4',
      paths:[
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeRight.changehands(0) +
          SwingRight.changehands(0).skew(-0.5,0.0),

          CastLeft +
          SwingRight +
          CastLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadRight.scale(1.5,0.5),

          CastLeft +
          Stand.changeBeats(3) +
          CastLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,0.3) +
          HalfHingeRight.changeBeats(1.5).skew(0.3,0.3),

          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight.scale(0.5,1.0).skew(0.0,0.3) +
          QuarterRight
      ]),

    AnimatedCall('Fan Chain the Gears',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',fractions:'4.5;3;4.5;3',
      paths:[
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          CastLeft.changehands(5) +
          SwingRight +
          CastLeft,

          CastLeft +
          SwingRight +
          CastLeft.changehands(5) +
          FlipRight,

          CastLeft +
          Stand.changeBeats(3) +
          CastLeft.changehands(5) +
          FlipRight,

          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          CastLeft.changehands(5) +
          Stand.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('Fan Chain the Line',
      formation:Formations.TidalWaveRHBGGB,
      group:' ',
      paths:[
          Stand.changeBeats(3) +
          DodgeRight.changeBeats(1).scale(1.0,0.25) +
          CastRight,

          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          DodgeRight.changeBeats(1).scale(1.0,0.25) +
          CastRight
      ]),

    AnimatedCall('Fan Chain Thru',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',fractions:'4.5;3',
      paths:[
          Path(),

          CastLeft +
          SwingRight +
          CastLeft,

          CastLeft +
          Stand.changeBeats(3) +
          CastLeft,

          Path()
      ]),

    AnimatedCall('Fan Relay the Deucey',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',fractions:'4.5;3;3;3',
      paths:[
          Forward_2.changeBeats(4.5) +
          Forward_2.changeBeats(3) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          CastLeft +
          SwingRight +
          SwingLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          CastLeft +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(4.5),

          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Fan Relay the Shadow',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:2,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-2,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:0,angle:0),
  ]),
      group:' ',
      paths:[
          LeadLeft.changeBeats(6.5).scale(3.0,3.5) +
          HingeLeft +
          DodgeRight,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          LeadLeft +
          LeadLeft +
          LeadLeft,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          HingeRight +
          Forward_2,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.changehands(6).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          HingeLeft +
          DodgeRight
      ]),

    AnimatedCall('Fan Relay the Top',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',fractions:'4.5;3',
      paths:[
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          HingeRight.changeBeats(3) +
          CastLeft,

          CastLeft +
          HingeRight.changeBeats(3) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft
      ]),
    plus.FanTheTop.where((tam) =>
      tam.title == 'Fan the Top' && tam.from == 'Right-Hand Wave').first.xref(title: 'Fan the Top').xref(group: ' '),

    AnimatedCall('Fan 1/2 Cast and Relay',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',group:' ',fractions:'4.5;3',
      paths:[
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          CastLeft +
          SwingRight +
          CastLeft,

          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft
      ]),
  ];

