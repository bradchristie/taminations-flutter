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

  final List<AnimatedCall> RotarySpin = [

    AnimatedCall('Rotary Spin',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'Eight Chain Thru',parts:'2',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          CastLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,2.5) +
          CastLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.changeBeats(4) +
          QuarterLeft.skew(0.0,1.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.changeBeats(4) +
          QuarterLeft.skew(0.0,-1.0)
      ]),

    AnimatedCall('Rotary Spin',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'2',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          CastLeft,

          Forward.changeBeats(2) +
          BelleWheel.changeBeats(4) +
          QuarterLeft.skew(0.0,-1.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          CastLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.changeBeats(4) +
          QuarterLeft.skew(0.0,1.0)
      ]),

    AnimatedCall('"O" Rotary Spin',
      formation:Formations.OEightChainThru,
      group:' ',parts:'3',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft +
          HingeLeft.skew(0.0,-1.0),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,2.5) +
          SwingLeft +
          HingeLeft.skew(0.0,1.0),

          ExtendRight.changeBeats(2).scale(1.0,1.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.changeBeats(4) +
          QuarterLeft,

          ExtendLeft.changeBeats(2).scale(1.0,2.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.changeBeats(4) +
          QuarterLeft
      ]),
  ];

