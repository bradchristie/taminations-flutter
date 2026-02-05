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
import '../a1/chain_reaction.dart' as a1;

  final List<AnimatedCall> ChainReaction = [
    a1.ChainReaction.where((tam) =>
      tam.title == 'Chain Reaction' && tam.from == 'Quarter Tag').first.xref(title: 'Chain Reaction'),
    a1.ChainReaction.where((tam) =>
      tam.title == 'Chain Reaction' && tam.from == 'Left-Hand Quarter Tag').first.xref(title: 'Chain Reaction'),

    AnimatedCall('Chain Reaction',
      formation:Formation('Quarter Lines RH'),
      from:'Right-Hand Quarter Lines',fractions:'3;1.5;2',
      paths:[
          Stand.changeBeats(3) +
          HingeRight.scale(2.0,1.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeLeft.changeBeats(2) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(0.0,0.33) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.67,0.67) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.33,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          FlipLeft.changeBeats(2) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          RunRight.changeBeats(2) +
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33)
      ]),

    AnimatedCall('Chain Reaction',
      formation:Formation('Quarter Lines LH'),
      from:'Left-Hand Quarter Lines',fractions:'3;1.5;2',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeRight.changeBeats(2) +
          HingeLeft.changehands(Hands.LEFT).scale(2.0,2.0).skew(0.0,-0.33) +
          HingeLeft.changehands(Hands.LEFT).scale(2.0,2.0).skew(-0.67,-0.67) +
          HingeLeft.changehands(Hands.LEFT).scale(2.0,2.0).skew(-0.33,0.0),

          Stand.changeBeats(3) +
          HingeLeft.scale(2.0,1.0) +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.0,1.0) +
          RunRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          FlipLeft.changeBeats(2) +
          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33)
      ]),

    AnimatedCall('Chain Reaction',
      formation:Formation('Mixed Quarter Tag #1'),
      from:'Right-Hand Quarter Waves',fractions:'3;2;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          CastLeft,

          Stand.changeBeats(3) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          CastLeft,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0)
      ]),

    AnimatedCall('Chain Reaction',
      formation:Formation('Mixed Quarter Tag #6'),
      from:'Left-Hand Quarter Waves',fractions:'3;2;2',
      paths:[
          Stand.changeBeats(3) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(2) +
          HingeLeft.changeBeats(2) +
          CastRight,

          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          SwingLeft.changeBeats(2) +
          CastRight,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          SwingLeft.changeBeats(2) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Chain Reaction',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]),
      from:'Right-Hand Two-Faced Line between Mini-Waves',fractions:'3;2;3',
      paths:[
          Stand.changeBeats(3) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          HingeLeft.changeBeats(3) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(2) +
          HingeLeft.changeBeats(3) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(0.0,0.33) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.67,0.67) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.33,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33)
      ]),

    AnimatedCall('Chain Reaction',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
  ]),
      from:'Left-Hand Two-Faced Line between Mini-Waves',fractions:'3;2;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          HingeLeft.changehands(Hands.LEFT).scale(2.0,2.0).skew(0.0,-0.33) +
          HingeLeft.changehands(Hands.LEFT).scale(2.0,2.0).skew(-0.67,-0.67) +
          HingeLeft.changehands(Hands.LEFT).scale(2.0,2.0).skew(-0.33,0.0),

          Stand.changeBeats(3) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          SwingLeft +
          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33)
      ]),


    a1.ChainReaction.where((tam) =>
      tam.title == 'Chain Reaction, Turn the Star 1/2').first.xref(title:
          'Chain Reaction, Turn the Star 1/2')..group='',

    AnimatedCall('Chain Reaction, Turn the Star 1/2',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]),
      from:'Left-Hand Quarter Tag',fractions:'3;1.5;3',
      paths:[
          Stand.changeBeats(3) +
          HingeRight.skew(1.0,0.0) +
          SwingLeft +
          CastRight,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          SwingLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          SwingLeft +
          CastRight,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Chain Reaction, Turn the Star 1/2',
      formation:Formation('Quarter Lines RH'),
      from:'Right-Hand Quarter Lines',fractions:'3;1.5;3',
      paths:[
          Stand.changeBeats(3) +
          HingeRight.changeBeats(1.5).scale(2.0,1.0) +
          SwingLeft +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(0.0,0.33) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.67,0.67) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.33,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          SwingLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          RunRight +
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33)
      ]),

    AnimatedCall('Chain Reaction, Turn the Star 1/2',
      formation:Formation('Quarter Lines LH'),
      from:'Left-Hand Quarter Lines',fractions:'3;1.5;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          Stand.changeBeats(3) +
          HingeLeft.scale(2.0,1.0) +
          SwingRight +
          HingeLeft.changehands(Hands.LEFT).scale(2.0,2.0).skew(0.0,-0.33) +
          HingeLeft.changehands(Hands.LEFT).scale(2.0,2.0).skew(-0.67,-0.67) +
          HingeLeft.changehands(Hands.LEFT).scale(2.0,2.0).skew(-0.33,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(Hands.LEFT).skew(0.0,1.0) +
          RunRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          FlipLeft +
          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33)
      ]),

    AnimatedCall('Chain Reaction, Turn the Star 1/2',
      formation:Formation('Mixed Quarter Tag #1'),
      from:'Right-Hand Quarter Waves',fractions:'3;2;4.5',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          LeadRight.scale(1.5,1.5) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          ExtendLeft.changeBeats(4.5).scale(2.0,4.0),

          Stand.changeBeats(3) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          FlipLeft.changeBeats(4.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight.changeBeats(4.5) +
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          LeadLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(0.0,0.33) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.67,0.67) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.33,0.0)
      ]),

    AnimatedCall('Chain Reaction, Turn the Star 1/2',
      formation:Formation('Mixed Quarter Tag #6'),
      from:'Left-Hand Quarter Waves',fractions:'3;2;3',
      paths:[
          Stand.changeBeats(3) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          SwingLeft +
          CastRight,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(2) +
          SwingLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          SwingLeft +
          CastRight,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          SwingLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Chain Reaction, Turn the Star 1/2',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]),
      from:'Right-Hand Two-Faced Line between Mini-Waves',fractions:'3;2;3',
      paths:[
          Stand.changeBeats(3) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          SwingLeft +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(0.0,0.33) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.67,0.67) +
          HingeRight.changehands(Hands.RIGHT).scale(2.0,2.0).skew(-0.33,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(2) +
          SwingLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(5).scale(5.0,3.0) +
          RunRight +
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33)
      ]),

    AnimatedCall('Chain Reaction, Turn the Star 1/2',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
  ]),
      from:'Left-Hand Two-Faced Line between Mini-Waves',fractions:'3;2;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(2) +
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          LeadRight.scale(1.5,1.5) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793) +
          ExtendLeft.changeBeats(4.5).scale(2.0,4.0),

          Stand.changeBeats(3) +
          QuarterRight.changeBeats(2).skew(0.0,-1.0) +
          SwingLeft.changeBeats(4.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(-2.0,1.0) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          LeadLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207) +
          CastRight,

          LeadLeft.changeBeats(5).scale(5.0,3.0) +
          SwingLeft.changeBeats(4.5) +
          CastRight
      ]),
  ];

