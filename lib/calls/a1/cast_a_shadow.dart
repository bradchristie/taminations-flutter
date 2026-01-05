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

  final List<AnimatedCall> CastAShadow = [

    AnimatedCall('Cast a Shadow',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2.5).scale(2.0,0.75) +
          SwingLeft.changeBeats(2).scale(0.75,0.75) +
          LeadLeft.changeBeats(3).skew(2.0,0.75),

          LeadRight +
          LeadRight.changeBeats(3).scale(3.0,1.25) +
          LeadRight.scale(1.5,1.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.75),

          Forward_2 +
          HingeLeft.changeBeats(3.5) +
          Forward_2,

          FlipLeft.changeBeats(1.75).scale(1.0,0.375).skew(-1.0,0.0) +
          Forward.changeBeats(.75) +
          SwingLeft.changeBeats(2).scale(0.75,0.75) +
          LeadLeft.changeBeats(3).skew(2.0,-1.25)
      ]),

    AnimatedCall('Cast a Shadow',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',
      taminator: '''
      The center facing out need to cloverleaf far enough to go around
      the ends as they do their arm turn.
    ''',
      paths:[
          UmTurnRight.changeBeats(.5).skew(0.0,-0.75) +
          Forward_2.changeBeats(1) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,1.25),

          Forward_2 +
          HingeRight.changeBeats(3.5) +
          Forward_2,

          LeadLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.25) +
          LeadLeft.scale(1.5,1.0) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.75),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,-0.75)
      ]),

    AnimatedCall('Cast a Shadow',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
  ]),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).skew(2.0,0.75),

          Forward_2 +
          HingeRight.changeBeats(3.5) +
          Forward_2,

          LeadLeft +
          LeadLeft.changeBeats(3).skew(1.0,0.0) +
          QuarterLeft.skew(1.0,0.0) +
          Forward_2,

          UmTurnLeft.changeBeats(.5).skew(0.0,0.75) +
          Forward_2.changeBeats(1) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).skew(2.0,-1.25)
      ]),

    AnimatedCall('Cast a Shadow',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:270),
  ]),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          UmTurnRight.changeBeats(.5).skew(0.0,-0.75) +
          Forward_2.changeBeats(1) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,1.25),

          LeadRight +
          LeadRight.changeBeats(3).skew(1.0,0.0) +
          QuarterRight.skew(1.0,0.0) +
          Forward_2,

          Forward_2 +
          HingeLeft.changeBeats(3.5) +
          Forward_2,

          ExtendLeft.changeBeats(1.5).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,-0.75)
      ]),

    AnimatedCall('Cast a Shadow',
        formation:Formation('3 and 1 Lines #1'),
        from:'3 and 1 Lines #1',
        paths:[
          UmTurnRight.changeBeats(.5).skew(0.0,-0.75) +
              Forward_2.changeBeats(1) +
              SwingRight.scale(0.75,0.75) +
              LeadRight.changeBeats(3).skew(2.0,1.25),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
              LeadRight.changeBeats(3.5).scale(1.5,1.5) +
              ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
              LeadLeft.changeBeats(3.5).scale(0.5,0.5) +
              ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.75) +
              SwingRight.scale(0.75,0.75) +
              LeadRight.changeBeats(3).skew(2.0,-0.75)
        ]),

    AnimatedCall('Cast a Shadow',
        formation:Formation('3 and 1 Lines #4'),
        from:'3 and 1 Lines #4',
        paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.75) +
              SwingLeft.scale(0.75,0.75) +
              LeadLeft.changeBeats(3).skew(2.0,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
              LeadRight.changeBeats(3.5).scale(1.5,1.5) +
              ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
              LeadLeft.changeBeats(3.5).scale(0.5,0.5) +
              ExtendRight.changeBeats(2).scale(2.0,0.5),

          UmTurnLeft.changeBeats(.5).skew(0.0,0.75) +
              Forward_2.changeBeats(1) +
              SwingLeft.scale(0.75,0.75) +
              LeadLeft.changeBeats(3).skew(2.0,-1.25)
        ]),

    AnimatedCall('Cast a Shadow',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.75) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).skew(2.0,0.75),

          LeadRight +
          LeadRight.changeBeats(3).scale(3.0,1.25) +
          LeadRight.scale(1.25,1.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5),

          LeadLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.25) +
          LeadLeft.scale(1.25,1.0) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5),

          UmTurnLeft.changeBeats(.5).skew(0.0,0.75) +
          Forward_2.changeBeats(1) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).skew(2.0,-1.25)
      ]),

    AnimatedCall('Cast a Shadow',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',
      paths:[
          UmTurnRight.changeBeats(.5).skew(0.0,-0.75) +
          Forward_2.changeBeats(1) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,1.25),

          LeadRight +
          LeadRight.changeBeats(3).scale(3.0,1.25) +
          LeadRight.scale(1.25,1.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5),

          LeadLeft +
          LeadLeft.changeBeats(3).scale(3.0,1.25) +
          LeadLeft.scale(1.25,1.0) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).scale(2.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,-0.75)
      ]),

    AnimatedCall('Heads Cast a Shadow',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:0,angle:270),
  ]),
      group:' ',
      paths:[
          Forward.changeBeats(2).changehands(Hands.LEFT) +
          UmTurnRight.changeBeats(.5).skew(0.0,-0.75) +
          Forward +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,1.25),

          ExtendLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(2).skew(1.0,0.0) +
          QuarterRight.skew(1.0,0.0) +
          Forward_2,

          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(3.0,2.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.75) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).skew(2.0,-0.75),

          LeadLeft.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,0.5) +
          Forward +
          HingeLeft.changeBeats(3.5) +
          Forward_2
      ]),
  ];

