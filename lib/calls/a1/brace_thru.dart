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

  final List<AnimatedCall> BraceThru = [

    AnimatedCall('Brace Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
  ]),
      from:'Lines, Boys Ends',isGenderSpecific:true,parts:'3',
      paths:[
          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BeauWheel,

          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BelleWheel,

          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          UmTurnLeft,

          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          UmTurnRight
      ]),

    AnimatedCall('Brace Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
  ]),
      from:'Lines, Girls Ends',isGenderSpecific:true,parts:'3',
      paths:[
          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          UmTurnRight,

          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          UmTurnLeft,

          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BelleWheel,

          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BeauWheel
      ]),

    AnimatedCall('Brace Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ]),
      from:'Eight Chain Thru',isGenderSpecific:true,parts:'3',
      paths:[
          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          UmTurnRight,

          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          UmTurnLeft,

          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          BeauWheel,

          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          BelleWheel
      ]),

    AnimatedCall('Brace Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
  ]),
      from:'Eight Chain Thru',isGenderSpecific:true,parts:'3',noDisplay: true,
      paths:[
          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0),

          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0),

          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          UmTurnRight,

          PullLeft.changeBeats(1.5).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          UmTurnLeft
      ]),
  ];

