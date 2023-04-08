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

  final List<AnimatedCall> DoublePassThru = [

    AnimatedCall('Double Pass Thru',
      formation:Formations.SingleDoublePassThru,
      from:'Single Column',difficulty: 1,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Double Pass Thru',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',difficulty: 1,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Double Pass Thru',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',difficulty: 2,
      taminator: '''
      This is an example of the Ocean Wave rule.
    ''',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          Forward +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5),

          ExtendLeft.changeBeats(2.5).scale(2.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Double Pass Thru',
      formation:Formations.QuarterZRH,
      from:'Right-Hand Z Tag',noDisplay: true,
      paths:[
          Forward +
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          ExtendRight.changeBeats(4).scale(3.0,2.0),

          Forward_3.changeBeats(4),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Double Pass Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:0,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0.5,y:0,angle:0),
  ]),
      from:'Tidal Column',difficulty: 2,
      paths:[
          ExtendLeft.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(0.5,0.5),

          ExtendLeft.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(0.5,0.5),

          ExtendLeft.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(0.5,0.5),

          ExtendLeft.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Left Double Pass Thru',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',difficulty: 2,
      paths:[
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft.scale(1.0,0.5),

          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Double Pass Thru',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',difficulty: 3,
      taminator: '''
      This is an example of the Ocean Wave rule as applied to a Left-Hand Wave.
    ''',
      paths:[
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Forward +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5),

          ExtendRight.changeBeats(2.5).scale(2.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5),

          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          ExtendRight.changeBeats(2).scale(1.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Left Double Pass Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:0,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2.5,y:0,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:0,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0.5,y:0,angle:0),
  ]),
      from:'Tidal Column',difficulty: 3,
      paths:[
          ExtendRight.scale(0.5,0.5) +
          Forward +
          ExtendLeft.scale(0.5,0.5),

          ExtendRight.scale(0.5,0.5) +
          Forward +
          ExtendLeft.scale(0.5,0.5),

          ExtendRight.scale(0.5,0.5) +
          Forward +
          ExtendLeft.scale(0.5,0.5),

          ExtendRight.scale(0.5,0.5) +
          Forward +
          ExtendLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Boys on a Diagonal Double Pass Thru',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Forward.changeBeats(2).scale(2.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.5,2.0),

          Path(),

          ExtendRight.changeBeats(4).scale(4.0,2.0),

          Path()
      ]),

    AnimatedCall('Girls on a Diagonal Double Pass Thru',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Path(),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0),

          Path(),

          CrossLeft.changehands(0) +
          Forward_2
      ]),

    AnimatedCall('On a Diagonal Double Pass Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
  ]),
      from:'Beaus Only',noDisplay: true,
      paths:[
          Forward.changeBeats(2).scale(2.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.5,2.0),

          ExtendRight.changeBeats(4).scale(4.0,2.0)
      ]),

    AnimatedCall('On a Diagonal Double Pass Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      from:'Belles Only',noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0),

          CrossLeft.changehands(0) +
          Forward_2
      ]),
  ];

