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

  final List<AnimatedCall> AnyoneHop = [

    AnimatedCall('Beaus Hop',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:2,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
  ]),
      group:' ',parts:'4',
      paths:[
          Forward_4 +
          HingeRight,

          DodgeLeft.changeBeats(4) +
          HingeRight
      ]),

    AnimatedCall('Trailers Hop',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
  ]),
      group:' ',parts:'4',
      paths:[
          DodgeLeft.changeBeats(4) +
          LeadRight,

          Forward_4 +
          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0)
      ]),

    AnimatedCall('Everybody Hop',
      formation:Formation('Facing Couples Compact'),
      group:' ',parts:'4',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          LeadRight,

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0)
      ]),

    AnimatedCall('Nobody Hop',
      formation:Formation('Box RH'),
      group:' ',parts:'3',
      paths:[
          BackSashayRight.scale(1.5,1.0) +
          HingeLeft,

          BackSashayRight.scale(1.5,1.0) +
          HingeLeft
      ]),

    AnimatedCall('Boys Hop',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',isGenderSpecific:true,parts:'4',
      paths:[
          Forward_4 +
          HingeRight,

          DodgeLeft.changeBeats(4) +
          HingeRight,

          Forward_4 +
          HingeRight,

          DodgeLeft.changeBeats(4) +
          HingeRight
      ]),

    AnimatedCall('Magic Column Boys Hop',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
  ]),
      group:' ',isGenderSpecific:true,parts:'3',
      paths:[
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          LeadRight.scale(0.5,1.0),

          DodgeRight.changeBeats(4) +
          QuarterLeft.changeBeats(1.5).skew(-0.5,1.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          QuarterLeft.changeBeats(1.5).skew(-0.5,1.0),

          DodgeLeft.changeBeats(4) +
          LeadRight.scale(0.5,1.0)
      ]),
  ];

