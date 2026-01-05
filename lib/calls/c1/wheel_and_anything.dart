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

  final List<AnimatedCall> WheelAndAnything = [

    AnimatedCall('_Wheel',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',isPerimeter:true,noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(2.0,3.0) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).changehands(Hands.GRIPLEFT).scale(3.0,1.0),

          LeadLeft.changeBeats(3).changehands(Hands.RIGHT) +
          LeadLeft.changeBeats(3).changehands(Hands.RIGHT) +
          QuarterLeft.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(1.0,0.0)
      ]),

    AnimatedCall('Reverse _Wheel',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',isPerimeter:true,noDisplay: true,
      paths:[
          LeadRight.changeBeats(3).changehands(Hands.LEFT) +
          LeadRight.changeBeats(3).changehands(Hands.LEFT) +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,3.0) +
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,2.0) +
          LeadRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(3.0,1.0)
      ]),

    AnimatedCall('Wheel And Spin the Top',
      formation:Formation('Trade By'),
      from:'Trade By',group:'Wheel And',
      paths:[
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.0,1.0),

          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,1.0) +
          LeadLeft.changeBeats(3) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0),

          Forward.changeBeats(2) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Wheel And Touch 1/4',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
  ]),
      from:'Trade By',group:'Wheel And',
      paths:[
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.0,3.0) +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.0,1.0),

          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,1.0) +
          LeadLeft.changeBeats(3) +
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Reverse Wheel and Touch a Quarter',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
  ]),
      from:'Trade By',group:'Reverse Wheel and',
      paths:[
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(0.0,-1.0) +
          LeadRight.changeBeats(3) +
          QuarterRight.changeBeats(3).changehands(Hands.LEFT).skew(1.0,0.0),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(1.0,3.0) +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.0),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),
  ];

