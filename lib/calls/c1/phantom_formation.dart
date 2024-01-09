/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> PhantomFormation = [

    AnimatedCall('Phantom Acey Deucey',
      formation:Formation('Phantom Formation RH'),
      group:'Phantom',
      paths:[
          Forward_4,

          FlipLeft.changeBeats(4),

          Forward_4,

          FlipLeft.changeBeats(4),

          RunLeft.changeBeats(4),

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Phantom All 8 Circulate',
      formation:Formation('Phantom Formation RH'),
      group:'Phantom',
      paths:[
          Forward_4,

          FlipLeft.changeBeats(4),

          Forward_4,

          FlipLeft.changeBeats(4),

          Forward_4,

          RunRight.changeBeats(4).scale(2.0,3.0)
      ]),

    AnimatedCall('Phantom Bend the Lines',
      formation:Formation('Phantom Formation In'),
      group:'Phantom',
      paths:[
          HingeRight,

          BackHingeLeft,

          HingeRight,

          BackHingeLeft,

          BackHingeRight,

          HingeLeft
      ]),

    AnimatedCall('Phantom Couples Circulate',
      formation:Formation('Phantom Formation Two-Faced'),
      group:'Phantom',
      paths:[
          Forward_4.changehands(Hands.RIGHT),

          Forward_4.changehands(Hands.LEFT),

          RunLeft.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,1.0),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,3.0),

          RunRight.changeBeats(4).changehands(Hands.LEFT),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0)
      ]),

    AnimatedCall('Phantom Ferris Wheel',
      formation:Formation('Phantom Formation Two-Faced'),
      group:'Phantom',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(3.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(3.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.GRIPRIGHT).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Phantom Load the Boat',
      formation:Formation('Phantom Formation In'),
      group:'Phantom',
      paths:[
          Forward_3 +
          LeadRight.changeBeats(2).scale(2.5,3.5) +
          LeadRight.changeBeats(2.5).scale(3.5,3.5) +
          LeadRight.changeBeats(2.5),

          Forward_3 +
          QuarterLeft.changeBeats(2) +
          RunLeft +
          Forward_2,

          Forward_3 +
          LeadRight.changeBeats(2).scale(2.5,3.5) +
          LeadRight.changeBeats(2.5).scale(3.5,3.5) +
          LeadRight.changeBeats(2.5),

          Forward_3 +
          QuarterLeft.changeBeats(2) +
          RunLeft +
          Forward_2,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changeBeats(2) +
          FlipRight +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,3.5) +
          LeadLeft.changeBeats(2.5).scale(2.5,2.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Phantom Motivate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-3,angle:180),
  ]),
      group:'Phantom',fractions:'4;4.5;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          FlipLeft +
          HingeLeft,

          RunLeft.changeBeats(4) +
          HingeLeft +
          FlipLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          RunLeft.changeBeats(4).scale(1.0,3.0) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0) +
          SwingLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          Forward_4 +
          CastRight +
          SwingLeft +
          CastRight,

          Forward_4 +
          CastLeft +
          SwingRight +
          CastLeft,

          RunRight.changeBeats(4).scale(2.0,3.0) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Phantom Pass Thru',
      formation:Formation('Phantom Formation In'),
      group:'Phantom',
      paths:[
          Forward_4.changehands(Hands.RIGHT),

          Forward_4.changehands(Hands.LEFT),

          Forward_4.changehands(Hands.RIGHT),

          Forward_4.changehands(Hands.LEFT),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Phantom Tally Ho',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-2,y:3,angle:0),
  ]),
      group:'Phantom',fractions:'2',
      paths:[
          LeadRight.changeBeats(2).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          LeadLeft.changeBeats(2) +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,3.0),

          LeadRight.changeBeats(2).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          LeadLeft.changeBeats(2) +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,3.0),

          Forward_2 +
          HingeRight +
          LeadRight +
          Forward_2,

          Forward_2 +
          HingeRight +
          Forward_2.changeBeats(1.5) +
          CastLeft
      ]),

    AnimatedCall('Phantom Trade Circulate',
      formation:Formation('Phantom Formation LH'),
      group:'Phantom',
      paths:[
          RunLeft.changeBeats(4).scale(1.5,2.0),

          ExtendLeft.changeBeats(4).scale(4.0,2.0),

          RunLeft.changeBeats(4).scale(1.5,2.0),

          ExtendLeft.changeBeats(4).scale(4.0,2.0),

          RunRight.changeBeats(4).scale(1.5,2.0),

          ExtendLeft.changeBeats(4).scale(4.0,2.0)
      ]),

    AnimatedCall('Phantom Wheel and Deal',
      formation:Formation('Phantom Formation Two-Faced'),
      group:'Phantom',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(1.0,0.0)
      ]),
  ];

