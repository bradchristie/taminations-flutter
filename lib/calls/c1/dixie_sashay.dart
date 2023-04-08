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

  final List<AnimatedCall> DixieSashay = [ 

    AnimatedCall('Dixie Sashay',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1.5,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1.5,angle:270),
  ]),
      from:'Facing Couples',
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.changeBeats(3).scale(2.5,0.75),

          ExtendLeft.changeBeats(2).changehands(2).skew(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.25) +
          HingeLeft.scale(1.5,0.75)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
  ]),
      from:'Facing Couples Close',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.changeBeats(3).scale(1.5,0.75),

          ExtendLeft.changeBeats(2).changehands(2).skew(0.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,1.25) +
          HingeLeft.scale(0.5,0.75)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formations.TandemGirlsLead,
      from:'Tandem',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.changeBeats(3).scale(3.0,0.75),

          ExtendLeft.changeBeats(2).changehands(2).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75),

          DodgeRight.changeBeats(4).scale(1.0,0.875) +
          HingeLeft.changeBeats(3).scale(3.0,0.75),

          ExtendLeft.changeBeats(2).changehands(2).skew(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.25) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          DodgeRight.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeLeft.changeBeats(2).scale(1.8,0.75),

          ExtendLeft.changeBeats(2).changehands(2).scale(1.15,1.5) +
          ExtendRight.changeBeats(2).scale(1.15,1.25) +
          QuarterLeft.changehands(1).skew(0.2,0.75),

          DodgeRight.scale(1.0,0.875).skew(-0.3,0.0) +
          Stand +
          HingeLeft.changeBeats(2).scale(1.8,0.75),

          ExtendLeft.changeBeats(2).changehands(2).scale(1.15,1.5) +
          ExtendRight.changeBeats(2).scale(1.15,1.25) +
          QuarterLeft.changehands(1).skew(0.2,0.75)
      ]),

    AnimatedCall('Dixie Sashay',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          HingeLeft.scale(1.0,0.5),

          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          Forward_2 +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('All 8 Dixie Sashay',
      formation:Formations.StaticSquare,
      group:' ',
      paths:[
          ExtendRight.changeBeats(5).scale(1.0,1.75) +
          Forward_2.changehands(1).skew(0.0,-0.25) +
          HingeLeft,

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,2.0) +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75),

          ExtendRight.changeBeats(5).scale(1.0,1.75) +
          Forward_2.changehands(1).skew(0.0,-0.25) +
          HingeLeft,

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,2.0) +
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75)
      ]),
  ];

