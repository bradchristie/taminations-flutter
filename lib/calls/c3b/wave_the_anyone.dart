/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> WaveTheAnyone = [

    AnimatedCall('Wave the Beaus',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
  ]),
      group:' ',parts:'2',
      paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
          Forward_4,

          Forward.changeBeats(2).changehands(Hands.LEFT) +
          DodgeLeft.changeBeats(4),

          Forward_2.changehands(Hands.RIGHT) +
          RunRight.scale(1.0,1.5).skew(1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          Forward_2.changehands(Hands.LEFT) +
          QuarterLeft.changeBeats(2).skew(0.0,1.0) +
          Forward_2
      ]),

    AnimatedCall('Wave the Belles',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      group:' ',parts:'2',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          DodgeRight,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          Forward_2,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight.skew(0.0,-1.0) +
          Forward,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunLeft.skew(1.0,0.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Wave the Boys',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
  ]),
      group:' ',isGenderSpecific:true,parts:'2',
      paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
          Forward_4,

          Forward.changeBeats(2).changehands(Hands.LEFT) +
          DodgeLeft.changeBeats(4),

          Forward_2.changehands(Hands.RIGHT) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          Forward_2,

          Forward_2.changehands(Hands.LEFT) +
          RunLeft.scale(1.0,1.5).skew(1.0,0.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Wave the Girls',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
  ]),
      group:' ',isGenderSpecific:true,parts:'2',
      paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
          DodgeRight.changeBeats(4),

          Forward.changeBeats(2).changehands(Hands.LEFT) +
          Forward_4,

          Forward_2.changehands(Hands.RIGHT) +
          RunRight.scale(1.0,1.5).skew(1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          Forward_2.changehands(Hands.LEFT) +
          QuarterLeft.changeBeats(2).skew(0.0,1.0) +
          Forward_2
      ]),
  ];

