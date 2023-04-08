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
import '../c1/replace.dart' as c1;

  final List<AnimatedCall> SwingTheFractions = [ 

    AnimatedCall('Swing the Fractions',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'1.5;3;4.5;3',
      paths:[
          HingeRight +
          SwingLeft +
          CastRight +
          SwingLeft +
          HingeRight,

          HingeRight +
          Stand.changeBeats(3) +
          CastRight +
          SwingLeft +
          HingeRight,

          HingeRight +
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          HingeRight,

          HingeRight +
          Stand.changeBeats(3) +
          CastRight +
          Stand.changeBeats(3) +
          HingeRight
      ]),

    AnimatedCall('Swing the Fractions',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'1.5;3;4.5;3',
      paths:[
          Stand.changeBeats(9) +
          SwingLeft +
          HingeRight,

          HingeRight +
          SwingLeft +
          CastRight +
          SwingLeft +
          Stand.changeBeats(1.5),

          HingeRight +
          Stand.changeBeats(3) +
          CastRight +
          SwingLeft +
          Stand.changeBeats(1.5),

          Stand.changeBeats(9) +
          SwingLeft +
          HingeRight
      ]),

    AnimatedCall('Swing the Fractions',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
  ]),
      from:'Facing Diamonds',parts:'1.5;3;4.5;3',
      paths:[
          HingeRight +
          SwingLeft +
          Stand.changeBeats(9),

          Stand.changeBeats(1.5) +
          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          HingeRight,

          HingeRight +
          SwingLeft +
          Stand.changeBeats(9),

          Stand.changeBeats(1.5) +
          SwingLeft +
          CastRight +
          SwingLeft +
          HingeRight
      ]),

    AnimatedCall('Left Swing the Fractions',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'1.5;3;4.5;3',
      paths:[
          Stand.changeBeats(9) +
          SwingRight +
          HingeLeft,

          HingeLeft +
          Stand.changeBeats(3) +
          CastLeft +
          SwingRight +
          Stand.changeBeats(1.5),

          HingeLeft +
          SwingRight +
          CastLeft +
          SwingRight +
          Stand.changeBeats(1.5),

          Stand.changeBeats(9) +
          SwingRight +
          HingeLeft
      ]),

    AnimatedCall('Left Swing the Fractions',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'1.5;3;4.5;3',
      paths:[
          HingeLeft +
          Stand.changeBeats(3) +
          CastLeft +
          Stand.changeBeats(3) +
          HingeLeft,

          HingeLeft +
          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          HingeLeft,

          HingeLeft +
          Stand.changeBeats(3) +
          CastLeft +
          SwingRight +
          HingeLeft,

          HingeLeft +
          SwingRight +
          CastLeft +
          SwingRight +
          HingeLeft
      ]),

    AnimatedCall('Left Swing the Fractions',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      from:'Facing Diamonds',parts:'1.5;3;4.5;3',
      paths:[
          HingeLeft +
          SwingRight +
          Stand.changeBeats(9),

          Stand.changeBeats(1.5) +
          SwingRight +
          CastLeft +
          SwingRight +
          HingeLeft,

          HingeLeft +
          SwingRight +
          Stand.changeBeats(9),

          Stand.changeBeats(1.5) +
          SwingRight +
          CastLeft +
          Stand.changeBeats(3) +
          HingeLeft
      ]),

    AnimatedCall('Any Hand Swing the Fractions',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:270),
  ]),
      from:'Inverted Line Ends Facing In',group:' ',parts:'1.5;3;4.5;3',
      paths:[
          HingeRight +
          FlipLeft +
          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33) +
          FlipLeft +
          HingeRight,

          HingeRight +
          Stand.changeBeats(3) +
          QuarterLeft.changehands(2).skew(0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,0.33) +
          Stand.changeBeats(3) +
          HingeRight,

          HingeLeft +
          Stand.changeBeats(3) +
          QuarterRight.changehands(1).skew(0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,-0.33) +
          Stand.changeBeats(3) +
          HingeLeft,

          HingeLeft +
          RunRight +
          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33) +
          RunRight +
          HingeLeft
      ]),

    AnimatedCall('Any Hand Swing the Fractions',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Line Ends Facing Out',parts:'1.5;3;4.5;3',noDisplay: true,
      paths:[
          HingeLeft +
          Stand.changeBeats(3) +
          QuarterRight.changehands(1).skew(0.0,0.5) +
          QuarterRight.changehands(1).skew(-0.5,0.5) +
          QuarterRight.changehands(1).skew(-0.5,0.0) +
          RunRight +
          HingeLeft,

          HingeLeft +
          RunRight +
          HingeLeft.scale(1.0,1.5) +
          HingeLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.5,1.0) +
          Stand.changeBeats(3) +
          HingeLeft,

          HingeRight +
          FlipLeft +
          HingeRight.scale(1.0,1.5) +
          HingeRight.scale(0.5,0.5) +
          HingeRight.scale(1.5,1.0) +
          Stand.changeBeats(3) +
          HingeRight,

          HingeRight +
          Stand.changeBeats(3) +
          QuarterLeft.changehands(2).skew(0.0,-0.5) +
          QuarterLeft.changehands(2).skew(-0.5,-0.5) +
          QuarterLeft.changehands(2).skew(-0.5,0.0) +
          FlipLeft +
          HingeRight
      ]),
    c1.Replace.where((tam) =>
      tam.title == 'Swing the Fractions, Replace the Second Part with Trade Circulate').first.xref(title: 'Swing the Fractions, Replace the Second Part with Trade Circulate').xref(group: ' '),
    c1.Replace.where((tam) =>
      tam.title == 'Swing the Fractions, Replace the Third Part with a Split Circulate').first.xref(title: 'Swing the Fractions, Replace the Third Part with a Split Circulate').xref(group: ' '),
  ];

