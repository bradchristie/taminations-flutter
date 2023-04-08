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

  final List<AnimatedCall> InRollCirculate = [

    AnimatedCall('In-Roll Circulate',
      formation:Formations.OceanWavesRHBGGBCompact,
      from:'Right-Hand Waves',fractions:'2',
      paths:[
          Forward_3.changeBeats(4),

          FlipRight.changeBeats(4),

          FlipLeft.changeBeats(4),

          FlipRight.changeBeats(4)
      ]),

    AnimatedCall('In-Roll Circulate',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',fractions:'2',
      paths:[
          FlipLeft.changeBeats(4),

          FlipRight.changeBeats(4),

          FlipLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('In-Roll Circulate',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',fractions:'2',
      paths:[
          Forward_4,

          FlipLeft.changeBeats(4),

          FlipRight.changeBeats(4),

          FlipRight.changeBeats(4)
      ]),

    AnimatedCall('In-Roll Circulate',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',fractions:'2',
      paths:[
          FlipLeft.changeBeats(4),

          FlipLeft.changeBeats(4),

          FlipRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('In-Roll Circulate',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',fractions:'2',
      paths:[
          FlipLeft.changeBeats(4),

          FlipRight.changeBeats(4),

          FlipRight.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('In-Roll Circulate',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',fractions:'2',
      taminator: '''
      There are 8 different 3 and 1 lines, but only half of them
      have the ends in tandem required for In-Roll Circulate.
    ''',
      paths:[
          Forward_4,

          FlipLeft.changeBeats(4),

          FlipLeft.changeBeats(4),

          FlipRight.changeBeats(4)
      ]),

    AnimatedCall('In-Roll Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines #5',fractions:'2',
      taminator: '''
      This is the third illustrated example in the defintion.
    ''',
      paths:[
          Forward_4,

          FlipRight.changeBeats(4),

          FlipRight.changeBeats(4),

          FlipRight.changeBeats(4)
      ]),

    AnimatedCall('In-Roll Circulate',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',fractions:'2',
      paths:[
          FlipLeft.changeBeats(4),

          FlipLeft.changeBeats(4),

          FlipLeft.changeBeats(4),

          Forward_4
      ]),

    AnimatedCall('Out-Roll Circulate',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',fractions:'3',
      paths:[
          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Out-Roll Circulate',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',fractions:'3',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          FlipLeft.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6)
      ]),

    AnimatedCall('Out-Roll Circulate',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',fractions:'3',
      paths:[
          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Out-Roll Circulate',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',fractions:'3',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6)
      ]),

    AnimatedCall('Out-Roll Circulate',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',fractions:'3',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6)
      ]),

    AnimatedCall('Out-Roll Circulate',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',fractions:'3',
      taminator: '''
      There are 8 different 3 and 1 lines, but only half of them
      have the ends in tandem required for Out-Roll Circulate.
    ''',
      paths:[
          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Out-Roll Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines #5',fractions:'3',
      taminator: '''
      This is the third illustrated example in the defintion.
    ''',
      paths:[
          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6),

          FlipLeft.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Out-Roll Circulate',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',fractions:'3',
      paths:[
          RunLeft.changeBeats(6).scale(2.0,3.0),

          FlipRight.changeBeats(6),

          FlipRight.changeBeats(6),

          FlipLeft.changeBeats(6)
      ]),
  ];

