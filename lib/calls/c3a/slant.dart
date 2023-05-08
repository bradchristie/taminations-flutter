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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> Slant = [

    AnimatedCall('Slant Touch and Wheel',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          Forward_2.changeBeats(3),

          ExtendRight.changeBeats(3).scale(2.0,2.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(2).scale(1.5,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Slant Touch and Wheel',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(1.5,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(1.0,0.0),

          ExtendLeft.changeBeats(4).scale(2.0,4.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Slant Veer Right by Turn and Deal',
      formation:Formation('Two-Faced Lines RH'),
      group:'Slant',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).scale(1.0,2.0) +
          ExtendRight.changeBeats(2).changehands(2).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(1).scale(1.0,2.0) +
          ExtendRight.changeBeats(2).changehands(1).scale(1.0,2.0),

          LeadRight +
          QuarterRight.skew(1.0,0.0),

          LeadRight +
          QuarterRight.skew(1.0,0.0)
      ]),
  ];

