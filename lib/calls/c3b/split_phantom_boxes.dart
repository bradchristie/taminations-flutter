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

  final List<AnimatedCall> SplitPhantomBoxes = [

    AnimatedCall('Split Phantom Boxes Acey Deucey',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-.75,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:.75,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:2.25,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3.75,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-2.25,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-3.75,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-5.25,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1.5,y:-5.25,angle:180),
  ]),
      group:'Split Phantom Boxes',
      paths:[
          Forward_3.changeBeats(4),

          RunRight.changeBeats(4).scale(1.75,2.25),

          SwingLeft.changeBeats(4).scale(0.75,0.75),

          SwingLeft.changeBeats(4).scale(0.75,0.75),

          SwingLeft.changeBeats(4).scale(0.75,0.75),

          SwingLeft.changeBeats(4).scale(0.75,0.75),

          RunRight.changeBeats(4).scale(1.75,2.25),

          Forward_3.changeBeats(4)
      ]),

    AnimatedCall('Split Phantom Boxes In Roll Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-.75,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:.75,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:2.25,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:3.75,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-2.25,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-3.75,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-5.25,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1.5,y:-5.25,angle:180),
  ]),
      group:'Split Phantom Boxes',
      paths:[
          Forward_3,

          FlipRight.scale(1.0,0.75),

          FlipLeft.scale(1.0,0.75),

          FlipRight.scale(1.0,0.75),

          FlipRight.scale(1.0,0.75),

          FlipLeft.scale(1.0,0.75),

          FlipRight.scale(1.0,0.75),

          Forward_3
      ]),

    AnimatedCall('Split Phantom Boxes Link Up',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:5.25,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:3.75,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:2.25,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:.75,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-.75,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-2.25,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-3.75,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-5.25,angle:180),
  ]),
      group:'Split Phantom Boxes',
      paths:[
          Forward_2.changehands(2).scale(0.75,1.0) +
          RunRight.changeBeats(5).scale(1.0,1.5).skew(1.5,0.0),

          Forward_2.changehands(1).scale(0.75,1.0) +
          SwingRight.scale(0.75,0.75) +
          Forward_2.scale(0.75,1.0),

          LeadLeft.changeBeats(2).changehands(1).scale(1.5,1.5) +
          QuarterLeft +
          Forward_2.changeBeats(3.5).scale(0.75,1.0),

          QuarterLeft.changeBeats(2).changehands(2) +
          QuarterLeft +
          Forward_3.changeBeats(3.5),

          Forward_2.changehands(2).scale(0.75,1.0) +
          RunRight.changeBeats(5).scale(1.0,1.5).skew(1.5,0.0),

          Forward_2.changehands(1).scale(0.75,1.0) +
          SwingRight.scale(0.75,0.75) +
          Forward_2.scale(0.75,1.0),

          LeadLeft.changeBeats(2).changehands(1).scale(1.5,1.5) +
          QuarterLeft +
          Forward_2.changeBeats(3.5).scale(0.75,1.0),

          QuarterLeft.changeBeats(2).changehands(2) +
          QuarterLeft +
          Forward_3.changeBeats(3.5)
      ]),

    AnimatedCall('Split Phantom Boxes Plan Ahead',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:2.25,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:.75,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-.75,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:-2.25,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:3.75,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:5.25,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-3.75,angle:0),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-1.5,y:-5.25,angle:0),
  ]),
      group:'Split Phantom Boxes',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.375) +
          HingeRight.scale(0.75,0.375) +
          RunRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(1.5,0.75) +
          FlipRight.scale(1.0,0.375).skew(1.5,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.375) +
          LeadLeft.changeBeats(5).scale(1.5,1.875) +
          HingeRight.scale(0.75,0.75) +
          RunRight.scale(0.75,0.75) +
          Forward.scale(0.75,1.0) +
          QuarterRight.skew(0.75,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.375) +
          LeadRight.changeBeats(5).scale(3.0,2.625) +
          HingeRight.scale(0.75,0.75) +
          Forward_2.changeBeats(3).scale(0.75,1.0) +
          Forward.scale(0.75,1.0) +
          QuarterRight.skew(0.75,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.375) +
          HingeRight.scale(0.75,0.375) +
          Forward_2.changeBeats(3).scale(0.75,1.0) +
          ExtendRight.changeBeats(2).scale(1.5,0.75) +
          RunLeft.scale(0.75,0.375),

          ExtendLeft.changeBeats(2).scale(1.5,0.375) +
          HingeRight.scale(0.75,0.375) +
          Forward_2.changeBeats(3).scale(0.75,1.0) +
          ExtendRight.changeBeats(2).scale(1.5,0.75) +
          RunLeft.scale(0.5,0.375),

          ExtendLeft.changeBeats(2).scale(1.5,0.375) +
          LeadRight.changeBeats(5).scale(3.0,2.625) +
          HingeRight.scale(0.75,0.75) +
          Forward_2.changeBeats(3).scale(0.75,1.0) +
          Forward.scale(0.75,1.0) +
          QuarterRight.skew(0.75,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.375) +
          HingeRight.scale(0.75,0.375) +
          RunRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(1.5,0.75) +
          FlipRight.scale(1.0,0.375).skew(1.5,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.375) +
          LeadLeft.changeBeats(5).scale(1.5,1.875) +
          HingeRight.scale(0.75,0.75) +
          RunRight.scale(0.75,0.75) +
          Forward.scale(0.75,1.0) +
          QuarterRight.skew(0.75,0.0)
      ]),

    AnimatedCall('Split Phantom Boxes Walk Out to a Wave',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:.75,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2.25,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3.75,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:5.25,angle:270),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-.75,angle:270),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-2.25,angle:270),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-3.75,angle:270),
        DancerModel.fromData(gender:Gender.PHANTOM,x:1,y:-5.25,angle:270),
  ]),
      group:'Split Phantom Boxes',
      paths:[
          RunRight.changeBeats(5).scale(0.5,2.0).skew(-0.75,0.0) +
          RunRight,

          RunRight.changeBeats(5).skew(1.0,0.0) +
          DodgeLeft.skew(0.25,0.0),

          Forward.changeBeats(3).scale(1.5,1.0) +
          UmTurnRight.changeBeats(3).skew(0.75,0.0),

          Forward_2.changeBeats(5) +
          ExtendLeft.changeBeats(3).scale(1.75,2.0),

          Forward_2.changeBeats(5) +
          ExtendLeft.changeBeats(3).scale(1.75,2.0),

          Forward.changeBeats(3).scale(1.5,1.0) +
          UmTurnRight.changeBeats(3).skew(0.75,0.0),

          RunRight.changeBeats(5).skew(1.0,0.0) +
          DodgeLeft.skew(0.25,0.0),

          RunRight.changeBeats(5).scale(0.5,2.0).skew(-0.75,0.0) +
          RunRight
      ]),
  ];

