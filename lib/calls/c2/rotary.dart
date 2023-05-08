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

  final List<AnimatedCall> Rotary = [

    AnimatedCall('Rotary Explode the Wave',
      formation:Formation('Eight Chain Thru'),
      group:'Rotary',parts:'2',
      paths:[
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          Forward.changeBeats(2) +
          LeadRight.changeBeats(3).changehands(2).scale(1.5,2.0) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          LeadLeft.changeBeats(3).changehands(2).scale(0.5,2.0) +
          ExtendRight.changeBeats(2).scale(3.0,0.5),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel +
          QuarterLeft.skew(0.0,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel +
          QuarterLeft.skew(0.0,-1.0)
      ]),

    AnimatedCall('Rotary Mix',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
  ]),
      group:'Rotary',
      paths:[
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          Forward.changeBeats(2) +
          RunRight.scale(1.0,2.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          DodgeLeft +
          SwingLeft,

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel +
          QuarterLeft.skew(0.0,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel +
          QuarterLeft.skew(0.0,-1.0)
      ]),

    AnimatedCall('Rotary Trade the Wave',
      formation:Formation('Eight Chain Thru'),
      group:'Rotary',
      paths:[
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          Forward.changeBeats(2) +
          RunRight.changeBeats(6).scale(1.5,2.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          RunLeft.changeBeats(6).scale(0.5,2.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel +
          QuarterLeft.skew(0.0,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel +
          QuarterLeft.skew(0.0,-1.0)
      ]),
  ];

