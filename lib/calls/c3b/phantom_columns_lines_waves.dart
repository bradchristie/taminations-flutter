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
import '../../moves.dart';

  final List<AnimatedCall> PhantomColumnsLinesWaves = [

    AnimatedCall('Phantom Columns Checkmate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-3,y:3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1,y:3,angle:180),
  ]),
      group:'Phantom Columns',
      paths:[
          Forward.changeBeats(4).scale(3.5,1.0) +
          LeadLeft +
          Forward_4.changehands(Hands.RIGHT) +
          ExtendLeft.changehands(Hands.RIGHT).scale(1.0,0.5),

          Forward_3.changeBeats(4) +
          LeadLeft +
          Forward_5.changehands(Hands.LEFT),

          RunLeft.changeBeats(4) +
          Forward_5 +
          QuarterLeft.skew(1.0,0.0),

          Forward_2 +
          RunLeft +
          Forward_3 +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0),

          Forward_3.changeBeats(4) +
          LeadLeft +
          Forward.changeBeats(5).changehands(Hands.RIGHT),

          RunLeft.changeBeats(4).scale(1.0,3.0) +
          Forward_5 +
          QuarterLeft.skew(1.0,0.0),

          Forward_3.changeBeats(4) +
          LeadLeft +
          Forward.changeBeats(5).changehands(Hands.LEFT),

          Forward_2 +
          RunLeft.scale(1.0,3.0) +
          Forward_3 +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Phantom Columns Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1,y:3,angle:0),
  ]),
      group:'Phantom Columns',
      paths:[
          RunRight.changeBeats(4).scale(1.0,3.0),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          RunLeft.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Phantom Lines Chase Right',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:0),
  ]),
      group:'Phantom Lines',
      paths:[
          RunRight.changeBeats(4).scale(0.5,1.75).skew(-1.0,0.0) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          RunRight.scale(0.5,1.0) +
          Forward_2,

          UmTurnRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.skew(1.0,0.0),

          FlipRight.scale(1.0,0.75).skew(-2.0,0.0) +
          Forward_3 +
          RunRight.scale(1.0,1.75).skew(1.0,0.0),

          FlipRight.scale(1.0,0.75).skew(-2.0,0.0) +
          Forward_3 +
          RunRight.scale(1.0,1.75).skew(1.0,0.0),

          UmTurnRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.skew(1.0,0.0),

          RunRight.scale(0.5,1.0) +
          Forward_2,

          RunRight.changeBeats(4).scale(0.5,1.75).skew(-1.0,0.0) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Phantom Lines Swap Around',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:180),
  ]),
      group:'Phantom Lines',
      paths:[
          Forward_6.changeBeats(5),

          FlipRight.changeBeats(5),

          Forward_2.changeBeats(5),

          FlipRight.changeBeats(5),

          FlipRight.changeBeats(5),

          Forward_2.changeBeats(5),

          FlipRight.changeBeats(5),

          Forward_6.changeBeats(5)
      ]),

    AnimatedCall('Phantom Waves Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:180),
  ]),
      group:'Phantom Waves',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          Forward_4.changeBeats(3) +
          ExtendRight.scale(1.0,0.5),

          RunLeft.changeBeats(5).scale(0.5,1.0),

          Forward_2.changeBeats(5),

          RunLeft.changeBeats(5).scale(1.0,3.0),

          RunRight.changeBeats(5),

          Forward_2.changeBeats(5),

          RunRight.changeBeats(5).scale(1.0,3.0),

          Forward_6.changeBeats(5)
      ]),

    AnimatedCall('Phantom Waves In-Roll Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:3,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:3,y:3,angle:180),
  ]),
      group:'Phantom Waves',
      paths:[
          FlipRight,

          FlipRight,

          Forward_2.changeBeats(3),

          FlipLeft,

          FlipLeft,

          FlipLeft,

          FlipRight,

          Forward_6.changeBeats(3)
      ]),
  ];

