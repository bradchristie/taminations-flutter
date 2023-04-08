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

  final List<AnimatedCall> Zoom = [

    AnimatedCall('Zoom',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',fractions:'3',difficulty: 2,
      paths:[
          Forward_4.changeBeats(6),

          RunLeft.skew(-2.0,0.0) +
          RunLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Zoom',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',fractions:'3',difficulty: 2,
      paths:[
          RunRight.skew(-2.0,0.0) +
          RunRight.skew(2.0,0.0),

          Forward_4.changeBeats(6)
      ]),

    AnimatedCall('Zoom',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',fractions:'2',difficulty: 2,
      paths:[
          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4).changehands(1),

          Forward_2.changeBeats(4).changehands(2)
      ]),

    AnimatedCall('Zoom',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',fractions:'2',difficulty: 1,
      paths:[
          Forward_2.changeBeats(4).changehands(2),

          Forward_2.changeBeats(4).changehands(1),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Zoom',
      formation:Formations.ColumnRHGBGB,
      from:'Columns',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Zoom',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',fractions:'2',difficulty: 2,
      paths:[
          Forward_2.changeBeats(4),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Zoom',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
  ]),
      from:'T-Bones',fractions:'2',difficulty: 3,
      paths:[
          Forward_2.changeBeats(4),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Centers Zoom',
      formation:Formations.ColumnRHGBGB,
      from:'Columns',fractions:'2',difficulty: 2,
      paths:[
          Path(),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Ends Zoom',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',fractions:'3',difficulty: 2,
      paths:[
          Forward_4.changeBeats(6),

          Path(),

          Path(),

          RunLeft.skew(-2.0,0.0) +
          RunLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Points Zoom',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',fractions:'3',difficulty: 2,
      paths:[
          Path(),

          Forward_4.changeBeats(6),

          Path(),

          RunLeft.skew(-2.0,0.0) +
          RunLeft.skew(2.0,0.0)
      ]),
  ];
