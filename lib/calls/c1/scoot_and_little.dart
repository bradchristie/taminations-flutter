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

  final List<AnimatedCall> ScootAndLittle = [

    AnimatedCall('Little',
      formation:Formation('Quarter Tag'),
      from:'Right-Hand Quarter Tag',
      paths:[
          ExtendRight.changeBeats(6).scale(1.0,4.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward_3,

          FlipRight.changeBeats(6).skew(2.0,0.0),

          Forward_2.changeBeats(6)
      ]),

    AnimatedCall('Little',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          ExtendRight.changeBeats(6).scale(1.0,4.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward_3,

          FlipLeft.changeBeats(6).skew(2.0,0.0),

          Forward_2.changeBeats(6)
      ]),

    AnimatedCall('Little',
      formation:Formation('3/4 Tag'),
      from:'Right-Hand 3/4 Tag',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          Forward_4,

          FlipRight.changeBeats(5).scale(2.0,2.0) +
          Forward.changeBeats(2),

          FlipRight.changeBeats(7).skew(2.0,0.0),

          Forward_2.changeBeats(7)
      ]),

    AnimatedCall('Little',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
  ]),
      from:'Left-Hand 3/4 Tag',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          Forward_4,

          FlipRight.changeBeats(5).scale(2.0,2.0) +
          Forward.changeBeats(2),

          FlipLeft.changeBeats(7).skew(2.0,0.0),

          Forward_2.changeBeats(7)
      ]),

    AnimatedCall('Little',
      formation:Formation('Mixed Quarter Tag #1'),
      from:'Right-Hand Quarter Waves',
      paths:[
          LeadRight.scale(0.5,1.0) +
          LeadLeft.changeBeats(3.5).scale(3.0,0.5),

          LeadRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3.5).scale(3.0,1.5),

          FlipRight.changeBeats(5).skew(2.0,0.0),

          Forward_2.changeBeats(5)
      ]),

    AnimatedCall('Little',
      formation:Formation('Mixed Quarter Tag #6'),
      from:'Left-Hand Quarter Waves',
      paths:[
          FlipRight.changeBeats(2).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(4).scale(3.0,1.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipLeft.changeBeats(6).skew(2.0,0.0),

          Forward_2.changeBeats(6)
      ]),

    AnimatedCall('Little',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Diamonds',
      paths:[
          FlipRight.changeBeats(6).skew(1.0,0.0),

          QuarterRight +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          Forward.changeBeats(6),

          QuarterRight +
          ExtendLeft.changeBeats(3).scale(3.0,1.5) +
          LeadRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Little',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1.5,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:.5,y:0,angle:270),
  ]),
      from:'"I" formation',
      paths:[
          ExtendRight.changeBeats(5).scale(2.0,4.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward_2,

          UmTurnLeft.changeBeats(5).skew(1.0,0.5),

          ExtendLeft.changeBeats(5).scale(1.0,0.5)
      ]),

    AnimatedCall('Little',
      formation:Formation('Hourglass RH BP'),
      from:'Hourglass',
      paths:[
          QuarterRight +
          ExtendLeft.changeBeats(3).scale(3.0,1.5) +
          LeadRight.scale(1.0,0.5),

          FlipRight.skew(1.0,0.0),

          QuarterRight +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          Forward
      ]),

    AnimatedCall('Little, Points Go As You Are',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Diamonds',
      paths:[
          FlipRight.changeBeats(6).skew(2.0,0.0),

          Forward_4 +
          LeadRight.changeBeats(2),

          Forward_2.changeBeats(6),

          LeadRight.changeBeats(2) +
          Forward_4
      ]),

    AnimatedCall('Little, Outsides Out',
      formation:Formation('3/4 Tag'),
      from:'Right-Hand 3/4 Tag',
      paths:[
          RunRight.skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunLeft.skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipRight.changeBeats(7).skew(2.0,0.0),

          Forward_2.changeBeats(7)
      ]),

    AnimatedCall('Left Little',
      formation:Formation('Quarter Tag'),
      from:'Right-Hand Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward_3,

          ExtendLeft.changeBeats(6).scale(1.0,4.0),

          FlipRight.changeBeats(6).skew(2.0,0.0),

          Forward_2.changeBeats(6)
      ]),

    AnimatedCall('Left Little',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward_3,

          ExtendLeft.changeBeats(6).scale(1.0,4.0),

          FlipLeft.changeBeats(6).skew(2.0,0.0),

          Forward_2.changeBeats(6)
      ]),

    AnimatedCall('Left Little',
      formation:Formation('3/4 Tag'),
      from:'Right-Hand 3/4 Tag',
      paths:[
          FlipLeft.changeBeats(5).scale(2.0,2.0) +
          Forward.changeBeats(2),

          FlipLeft.skew(-1.0,0.0) +
          Forward_4,

          FlipRight.changeBeats(6).skew(2.0,0.0),

          Forward_2.changeBeats(6)
      ]),

    AnimatedCall('Left Little',
      formation:Formation('3/4 Tag LH'),
      from:'Left-Hand 3/4 Tag',
      paths:[
          FlipLeft.changeBeats(5).scale(2.0,2.0) +
          Forward.changeBeats(2),

          FlipLeft.skew(-1.0,0.0) +
          Forward_4,

          FlipLeft.changeBeats(6).skew(2.0,0.0),

          Forward_2.changeBeats(6)
      ]),

    AnimatedCall('Left Little',
      formation:Formation('Mixed Quarter Tag #1'),
      from:'Right-Hand Quarter Waves',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipLeft.changeBeats(2).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          FlipRight.changeBeats(6).skew(2.0,0.0),

          Forward_2.changeBeats(6)
      ]),

    AnimatedCall('Scoot and Little',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',parts:'5',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          RunRight +
          Forward.changeBeats(3.5).scale(3.5,1.0),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          LeadRight +
          Forward_3 +
          LeadRight.changeBeats(1.5).scale(1.5,0.5),

          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(6).scale(3.5,1.0),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          Forward_2 +
          FoldRight.changeBeats(3).scale(0.75,0.75)
      ]),

    AnimatedCall('Scoot and Little',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',parts:'5',
      paths:[
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft +
          Forward_3 +
          LeadLeft.changeBeats(1.5).scale(1.5,0.5),

          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          SwingLeft.scale(0.75,0.75) +
          RunLeft +
          Forward.changeBeats(3.5).scale(3.5,1.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(6).scale(3.5,1.0),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          Forward_2 +
          FoldLeft.changeBeats(3).scale(0.75,0.75)
      ]),
  ];

