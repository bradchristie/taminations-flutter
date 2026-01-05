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

  final List<AnimatedCall> Counter = [

    AnimatedCall('Counter',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_1p5,

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          SwingRight.scale(0.5,0.5) +
          RunRight.changeBeats(2).skew(1.5,1.0),

          HingeRight +
          SwingRight.skew(1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-0.5),

          HingeRight +
          SwingRight.skew(-1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,0.5)
      ]),

    AnimatedCall('Counter',
      formation:Formation('Quarter Lines RH'),
      from:'Quarter Line',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_1p5,

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          SwingRight.scale(0.5,0.5) +
          RunRight.changeBeats(2).skew(1.5,1.0),

          HingeLeft +
          BelleWheel.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.0),

          BackHingeRight +
          BeauWheel.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Counter',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.5).skew(-3.0,0.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_1p5,

          RunLeft.changeBeats(4).skew(-3.0,0.0) +
          SwingRight.scale(0.5,0.5) +
          RunRight.changeBeats(2).skew(1.5,1.0),

          HingeRight +
          SwingRight.skew(1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-0.5),

          HingeRight +
          SwingRight.skew(-1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,0.5)
      ]),

    AnimatedCall('Counter',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_1p5,

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          SwingRight.scale(0.5,0.5) +
          RunRight.changeBeats(2).skew(1.5,1.0),

          HingeLeft +
          SwingLeft.skew(1.0,0.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,0.5),

          HingeLeft +
          SwingLeft.skew(-1.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-0.5)
      ]),

    AnimatedCall('Counter',
      formation:Formation('Quarter Lines LH'),
      from:'Left-Hand Quarter Line',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_1p5,

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          SwingRight.scale(0.5,0.5) +
          RunRight.changeBeats(2).skew(1.5,1.0),

          HingeRight +
          BeauReverseWheel.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          BackHingeLeft +
          BelleReverseWheel.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('Counter',
      formation:Formation('3/4 Tag LH'),
      from:'Left-Hand 3/4 Tag',
      paths:[
          RunRight.changeBeats(4).scale(1.0,1.5).skew(-3.0,0.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_1p5,

          RunLeft.changeBeats(4).skew(-3.0,0.0) +
          SwingRight.scale(0.5,0.5) +
          RunRight.changeBeats(2).skew(1.5,1.0),

          HingeLeft +
          SwingLeft.skew(1.0,0.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,0.5),

          HingeLeft +
          SwingLeft.skew(-1.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-0.5)
      ]),

    AnimatedCall('Left Counter',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          SwingLeft.scale(0.5,0.5) +
          RunLeft.changeBeats(2).skew(1.5,-1.0),

          ExtendRight.changeBeats(4).scale(3.0,3.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_1p5,

          HingeRight +
          SwingRight.skew(1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-0.5),

          HingeRight +
          SwingRight.skew(-1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,0.5)
      ]),

    AnimatedCall('Left Counter',
      formation:Formation('Quarter Lines RH'),
      from:'Quarter Line',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          SwingLeft.scale(0.5,0.5) +
          RunLeft.changeBeats(2).skew(1.5,-1.0),

          ExtendRight.changeBeats(4).scale(3.0,3.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_1p5,

          HingeLeft +
          BelleWheel.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.0),

          BackHingeRight +
          BeauWheel.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Left Counter',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',
      paths:[
          RunRight.changeBeats(4).skew(-3.0,0.0) +
          SwingLeft.scale(0.5,0.5) +
          RunLeft.changeBeats(2).skew(1.5,-1.0),

          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-3.0,0.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_1p5,

          HingeRight +
          SwingRight.skew(1.0,0.0) +
          CounterRotateRight_0_m2.changehands(Hands.RIGHT).skew(0.0,-0.5),

          HingeRight +
          SwingRight.skew(-1.0,0.0) +
          CounterRotateRight_2_0.changehands(Hands.RIGHT).skew(0.0,0.5)
      ]),

    AnimatedCall('Left Counter',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          SwingLeft.scale(0.5,0.5) +
          RunLeft.changeBeats(2).skew(1.5,-1.0),

          ExtendRight.changeBeats(4).scale(3.0,3.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_1p5,

          HingeLeft +
          SwingLeft.skew(1.0,0.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,0.5),

          HingeLeft +
          SwingLeft.skew(-1.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-0.5)
      ]),

    AnimatedCall('Left Counter',
      formation:Formation('Quarter Lines LH'),
      from:'Left-Hand Quarter Line',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          SwingLeft.scale(0.5,0.5) +
          RunLeft.changeBeats(2).skew(1.5,-1.0),

          ExtendRight.changeBeats(4).scale(3.0,3.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_1p5,

          HingeRight +
          BeauReverseWheel.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          BackHingeLeft +
          BelleReverseWheel.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('Left Counter',
      formation:Formation('3/4 Tag LH'),
      from:'Left-Hand 3/4 Tag',
      paths:[
          RunRight.changeBeats(4).skew(-3.0,0.0) +
          SwingLeft.scale(0.5,0.5) +
          RunLeft.changeBeats(2).skew(1.5,-1.0),

          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-3.0,0.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_1p5,

          HingeLeft +
          SwingLeft.skew(1.0,0.0) +
          CounterRotateLeft_0_2.changehands(Hands.LEFT).skew(0.0,0.5),

          HingeLeft +
          SwingLeft.skew(-1.0,0.0) +
          CounterRotateLeft_2_0.changehands(Hands.LEFT).skew(0.0,-0.5)
      ]),

    AnimatedCall('Scoot and Counter',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',fractions:'5',
      paths:[
          ExtendLeft.scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          RunRight.changeBeats(4).scale(1.0,1.5).skew(-3.0,0.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_2,

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.scale(1.5,1.5) +
          RunLeft.changeBeats(4).skew(-3.0,0.0) +
          SwingRight.scale(0.5,0.5) +
          RunRight.changeBeats(2).skew(2.0,1.0),

          ExtendRight.scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          HingeRight +
          SwingRight.skew(-1.0,0.0) +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(2.0,1.0),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.5,0.5) +
          HingeRight +
          SwingRight.skew(1.0,0.0) +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(0.0,-3.0)
      ]),

    AnimatedCall('Left Scoot and Counter',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',fractions:'5',
      paths:[
          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.scale(1.5,1.5) +
          RunRight.changeBeats(4).skew(-3.0,0.0) +
          SwingLeft.scale(0.5,0.5) +
          RunLeft.changeBeats(2).skew(2.0,-1.0),

          ExtendRight.scale(1.5,1.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-3.0,0.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_2,

          ExtendLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          HingeLeft +
          SwingLeft.skew(-1.0,0.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.GRIPLEFT).skew(2.0,-1.0),

          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.scale(1.5,0.5) +
          HingeLeft +
          SwingLeft.skew(1.0,0.0) +
          QuarterLeft.changeBeats(3).changehands(Hands.GRIPLEFT).skew(0.0,3.0)
      ]),
  ];

