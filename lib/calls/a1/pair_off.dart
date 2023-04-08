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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> PairOff = [

    AnimatedCall('Pair Off',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          LeadLeft.changeBeats(2).scale(0.5,0.5),

          LeadRight.changeBeats(2).scale(0.5,0.5)
      ]),

    AnimatedCall('Pair Off',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterLeft.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Pair Off',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      from:'Eight Chain Thru',
      paths:[
          QuarterLeft.changeBeats(2).skew(0.0,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0),

          QuarterLeft.changeBeats(2).skew(0.0,1.0),

          QuarterRight.changeBeats(2).skew(0.0,-1.0)
      ]),

    AnimatedCall('Heads Pair Off',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          Forward.changeBeats(1.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0),

          Forward.changeBeats(1.5) +
          QuarterRight.changeBeats(2.5).skew(1.0,0.0),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Pair Off',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          Path(),

          Path(),

          Forward.changeBeats(1.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0),

          Forward.changeBeats(1.5) +
          QuarterRight.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('As Couples Pair Off',
      formation:Formations.NormalLines,
      from:'Lines',group:' ',
      paths:[
          BackHingeRight,

          HingeLeft,

          HingeRight,

          BackHingeLeft
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 4 Couples Pair Off').first.xref(title: 'All 4 Couples Pair Off').xref(group: ' '),
  ];

