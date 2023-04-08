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

  final List<AnimatedCall> Checkover = [

    AnimatedCall('Checkover',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:90),
  ]),
      from:'Right-Hand Columns',
      paths:[
          FlipRight.changeBeats(2).scale(1.0,1.5) +
          Forward_5 +
          QuarterRight.skew(1.0,0.0),

          Forward_2 +
          FlipRight.changeBeats(2).scale(1.0,1.5) +
          Forward_3 +
          QuarterRight.skew(1.0,0.0),

          Forward_2 +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.75,0.5) +
          LeadRight.changeBeats(2).scale(2.0,0.75) +
          Forward_2.changehands(1),

          Forward_2 +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(0.75,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.75) +
          ExtendLeft.changeBeats(2).changehands(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Checkover',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          Forward_2 +
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.75,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.75) +
          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5),

          Forward_2 +
          HingeLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.75,0.5) +
          LeadLeft.changeBeats(2).scale(2.0,0.75) +
          Forward_2.changehands(2),

          Forward_2 +
          FlipLeft.changeBeats(2).scale(1.0,1.5) +
          Forward_3 +
          QuarterLeft.skew(1.0,0.0),

          FlipLeft.changeBeats(2).scale(1.0,1.5) +
          Forward_5 +
          QuarterLeft.skew(1.0,0.0)
      ]),
  ];

