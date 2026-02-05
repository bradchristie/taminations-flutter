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

  final List<AnimatedCall> CrossChainReaction = [

    AnimatedCall('Cross Chain Reaction',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',fractions:'5;3',
      paths:[
          Stand.changeBeats(3) +
          HingeRight.changeBeats(2).scale(2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          CastLeft,

          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          CastLeft,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Cross Chain Reaction',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',fractions:'5;3',
      paths:[
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Stand.changeBeats(2) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          CastRight,

          Stand.changeBeats(3) +
          HingeLeft.changeBeats(2).scale(2.0,1.0) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          RunLeft +
          CastRight,

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(0.0,1.0) +
          FlipRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Cross Chain Reaction',
      formation:Formation('Quarter Lines RH'),
      from:'Right-Hand Quarter Lines',fractions:'5;3',
      paths:[
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Stand.changeBeats(2) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          CastRight,

          Stand.changeBeats(3) +
          HingeLeft.changeBeats(2).scale(2.0,1.0) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).changehands(Hands.LEFT).skew(0.0,1.0) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(5).scale(5.0,3.0) +
          SwingRight +
          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft
      ]),

    AnimatedCall('Cross Chain Reaction',
      formation:Formation('Quarter Lines LH'),
      from:'Left-Hand Quarter Lines',fractions:'5;3',
      paths:[
          Stand.changeBeats(3) +
          HingeRight.changeBeats(2).scale(2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          CastLeft,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          SwingLeft +
          BackHingeRight +
          BackHingeRight +
          BackHingeRight
      ]),

    AnimatedCall('Cross Chain Reaction',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Mixed Quarter Waves, Centers Right-Handed',fractions:'5;3',
      paths:[
          Stand.changeBeats(3) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          CastLeft,

          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          CastLeft,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Cross Chain Reaction',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]),
      from:'Mixed Quarter Waves, Centers Left-Handed',fractions:'5;3',
      paths:[
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Stand.changeBeats(2) +
          HingeLeft.changeBeats(3) +
          CastRight,

          Stand.changeBeats(3) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          SwingLeft +
          CastRight,

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          HingeLeft.changeBeats(3) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Chain Reaction',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]),
      from:'Right-Hand Two-Faced Line between Mini-Waves',fractions:'5;3',
      paths:[
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          Stand.changeBeats(2) +
          HingeLeft.changeBeats(3) +
          CastRight,

          Stand.changeBeats(3) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          HingeLeft.changeBeats(3) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft
      ]),

    AnimatedCall('Cross Chain Reaction',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
  ]),
      from:'Left-Hand Two-Faced Line between Mini-Waves',fractions:'5;3',
      paths:[
          Stand.changeBeats(3) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          CastLeft,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          SwingLeft +
          BackHingeRight +
          BackHingeRight +
          BackHingeRight
      ]),
  ];

