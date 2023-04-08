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

  final List<AnimatedCall> ZigAndZag = [ 

    AnimatedCall('Zig Zag',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',
      paths:[
          QuarterLeft.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,-1.0),

          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,-1.0),

          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,-1.0),

          QuarterLeft.changeBeats(2).skew(0.0,1.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,1.0),

          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,1.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          QuarterLeft.changeBeats(2).skew(0.0,-1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0),

          QuarterLeft.changeBeats(2).skew(0.0,-1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Zig',
      formation:Formations.n34Tag,
      from:'Three Quarters Tag',
      paths:[
          QuarterRight.skew(0.0,-1.0),

          QuarterRight.skew(0.0,1.0),

          Path(),

          Path()
      ]),

    AnimatedCall('As Couples Zig Zag',
      formation:Formations.TwomFacedLinesRH,
      group:'As Couples',
      paths:[
          BackHingeRight,

          HingeLeft,

          BackHingeLeft,

          HingeRight
      ]),

    AnimatedCall('As Couples Zag Zig',
      formation:Formations.TwomFacedLinesRH,
      group:'As Couples',
      paths:[
          HingeRight,

          BackHingeLeft,

          HingeLeft,

          BackHingeRight
      ]),
  ];

