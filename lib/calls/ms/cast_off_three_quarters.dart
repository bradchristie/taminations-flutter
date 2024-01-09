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

  final List<AnimatedCall> CastOffThreeQuarters = [

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.33,-0.83) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.33,0.33),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.33,-0.83) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.33,0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          HingeRight.scale(2.0,2.0).skew(0.33,0.83) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33),

          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.83) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
          SwingRight +
          HingeRight.skew(0.0,0.5),

          SwingRight +
          HingeRight.skew(0.0,-0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          SwingLeft +
          HingeLeft.skew(0.0,-0.5),

          SwingLeft +
          HingeLeft.skew(0.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33),

          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33),

          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 2,noDisplay: true,
      paths:[
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          CastLeft,

          CastRight,

          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Remember, the centers push, the ends are the pivot.
      Resist the instinct to turn towards the center of the square.
    ''',
      paths:[
          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33),

          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Remember, the centers push, the ends are the pivot.
      Resist the instinct to turn towards the center of the square.
    ''',
      paths:[
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33),

          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33),

          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33),

          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          CastRight,

          CastRight,

          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
          CastLeft,

          CastLeft,

          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Centers Facing',difficulty: 2,
      paths:[
          CastLeft,

          CastLeft,

          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing',difficulty: 2,
      paths:[
          CastRight,

          CastRight,

          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Tidal Wave RH BGBG'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',difficulty: 2,
      paths:[
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',difficulty: 2,
      paths:[
          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.17) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.17,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.17),

          HingeLeft.skew(0.33,-0.17) +
          HingeLeft.skew(0.33,-0.33) +
          HingeLeft.skew(0.67,0.67),

          HingeRight.skew(0.33,0.5) +
          HingeRight.skew(-0.17,0.33) +
          HingeRight.skew(0.67,0.17),

          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.5) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.17,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',difficulty: 2,
      paths:[
          HingeRight.skew(0.33,0.17) +
          HingeRight.skew(0.33,0.33) +
          HingeRight.skew(0.67,-0.67),

          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.17) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.17,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.17),

          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.5) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.17,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.17),

          HingeLeft.skew(0.33,-0.5) +
          HingeLeft.skew(-0.17,-0.33) +
          HingeLeft.skew(0.67,-0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.17) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.17,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.17),

          HingeLeft.skew(0.33,-0.17) +
          HingeLeft.skew(0.33,-0.33) +
          HingeLeft.skew(0.67,0.67),

          HingeLeft.skew(0.33,-0.5) +
          HingeLeft.skew(-0.17,-0.33) +
          HingeLeft.skew(0.67,-0.17),

          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.5) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.17,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.17) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.17,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.17),

          HingeRight.skew(0.33,0.17) +
          HingeRight.skew(0.33,0.33) +
          HingeRight.skew(0.67,-0.67),

          HingeRight.skew(0.33,0.5) +
          HingeRight.skew(-0.17,0.33) +
          HingeRight.skew(0.67,0.17),

          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.5) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.17,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Inverted Tidal Line RH'),
      from:'Right-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Inverted Tidal Line LH'),
      from:'Left-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',difficulty: 2,
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',difficulty: 2,
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns Right-Hand Centers',difficulty: 2,
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns Left-Hand Centers',difficulty: 2,
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Alamo Wave'),
      from:'Alamo Wave',difficulty: 2,
      paths:[
          SxtnthLeft +
          SwingRight +
          HingeRight.skew(-0.414,0.0),

          SxtnthRight +
          SwingRight +
          HingeRight.skew(0.414,0.0),

          SxtnthLeft +
          SwingRight +
          HingeRight.skew(-0.414,0.0),

          SxtnthRight +
          SwingRight +
          HingeRight.skew(0.414,0.0)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Thar LH Boys'),
      from:'Thar',difficulty: 2,
      paths:[
          SwingRight +
          HingeRight.skew(0.0,0.414) +
          SxtnthRight,

          SwingRight +
          HingeRight.skew(0.0,-0.414) +
          SxtnthLeft,

          SwingRight +
          HingeRight.skew(0.0,0.414) +
          SxtnthRight,

          SwingRight +
          HingeRight.skew(0.0,-0.414) +
          SxtnthLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',noDisplay: true,
      paths:[
          CastLeft,

          CastLeft,

          CastRight,

          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',noDisplay: true,
      paths:[
          CastRight,

          CastRight,

          CastRight,

          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',noDisplay: true,
      paths:[
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          CastLeft,

          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',noDisplay: true,
      paths:[
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          CastLeft,

          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',noDisplay: true,
      paths:[
          CastRight,

          CastRight,

          CastLeft,

          BackHingeRight +
          BackHingeRight +
          BackHingeRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',noDisplay: true,
      paths:[
          CastLeft,

          CastLeft,

          CastLeft,

          BackHingeRight +
          BackHingeRight +
          BackHingeRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',noDisplay: true,
      paths:[
          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft,

          CastRight,

          CastRight,

          CastRight
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',noDisplay: true,
      paths:[
          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft,

          CastRight,

          CastLeft,

          CastLeft
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          CastLeft,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight,

          CastRight,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft,

          CastLeft,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft,

          CastLeft,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight,

          CastRight,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          CastRight,

          Path(),

          CastRight,

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          CastLeft,

          Path(),

          CastLeft,

          Path()
      ]),

    AnimatedCall('Very Centers Cast Off Three Quarters',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          Path(),

          CastLeft,

          Path()
      ]),

    AnimatedCall('Very Centers Cast Off Three Quarters',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          Path(),

          CastRight,

          Path()
      ]),
  ];

