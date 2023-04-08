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

  final List<AnimatedCall> DoubleStarThru = [ 

    AnimatedCall('Double Star Thru',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',isGenderSpecific:true,parts:'3',
      paths:[
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.5,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,1.0),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.5,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-1.0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Double Star Thru',
      formation:Formations.NormalLines,
      from:'Lines',isGenderSpecific:true,parts:'3',
      paths:[
          ExtendLeft.changeBeats(1.5).changehands(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,1.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,1.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5)
      ]),

    AnimatedCall('Double Star Thru',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',isGenderSpecific:true,parts:'3',
      paths:[
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-1.0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-1.0) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.5,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 4 Couples Double Star Thru').first.xref(title: 'All 4 Couples Double Star Thru').xref(group: ' '),

    AnimatedCall('Triple Star Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      from:'Double Pass Thru',isGenderSpecific:true,parts:'3;3',
      paths:[
          Stand.changeBeats(6) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-1.5),

          Stand.changeBeats(6) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-1.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5)
      ]),

    AnimatedCall('Triple Star Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
  ]),
      from:'Eight Chain Thru',isGenderSpecific:true,parts:'3;3',
      paths:[
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.5)
      ]),
  ];

