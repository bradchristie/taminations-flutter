/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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
import '../../moves.dart';

  final List<AnimatedCall> ZigAndZag = [

    AnimatedCall('Zig Zag',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',
      paths:[
          QuarterLeft.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,-1.0),

          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,-1.0),

          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,-1.0),

          QuarterLeft.changeBeats(2).skew(0.0,1.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,1.0),

          QuarterRight.changeBeats(2).skew(0.0,1.0),

          QuarterLeft.changeBeats(2).skew(0.0,1.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          QuarterLeft.changeBeats(2).skew(0.0,-1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0),

          QuarterLeft.changeBeats(2).skew(0.0,-1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Zig Zag',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Zig',
      formation:Formation('3/4 Tag'),
      from:'Three Quarters Tag',
      taminator: '''Here the dancers adjust to form diamonds.
    ''',
      paths:[
          QuarterRight.skew(0.0,-1.0),

          QuarterRight.skew(0.0,1.0),

          Path(),

          Path()
      ]),

    AnimatedCall('As Couples Zig Zag',
      formation:Formation('Two-Faced Lines RH'),
      group:'As Couples',
      paths:[
          BackHingeRight,

          HingeLeft,

          BackHingeLeft,

          HingeRight
      ]),

    AnimatedCall('As Couples Zag Zig',
      formation:Formation('Two-Faced Lines RH'),
      group:'As Couples',
      paths:[
          HingeRight,

          BackHingeLeft,

          HingeLeft,

          BackHingeRight
      ]),
  ];

