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
import '../../moves.dart';

  final List<AnimatedCall> MiniBusy = [

    AnimatedCall('Mini-Busy',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      from:'Right-Hand Two-Faced Lines',parts:'2;1.5',
      paths:[
          Forward_2.changehands(2) +
          Stand.changeBeats(1.5) +
          FlipRight,

          Forward_2.changehands(1) +
          HingeRight +
          LeadRight.changeBeats(2.5).scale(3.0,1.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5) +
          QuarterRight,

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5) +
          QuarterRight
      ]),

    AnimatedCall('_Mini-Busy But',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      from:'Right-Hand Two-Faced Lines',parts:'2;1.5',noDisplay: true,
      paths:[
          Forward_2.changehands(2),

          Forward_2.changehands(1) +
          HingeRight,

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5) +
          QuarterRight,

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5) +
          QuarterRight
      ]),

    AnimatedCall('Mini-Busy',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'2;1.5',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5) +
          QuarterLeft,

          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5) +
          QuarterLeft,

          Forward_2.changehands(2) +
          HingeLeft +
          LeadLeft.changeBeats(2.5).scale(3.0,1.0),

          Forward_2.changehands(1) +
          Stand.changeBeats(1.5) +
          FlipLeft
      ]),

    AnimatedCall('_Mini-Busy But',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'2;1.5',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5) +
          QuarterLeft,

          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5) +
          QuarterLeft,

          Forward_2.changehands(2) +
          HingeLeft,

          Forward_2.changehands(1)
      ]),

    AnimatedCall('2/3 Mini-Busy',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
  ]),
      from:'Right-Hand Two-Faced Lines',parts:'2;1.5',noDisplay: true,
      paths:[
          Forward_2.changehands(2) +
          Stand.changeBeats(1.5),

          Forward_2.changehands(1) +
          HingeRight,

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5)
      ]),

    AnimatedCall('2/3 Mini-Busy',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'2;1.5',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5),

          QuarterLeft.changeBeats(2).skew(1.0,0.0) +
          Forward_2.changeBeats(1.5),

          Forward_2.changehands(2) +
          HingeLeft,

          Forward_2.changehands(1) +
          Stand.changeBeats(1.5)
      ]),
  ];

