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

  final List<AnimatedCall> FileToALine = [

    AnimatedCall('File to a Line',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          DodgeLeft.skew(-1.0,0.0),

          RunRight.skew(1.0,0.0),

          Forward_3,

          DodgeLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          DodgeRight.skew(1.0,0.0),

          Forward_3,

          RunLeft.skew(1.0,0.0),

          DodgeRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          RunRight.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.TradeBy,
      from:'Trade By',
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          DodgeRight.skew(1.0,0.0),

          RunRight.skew(1.0,0.0),

          Forward_3,

          DodgeRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns, Left-Hand Centers',
      paths:[
          DodgeLeft.skew(-1.0,0.0),

          Forward_3,

          RunLeft.skew(1.0,0.0),

          DodgeLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MixedColumnsRHEndsIn,
      from:'Mixed Columns #1',noDisplay: true,
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          Forward_3,

          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MixedColumnsLHEndsIn,
      from:'Mixed Columns #2',noDisplay: true,
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          RunLeft.skew(1.0,0.0),

          Forward_3
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MixedColumnsRHEndsOut,
      from:'Mixed Columns #3',noDisplay: true,
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          Forward_3,

          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MixedColumnsLHEndsOut,
      from:'Mixed Columns #4',noDisplay: true,
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          RunLeft.skew(1.0,0.0),

          Forward_3
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MixedColumnsRHCentersIn,
      from:'Mixed Columns #5',noDisplay: true,
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MixedColumnsLHCentersIn,
      from:'Mixed Columns #6',noDisplay: true,
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MixedColumnsRHCentersOut,
      from:'Mixed Columns #7',noDisplay: true,
      paths:[
          DodgeLeft.skew(1.0,0.0),

          DodgeLeft.skew(-1.0,0.0),

          FlipLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('File to a Line',
      formation:Formations.MixedColumnsLHCentersOut,
      from:'Mixed Columns #8',noDisplay: true,
      paths:[
          DodgeRight.skew(-1.0,0.0),

          DodgeRight.skew(1.0,0.0),

          FlipLeft +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunRight +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Magic Column File to a Line',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
  ]),
      group:' ',
      paths:[
          DodgeRight.skew(-1.0,0.0),

          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(3).scale(1.0,2.0),

          DodgeRight.skew(1.0,0.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          RunLeft.skew(-1.0,0.0)
      ]),
  ];

