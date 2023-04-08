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

  final List<AnimatedCall> ScootBack = [

    AnimatedCall('Scoot Back',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',fractions:'3',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          RunRight.changeBeats(6)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',fractions:'3',difficulty: 2,
      paths:[
          FlipLeft.changeBeats(6),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.SingleQuarterTag,
      from:'Single Quarter Tag',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.75) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.75),

          Forward.changeBeats(1.5).scale(1.5,1.0).skew(0.0,-0.25) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0).skew(0.0,0.25)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.SingleLeftQuarterTag,
      from:'Left-Hand Single Quarter Tag',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(1.5).scale(1.5,0.75) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.75),

          Forward.changeBeats(1.5).scale(1.5,1.0).skew(0.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0).skew(0.0,-0.25)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.0,y:-1,angle:270),
  ]),
      noDisplay: true,
      paths:[
          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25),

          RunLeft.changeBeats(6)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.0,y:1,angle:90),
  ]),
      noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.25),

          RunRight.changeBeats(6)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',fractions:'3',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          FlipRight.changeBeats(6),

          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          FlipRight.changeBeats(6)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',fractions:'3',difficulty: 2,
      paths:[
          FlipLeft.changeBeats(6),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25),

          FlipLeft.changeBeats(6),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',fractions:'3',difficulty: 2,
      paths:[
          RunRight.changeBeats(6).scale(0.5,1.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          RunRight.changeBeats(6).scale(0.5,1.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',fractions:'3',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          RunLeft.changeBeats(6).scale(0.5,1.0),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          RunLeft.changeBeats(6).scale(0.5,1.0)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.TmBoneURUR,
      from:'T-Bones URUR',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25),

          RunLeft.changeBeats(6).scale(0.5,1.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.25),

          RunLeft.changeBeats(6)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.TmBoneLULU,
      from:'T-Bones LULU',noDisplay: true,
      paths:[
          RunRight.changeBeats(6),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.25),

          RunRight.changeBeats(6).scale(0.5,1.0),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.25)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.TmBoneDLDL,
      from:'T-Bones DLDL',noDisplay: true,
      paths:[
          RunLeft.changeBeats(6).scale(0.5,1.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          RunLeft.changeBeats(6).scale(0.5,1.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.TmBoneRDRD,
      from:'T-Bones RDRD',noDisplay: true,
      paths:[
          RunRight.changeBeats(6).scale(0.5,1.0),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          RunRight.changeBeats(6).scale(0.5,1.0),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',fractions:'3',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.5),

          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5)
      ]),

    AnimatedCall('Scoot Back',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',fractions:'3',difficulty: 3,
      paths:[
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5),

          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5)
      ]),
  ];

