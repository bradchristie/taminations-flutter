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

  final List<AnimatedCall> StepAndFold = [

    AnimatedCall('Step and Fold',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          RunRight.skew(1.5,0.0),

          Forward.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          RunLeft.skew(1.5,0.0),

          Forward.changeBeats(2).scale(1.5,1.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',
      paths:[
          RunRight.skew(1.0,0.0),

          Forward
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',
      paths:[
          RunLeft.skew(1.0,0.0),

          Forward
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward,

          Forward,

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          FlipLeft.skew(1.0,0.0),

          Forward,

          Forward,

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.RIGHT),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          FlipLeft.skew(1.0,0.0),

          Forward.changehands(Hands.RIGHT),

          Forward.changehands(Hands.LEFT),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',
      paths:[
          Forward,

          FlipRight.skew(1.0,0.0),

          Forward,

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',
      paths:[
          Forward,

          FlipLeft.skew(1.0,0.0),

          Forward,

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Right-Hand Point-to-Point Diamonds',
      paths:[
          Forward_2,

          UmTurnRight.skew(1.0,0.0),

          Path(),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Diamonds',
      paths:[
          Path(),

          UmTurnLeft.skew(1.0,0.0),

          Forward_2,

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          FlipRight.scale(1.0,0.25).skew(2.0,0.0),

          ExtendRight.changeBeats(3).scale(2.0,0.5),

          ExtendRight.changeBeats(3).scale(2.0,0.5),

          FlipRight.scale(1.0,0.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          FlipLeft.scale(1.0,0.25).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          FlipLeft.scale(1.0,0.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Inverted Tidal Line RH'),
      from:'Tidal Inverted Line, Right-Hand Centers',
      paths:[
          FlipRight.changeBeats(3).scale(1.0,0.25).skew(2.0,0.0),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,0.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,0.5),

          FlipLeft.changeBeats(3).scale(1.0,0.25).skew(2.0,0.0)
      ]),

    AnimatedCall('Step and Fold',
      formation:Formation('Inverted Tidal Line LH'),
      from:'Tidal Inverted Line, Left-Hand Centers',
      paths:[
          FlipLeft.changeBeats(3).scale(1.0,0.25).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,0.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,0.5),

          FlipRight.changeBeats(3).scale(1.0,0.25).skew(2.0,0.0)
      ]),

    AnimatedCall('All 8 Step and Fold',
      formation:Formation('Thar LH Boys'),
      group:' ',
      paths:[
          Forward_3,

          RunRight.skew(3.0,0.0),

          Forward_3,

          RunRight.skew(3.0,0.0)
      ]),

    AnimatedCall('All 8 Step and Fold',
      formation:Formation('Thar RH Boys'),
      group:' ',noDisplay: true,
      paths:[
          Forward_3,

          RunLeft.skew(3.0,0.0),

          Forward_3,

          RunLeft.skew(3.0,0.0)
      ]),

    AnimatedCall('As Couples Step and Fold',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Tidal Two-Faced Line',group:' ',
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,2.0).skew(2.0,1.5),

          FlipRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(2.0,2.5),

          ExtendRight.changeBeats(4).changehands(Hands.LEFT).scale(2.0,1.5),

          ExtendRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,0.5)
      ]),

    AnimatedCall('Concentric Step and Fold',
      formation:Formation('Concentric Diamonds Mixed'),
      group:' ',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward,

          Forward_2 +
          ExtendLeft,

          RunRight.changeBeats(4).scale(1.0,1.5).skew(3.0,0.0)
      ]),

    AnimatedCall('Concentric Diamond Step and Fold',
      formation:Formation('Concentric Diamonds Mixed'),
      group:' ',
      paths:[
          Forward,

          Forward,

          FlipLeft.scale(1.0,0.5).skew(1.0,0.0),

          RunRight.changeBeats(4).scale(1.0,1.5).skew(3.0,0.0)
      ]),

    AnimatedCall('Stretch Step and Fold',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',
      paths:[
          Forward_2.changeBeats(1) +
          RunRight.changeBeats(2).scale(0.5,1.0).skew(1.0,0.0),

          Forward,

          Forward_3,

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Step and Fold',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',
      paths:[
          Forward_4.changeBeats(3) +
          RunRight.skew(1.0,0.0),

          Forward,

          Forward_3,

          RunRight +
          Forward
      ]),

    AnimatedCall('Triple Line Step and Fold',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-4,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-4,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-4,y:3,angle:180),
        DancerModel.fromData(gender:Gender.PHANTOM,x:-4,y:-3,angle:180),
  ]),
      group:' ',
      paths:[
          Forward.changehands(Hands.RIGHT),

          Forward.changehands(Hands.LEFT),

          Forward,

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(1.0,0.0)
      ]),
  ];

