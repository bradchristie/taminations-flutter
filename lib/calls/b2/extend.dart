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

  final List<AnimatedCall> Extend = [

    AnimatedCall('Extend',
      formation:Formations.SingleQuarterTag,
      from:'Single Quarter Tag',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2),

          Forward_2
      ]),

    AnimatedCall('Extend',
      formation:Formations.SingleLeftQuarterTag,
      from:'Single Left Quarter Tag',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2),

          Forward_2
      ]),

    AnimatedCall('Extend',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',difficulty: 2,
      paths:[
          Forward_2,

          ExtendRight.changeBeats(2)
      ]),

    AnimatedCall('Extend',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2),

          Forward_2
      ]),

    AnimatedCall('Extend',
      formation:Formations.Single_34Tag,
      from:'Single 3/4 Tag',difficulty: 2,
      paths:[
          Path(),

          ExtendRight.changeBeats(2)
      ]),

    AnimatedCall('Extend',
      formation:Formations.SingleLeft_34Tag,
      from:'Single Left 3/4 Tag',difficulty: 2,
      paths:[
          Path(),

          ExtendLeft.changeBeats(2)
      ]),

    AnimatedCall('Extend',
      formation:Formations.SingleDoublePassThru,
      from:'Single Double Pass Thru',difficulty: 2,
      paths:[
          Path(),

          ExtendLeft.changeBeats(2)
      ]),

    AnimatedCall('Extend',
      formation:Formations.QuarterTag,
      from:'Right-Hand 1/4 Tag',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          Forward_2,

          Forward_2
      ]),

    AnimatedCall('Extend',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand 1/4 Tag',difficulty: 2,
      paths:[
          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward_2,

          Forward_2
      ]),

    AnimatedCall('Extend',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',difficulty: 2,
      paths:[
          Path(),

          Path(),

          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2)
      ]),

    AnimatedCall('Extend',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          Forward_2,

          Forward,

          Forward_2,

          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Extend',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward_2,

          Forward,

          Forward_2
      ]),

    AnimatedCall('Extend',
      formation:Formations.n34Tag,
      from:'3/4 Tag',difficulty: 2,
      paths:[
          Path(),

          Path(),

          ExtendRight.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2)
      ]),

    AnimatedCall('Extend',
      formation:Formations.n34TagLH,
      from:'Left-Hand 3/4 Tag',difficulty: 2,
      paths:[
          Path(),

          Path(),

          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2)
      ]),

    AnimatedCall('Extend',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.5,angle:90),
  ]),
      from:'Tidal Quarter Tag',difficulty: 3,
      paths:[
          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(0.5,1.0),

          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Extend',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.5,angle:90),
  ]),
      from:'Tidal Left Quarter Tag',difficulty: 3,
      paths:[
          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(0.5,1.0),

          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Extend',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(2).scale(0.5,1.0),

          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(0.5,1.0),

          Forward.changeBeats(2)
      ]),

    AnimatedCall('Extend',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',difficulty: 3,
      paths:[
          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(0.5,1.0),

          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Extend',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.5,angle:270),
  ]),
      from:'Tidal 3/4 Tag',difficulty: 3,
      paths:[
          ExtendRight.changeBeats(2).scale(0.5,1.0),

          Path(),

          ExtendRight.changeBeats(2).scale(0.5,1.0),

          Path()
      ]),

    AnimatedCall('Extend',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3.5,angle:270),
  ]),
      from:'Tidal Left 3/4 Tag',difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(2).scale(0.5,1.0),

          Path(),

          ExtendLeft.changeBeats(2).scale(0.5,1.0),

          Path()
      ]),
  ];

