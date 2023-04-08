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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> SwapAround = [ 

    AnimatedCall('Swap Around',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',fractions:'2',
      paths:[
          FlipRight.changeBeats(4),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Swap Around',
      formation:Formations.FacingCouplesClose,
      from:'Facing Couples Close',fractions:'2',noDisplay: true,
      paths:[
          FlipRight.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Swap Around',
      formation:Formations.FacingCouplesFar,
      from:'Facing Couples',fractions:'2',noDisplay: true,
      paths:[
          FlipRight.changeBeats(4),

          Forward_6.changeBeats(4)
      ]),

    AnimatedCall('Swap Around',
      formation:Formations.NormalLines,
      from:'Normal Lines',fractions:'2',
      paths:[
          FlipRight.changeBeats(4),

          Forward_4,

          FlipRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Swap Around',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',fractions:'2',
      paths:[
          FlipRight.changeBeats(4),

          Forward_2.changeBeats(4),

          FlipRight.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Half Swap Around',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',noDisplay: true,
      paths:[
          QuarterRight.changeBeats(2).skew(-2.0,-1.0),

          Path(),

          QuarterRight.changeBeats(2).skew(0.0,-1.0),

          Forward_2
      ]),

    AnimatedCall('As Couples Swap Around',
      formation:Formations.NormalLines,
      from:'Normal Lines',group:' ',fractions:'2',
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(1.0,3.0),

          FlipRight.changeBeats(4).changehands(5),

          Forward_4.changehands(2),

          Forward_4.changehands(1)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Swap Around').first.xref(title: 'All 8 Swap Around').xref(group: ' '),

    AnimatedCall('Reverse Swap Around',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',fractions:'2',
      paths:[
          Forward_3.changeBeats(4),

          FlipLeft.changeBeats(4)
      ]),

    AnimatedCall('Reverse Swap Around',
      formation:Formations.FacingCouplesClose,
      from:'Facing Couples Close',fractions:'2',noDisplay: true,
      paths:[
          Forward_2.changeBeats(4),

          FlipLeft.changeBeats(4)
      ]),

    AnimatedCall('Reverse Swap Around',
      formation:Formations.FacingCouplesFar,
      from:'Facing Couples Far',fractions:'2',noDisplay: true,
      paths:[
          Forward_6.changeBeats(4),

          FlipLeft.changeBeats(4)
      ]),

    AnimatedCall('Reverse Swap Around',
      formation:Formations.NormalLines,
      from:'Normal Lines',fractions:'2',
      paths:[
          Forward_4,

          FlipLeft.changeBeats(4),

          Forward_4,

          FlipLeft.changeBeats(4)
      ]),

    AnimatedCall('Reverse Swap Around',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',fractions:'2',
      paths:[
          Forward_2.changeBeats(4),

          FlipLeft.changeBeats(4),

          Forward_2.changeBeats(4),

          FlipLeft.changeBeats(4)
      ]),

    AnimatedCall('Half Reverse Swap Around',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',noDisplay: true,
      paths:[
          Path(),

          QuarterLeft.changeBeats(2).skew(-2.0,1.0),

          Forward_2,

          QuarterLeft.changeBeats(2).skew(0.0,1.0)
      ]),

    AnimatedCall('As Couples Reverse Swap Around',
      formation:Formations.NormalLines,
      from:'Normal Lines',group:' ',fractions:'2',
      paths:[
          Forward_4.changehands(2),

          Forward_4.changehands(1),

          FlipLeft.changeBeats(4).changehands(6),

          RunLeft.changeBeats(4).changehands(5).scale(1.0,3.0)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Reverse Swap Around').first.xref(title: 'All 8 Reverse Swap Around').xref(group: ' '),
  ];

