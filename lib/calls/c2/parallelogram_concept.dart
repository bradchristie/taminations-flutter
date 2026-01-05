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

  final List<AnimatedCall> ParallelogramConcept = [

    AnimatedCall('Parallelogram Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-5,angle:180),
  ]),
      group:'Parallelogram',
      paths:[
          ExtendLeft.changeBeats(6).scale(4.0,4.0),

          SwingLeft.changeBeats(6),

          SwingLeft.changeBeats(6),

          RunRight.changeBeats(6).scale(2.0,3.0)
      ]),

    AnimatedCall('Parallelogram Bend the Line',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-5,angle:180),
  ]),
      group:'Parallelogram',
      paths:[
          HingeLeft,

          BackHingeRight,

          BackHingeLeft,

          HingeRight
      ]),

    AnimatedCall('Parallelogram Cast Off 3/4',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-5,angle:180),
  ]),
      group:'Parallelogram',
      paths:[
          CastRight,

          CastRight,

          CastRight,

          CastRight
      ]),

    AnimatedCall('Parallelogram In Roll Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-5,angle:180),
  ]),
      group:'Parallelogram',
      paths:[
          ExtendLeft.changeBeats(6).scale(4.0,4.0),

          FlipRight,

          FlipLeft,

          FlipRight
      ]),

    AnimatedCall('Parallelogram Pass the Ocean',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-5,angle:0),
  ]),
      group:'Parallelogram',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,2.5) +
          LeadLeft.changeBeats(3).scale(1.0,2.5),

          ExtendLeft.changeBeats(2).scale(2.0,2.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,2.5) +
          LeadLeft.changeBeats(3).scale(1.0,2.5)
      ]),

    AnimatedCall('Parallelogram Recycle',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-5,angle:180),
  ]),
      group:'Parallelogram',
      paths:[
          RunRight.changeBeats(4).skew(1.0,-1.0),

          RunRight.changeBeats(2).scale(0.5,0.75).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.25).skew(0.5,0.0),

          RunRight.changeBeats(2).scale(0.5,0.25).skew(-0.5,0.0) +
          RunRight.changeBeats(2).scale(0.5,0.75).skew(0.5,0.0),

          RunRight.changeBeats(4).skew(1.0,-3.0)
      ]),

    AnimatedCall('Parallelogram Scoot Back',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-5,angle:180),
  ]),
      group:'Parallelogram',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          SwingRight.changeBeats(2).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,2.5),

          RunRight,

          ExtendLeft.changeBeats(2).scale(2.0,1.5) +
          SwingRight.changeBeats(2).scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,2.5),

          RunRight
      ]),

    AnimatedCall('Parallelogram Slide Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-5,angle:0),
  ]),
      group:'Parallelogram',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.5) +
          QuarterRight.changeBeats(2).skew(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,2.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,2.5) +
          QuarterRight.changeBeats(2).skew(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,2.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5)
      ]),

    AnimatedCall('Parallelogram Split Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-5,angle:180),
  ]),
      group:'Parallelogram',
      paths:[
          ExtendLeft.changeBeats(6).scale(4.0,4.0),

          RunRight,

          ExtendLeft.changeBeats(6).scale(4.0,4.0),

          RunRight
      ]),

    AnimatedCall('Parallelogram Walk and Dodge',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-5,angle:180),
  ]),
      group:'Parallelogram',
      paths:[
          ExtendLeft.changeBeats(6).scale(4.0,4.0),

          DodgeRight,

          ExtendLeft.changeBeats(6).scale(4.0,4.0),

          DodgeRight
      ]),
  ];

