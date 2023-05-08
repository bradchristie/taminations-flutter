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

  final List<AnimatedCall> FlareOutToALine = [

    AnimatedCall('Flare Out to a Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          ExtendRight.changeBeats(3).changehands(2).scale(2.0,1.5),

          ExtendRight.changeBeats(3).changehands(1).scale(2.0,0.5),

          FlipLeft.changeBeats(3).skew(-2.0,-0.5),

          FlipLeft.changeBeats(3).skew(-2.0,-1.5)
      ]),

    AnimatedCall('Flare Out to a Line',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
  ]),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          FlipRight.changeBeats(3).skew(-2.0,1.5),

          FlipRight.changeBeats(3).skew(-2.0,0.5),

          ExtendLeft.changeBeats(3).changehands(1).scale(2.0,0.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(2.0,1.5)
      ]),
  ];

