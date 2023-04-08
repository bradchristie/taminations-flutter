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

  final List<AnimatedCall> Hinge = [ 

    AnimatedCall('Hinge',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
  ]),
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          HingeRight.changeBeats(2).skew(-0.5,-0.5),

          HingeRight.changeBeats(2).skew(0.5,0.5),

          HingeRight.changeBeats(2).skew(-0.5,0.5),

          HingeRight.changeBeats(2).skew(0.5,-0.5)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Centers In',difficulty: 2,
      paths:[
          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2),

          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Centers Out',difficulty: 2,
      paths:[
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2),

          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',difficulty: 1,
      paths:[
          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns, Right-Hand Centers',difficulty: 2,
      paths:[
          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns, Left-Hand Centers',difficulty: 2,
      paths:[
          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 1,
      paths:[
          HingeRight.changeBeats(2).scale(1.0,0.5),

          HingeRight.changeBeats(2).scale(1.0,0.5),

          HingeRight.changeBeats(2).scale(1.0,0.5),

          HingeRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Hinge',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          Path(),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          HingeLeft.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
          Path(),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          Path(),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',difficulty: 2,
      paths:[
          Path(),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.DiamondLH,
      from:'Left-Hand Diamond',difficulty: 2,
      paths:[
          Path(),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          Path(),

          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          Path(),

          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',difficulty: 2,
      paths:[
          HingeRight.changeBeats(2),

          Path(),

          HingeRight.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',difficulty: 2,
      paths:[
          HingeLeft.changeBeats(2),

          Path(),

          HingeLeft.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',difficulty: 2,
      paths:[
          Path(),

          Path(),

          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Very Centers Hinge',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',difficulty: 2,
      paths:[
          Path(),

          Path(),

          HingeLeft.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Very Centers Hinge',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',difficulty: 2,
      paths:[
          Path(),

          Path(),

          HingeRight.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Very Centers Hinge',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',difficulty: 2,
      paths:[
          Path(),

          Path(),

          Path(),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Very Centers Hinge',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          Path(),

          Path(),

          Path(),

          HingeLeft.changeBeats(2).changehands(5).scale(1.0,0.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          HingeRight.changeBeats(3).changehands(6).scale(3.0,3.0),

          HingeRight.changeBeats(3).changehands(7).scale(1.0,1.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(3).changehands(7).scale(1.0,1.0),

          HingeLeft.changeBeats(3).changehands(5).scale(3.0,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          HingeRight.changeBeats(3).changehands(6).scale(1.5,3.0),

          HingeRight.changeBeats(3).changehands(7).scale(0.5,1.0),

          HingeRight.changeBeats(3).changehands(7).scale(0.5,1.0),

          HingeRight.changeBeats(3).changehands(6).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(3).changehands(5).scale(1.5,3.0),

          HingeLeft.changeBeats(3).changehands(7).scale(0.5,1.0),

          HingeLeft.changeBeats(3).changehands(7).scale(0.5,1.0),

          HingeLeft.changeBeats(3).changehands(5).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',difficulty: 1,
      paths:[
          HingeRight.changeBeats(3).changehands(6).scale(3.0,1.5),

          HingeRight.changeBeats(3).changehands(7).scale(1.0,0.5),

          HingeRight.changeBeats(3).changehands(7).scale(1.0,0.5),

          HingeRight.changeBeats(3).changehands(6).scale(3.0,1.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TwomFacedTidalLineLH,
      difficulty: 1,noDisplay: true,
      paths:[
          HingeLeft.changeBeats(3).changehands(5).scale(3.0,1.5),

          HingeLeft.changeBeats(3).changehands(7).scale(1.0,0.5),

          HingeLeft.changeBeats(3).changehands(7).scale(1.0,0.5),

          HingeLeft.changeBeats(3).changehands(5).scale(3.0,1.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(3).changehands(1).skew(-0.5,3.0),

          QuarterLeft.changeBeats(3).changehands(2).skew(-1.5,1.0),

          HingeRight.changeBeats(3).changehands(1).scale(0.5,1.0),

          HingeRight.changeBeats(3).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.NormalLines,
      from:'Lines Facing In',difficulty: 2,noDisplay: true,
      paths:[
          HingeRight.changeBeats(3).scale(1.5,3.0),

          HingeRight.changeBeats(3).changehands(1).scale(0.5,1.0),

          QuarterLeft.changeBeats(3).changehands(2).skew(-1.5,1.0),

          QuarterLeft.changeBeats(3).changehands(1).skew(-0.5,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',difficulty: 2,
      paths:[
          HingeRight.changeBeats(3).scale(3.0,1.5),

          HingeRight.changeBeats(3).changehands(1).scale(1.0,0.5),

          QuarterLeft.changeBeats(3).changehands(2).skew(-3.0,0.5),

          QuarterLeft.changeBeats(3).changehands(1).skew(-1.0,1.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TidalLineLH,
      from:'Tidal Line LH',difficulty: 2,noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(3).changehands(2).skew(-3.0,0.5),

          QuarterLeft.changeBeats(3).changehands(1).skew(-1.0,1.5),

          HingeRight.changeBeats(3).scale(3.0,1.5),

          HingeRight.changeBeats(3).changehands(1).scale(1.0,0.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',difficulty: 2,
      paths:[
          HingeRight.changeBeats(3).scale(3.0,1.5),

          HingeRight.changeBeats(3).changehands(3).scale(1.0,0.5),

          HingeRight.changeBeats(3).changehands(3).scale(1.0,0.5),

          HingeRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Two-Faced Tidal Line LH',difficulty: 2,noDisplay: true,
      paths:[
          HingeLeft.changeBeats(3).scale(3.0,1.5),

          HingeLeft.changeBeats(3).changehands(3).scale(1.0,0.5),

          HingeLeft.changeBeats(3).changehands(3).scale(1.0,0.5),

          HingeLeft.changeBeats(3).scale(3.0,1.5)
      ]),
  ];

