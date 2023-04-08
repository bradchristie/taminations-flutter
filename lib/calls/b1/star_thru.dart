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

  final List<AnimatedCall> StarThru = [

    AnimatedCall('Star Thru',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).changehands(6).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).changehands(6).skew(1.0,0.0),

          ExtendLeft.changeBeats(2).changehands(6).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).changehands(6).skew(1.0,-1.0)
      ]),

    AnimatedCall('Star Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
  ]),
      from:'Sashayed Couples',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).changehands(6).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).changehands(6).skew(1.0,-1.0),

          ExtendLeft.changeBeats(2).changehands(6).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).changehands(6).skew(1.0,0.0)
      ]),

    AnimatedCall('Star Thru',
      formation:Formations.NormalLines,
      from:'Lines',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).changehands(6).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).changehands(6).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).changehands(6).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).changehands(6).skew(1.0,-0.5)
      ]),

    AnimatedCall('Star Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
  ]),
      from:'Sashayed Lines',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).changehands(6).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).changehands(6).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).changehands(6).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).changehands(6).skew(1.0,-0.5)
      ]),

    AnimatedCall('Star Thru',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',isGenderSpecific:true,
      paths:[
          ExtendLeft.changehands(6).scale(1.0,0.5) +
          QuarterRight.changehands(6).skew(1.0,0.5),

          ExtendLeft.changehands(6).scale(1.0,0.5) +
          QuarterLeft.changehands(6).skew(1.0,-1.5),

          ExtendLeft.changehands(6).scale(1.0,0.5) +
          QuarterRight.changehands(6).skew(1.0,0.5),

          ExtendLeft.changehands(6).scale(1.0,0.5) +
          QuarterLeft.changehands(6).skew(1.0,-1.5)
      ]),

    AnimatedCall('Heads Star Thru',
      formation:Formations.StaticSquare,
      group:' ',isGenderSpecific:true,
      paths:[
          ExtendLeft.changeBeats(3).changehands(6).scale(3.0,0.5) +
          QuarterRight.changeBeats(2).changehands(6).skew(1.0,-0.5),

          ExtendLeft.changeBeats(3).changehands(6).scale(3.0,0.5) +
          QuarterLeft.changehands(6).skew(1.0,-0.5),

          Path(),

          Path()
      ]),
  ];

