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

  final List<AnimatedCall> PatchAnyone = [

    AnimatedCall('Patch the Centers',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
  ]),
      group:' ',parts:'1.5',
      paths:[
          QuarterLeft.skew(-0.5,1.0),

          LeadRight.scale(0.5,1.0),

          QuarterLeft.skew(-0.5,1.0) +
          UmTurnLeft,

          LeadRight.scale(0.5,1.0) +
          UmTurnRight
      ]),

    AnimatedCall('Patch the Leaders',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',parts:'1.5',
      paths:[
          HingeRight,

          HingeRight +
          UmTurnRight,

          HingeRight,

          HingeRight +
          UmTurnRight
      ]),

    AnimatedCall('Patch the Boys',
      formation:Formation('Lines Facing Out'),
      group:' ',isGenderSpecific:true,parts:'1.5',
      paths:[
          QuarterLeft.skew(-1.0,1.0),

          LeadRight +
          UmTurnRight,

          QuarterLeft.skew(-1.0,1.0),

          LeadRight +
          UmTurnRight
      ]),
  ];

