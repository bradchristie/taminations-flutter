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

  final List<AnimatedCall> CastOffThreeQuarters = [

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.333,-0.83) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.333,-0.333) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.333,0.333),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.333,-0.83) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.333,-0.333) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.333,0.333)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.333,0.83) +
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.333,0.333) +
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.333,-0.333),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.333,0.83) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.333,0.333) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.333,-0.333)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,
      notForSequencer: true,
      paths:[
          SwingRight.changeBeats(4) +
          HingeRight.changeBeats(2).skew(0.0,0.5),

          SwingRight.changeBeats(4) +
          HingeRight.changeBeats(2).skew(0.0,-0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          SwingLeft.changeBeats(4) +
          HingeLeft.changeBeats(2).skew(0.0,-0.5),

          SwingLeft.changeBeats(4) +
          HingeLeft.changeBeats(2).skew(0.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.5,0.5) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,0.5) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,-0.5),

          HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.5,0.5) +
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.5) +
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.5,-0.5) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.5) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.5),

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.5,-0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,-0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Box RH Compact'),
      from:'Right-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
        HingeRight.changeBeats(2).skew(-0.167,0) +
            HingeRight.changeBeats(2).skew(0,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,0),

        HingeRight.changeBeats(2).skew(0.167,0) +
            HingeRight.changeBeats(2).skew(0,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,0),

      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Box LH Compact'),
      from:'Left-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
        HingeLeft.changeBeats(2).skew(0.167,0) +
            HingeLeft.changeBeats(2).skew(0,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,0),

        HingeLeft.changeBeats(2).skew(-0.167,0) +
            HingeLeft.changeBeats(2).skew(0,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,0),
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 2,noDisplay: true,
      paths:[
          BackHingeRight.changeBeats(2) +
          BackHingeRight.changeBeats(2) +
          BackHingeRight.changeBeats(2),

          CastLeft.changeBeats(6),

          CastRight.changeBeats(6),

          BackHingeLeft.changeBeats(2) +
          BackHingeLeft.changeBeats(2) +
          BackHingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Lines RH Compact'),
      from:'Right-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Remember, the centers push, the ends are the pivot.
      Resist the instinct to turn towards the center of the square.
    ''',
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.167,-0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,-0.167) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.167,0.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.167,-0.5) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.167) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.167,0.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.5,-0.5) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.5) +
          HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.5),

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.5,-0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,-0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Lines LH Compact'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Remember, the centers push, the ends are the pivot.
      Resist the instinct to turn towards the center of the square.
    ''',
      paths:[
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.5,0.5) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,0.5) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,-0.5),

          HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.5,0.5) +
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.5) +
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.5),

          HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.167,0.5) +
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.167) +
          HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.167,-0.5),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.167,0.5) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,0.167) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.167,-0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Ocean Waves RH BGGB Compact'),
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
        HingeRight.changeBeats(2).skew(-0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,0.167),

        HingeRight.changeBeats(2).skew(0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,-0.167),

        HingeRight.changeBeats(2).skew(-0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,-0.167),

        HingeRight.changeBeats(2).skew(0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,0.167),
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Ocean Waves LH BGGB Compact'),
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(2).skew(0.167,0.167) +
              HingeLeft.changeBeats(2).skew(0.167,-0.167) +
              HingeLeft.changeBeats(2).skew(-0.167,-0.167),

        HingeLeft.changeBeats(2).skew(-0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,0.167),

        HingeLeft.changeBeats(2).skew(0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,0.167),

        HingeLeft.changeBeats(2).skew(-0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,-0.167),
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Inverted Lines Ends Facing Out Compact'),
      from:'Inverted Lines, Centers Facing',difficulty: 2,
      paths:[
        HingeLeft.changeBeats(2).skew(0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,-0.167),

        HingeLeft.changeBeats(2).skew(-0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,0.167),

        HingeRight.changeBeats(2).skew(-0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,-0.167),

        HingeRight.changeBeats(2).skew(0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,0.167),
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Inverted Lines Ends Facing In Compact'),
      from:'Inverted Lines, Ends Facing',difficulty: 2,
      paths:[
        HingeRight.changeBeats(2).skew(-0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,0.167),

        HingeRight.changeBeats(2).skew(0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,-0.167),

        HingeLeft.changeBeats(2).skew(0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,0.167),

        HingeLeft.changeBeats(2).skew(-0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,-0.167),
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Tidal Wave RH BGBG'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(1.0,0.5),

          SwingRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(1.0,0.5),

          SwingRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(1.0,0.5),

          SwingRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',difficulty: 2,
      paths:[
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.333,-0.17) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.17,-0.333) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.333,0.17),

          HingeLeft.changeBeats(2).skew(0.333,-0.17) +
          HingeLeft.changeBeats(2).skew(0.333,-0.333) +
          HingeLeft.changeBeats(2).skew(0.67,0.67),

          HingeRight.changeBeats(2).skew(0.333,0.5) +
          HingeRight.changeBeats(2).skew(-0.17,0.333) +
          HingeRight.changeBeats(2).skew(0.67,0.17),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.333,0.5) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.17,0.333) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.333,0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',difficulty: 2,
      paths:[
          HingeRight.changeBeats(2).skew(0.333,0.17) +
          HingeRight.changeBeats(2).skew(0.333,0.333) +
          HingeRight.changeBeats(2).skew(0.67,-0.67),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.333,0.17) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.17,0.333) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.333,-0.17),

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.333,-0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.17,-0.333) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.333,-0.17),

          HingeLeft.changeBeats(2).skew(0.333,-0.5) +
          HingeLeft.changeBeats(2).skew(-0.17,-0.333) +
          HingeLeft.changeBeats(2).skew(0.67,-0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.333,-0.17) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.17,-0.333) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.333,0.17),

          HingeLeft.changeBeats(2).skew(0.333,-0.17) +
          HingeLeft.changeBeats(2).skew(0.333,-0.333) +
          HingeLeft.changeBeats(2).skew(0.67,0.67),

          HingeLeft.changeBeats(2).skew(0.333,-0.5) +
          HingeLeft.changeBeats(2).skew(-0.17,-0.333) +
          HingeLeft.changeBeats(2).skew(0.67,-0.17),

          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.333,-0.5) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.17,-0.333) +
          QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.333,-0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.333,0.17) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.17,0.333) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.333,-0.17),

          HingeRight.changeBeats(2).skew(0.333,0.17) +
          HingeRight.changeBeats(2).skew(0.333,0.333) +
          HingeRight.changeBeats(2).skew(0.67,-0.67),

          HingeRight.changeBeats(2).skew(0.333,0.5) +
          HingeRight.changeBeats(2).skew(-0.17,0.333) +
          HingeRight.changeBeats(2).skew(0.67,0.17),

          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.333,0.5) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.17,0.333) +
          QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.333,0.17)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Inverted Tidal Line RH'),
      from:'Right-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(1.0,0.5),

          SwingRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(1.0,0.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Inverted Tidal Line LH'),
      from:'Left-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          SwingRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(1.0,0.5),

          SwingRight.changeBeats(4).scale(0.5,0.5) +
          HingeRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',difficulty: 2,
      paths:[
          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',difficulty: 2,
      paths:[
          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5),

          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5),

          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5),

          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns Right-Hand Centers',difficulty: 2,
      paths:[
          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5),

          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns Left-Hand Centers',difficulty: 2,
      paths:[
          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5),

          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5),

          HingeLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5),

          HingeRight.changeBeats(2).scale(0.5,1.0) +
          SwingRight.changeBeats(4).scale(0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Alamo Wave'),
      from:'Alamo Wave',difficulty: 2,
      paths:[
          SxtnthLeft +
          SwingRight.changeBeats(3.9) +
          HingeRight.changeBeats(2).skew(-0.414,0.0),

          SxtnthRight +
          SwingRight.changeBeats(3.9) +
          HingeRight.changeBeats(2).skew(0.414,0.0),

          SxtnthLeft +
          SwingRight.changeBeats(3.9) +
          HingeRight.changeBeats(2).skew(-0.414,0.0),

          SxtnthRight +
          SwingRight.changeBeats(3.9) +
          HingeRight.changeBeats(2).skew(0.414,0.0)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('Thar LH Boys'),
      from:'Thar',difficulty: 2,
      paths:[
          SwingRight.changeBeats(3.9) +
          HingeRight.changeBeats(2).skew(0.0,0.414) +
          SxtnthRight,

          SwingRight.changeBeats(3.9) +
          HingeRight.changeBeats(2).skew(0.0,-0.414) +
          SxtnthLeft,

          SwingRight.changeBeats(3.9) +
          HingeRight.changeBeats(2).skew(0.0,0.414) +
          SxtnthRight,

          SwingRight.changeBeats(3.9) +
          HingeRight.changeBeats(2).skew(0.0,-0.414) +
          SxtnthLeft
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #1 Compact'),
      from:'3 and 1 Lines #1',noDisplay: true,
      paths:[
        HingeLeft.changeBeats(2).skew(0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,-0.167),

        HingeLeft.changeBeats(2).skew(-0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,0.167),

        HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.167,0.5) +
            HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.167) +
            HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.167,-0.5),

        QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.167,0.5) +
            QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,0.167,) +
            QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.167,-0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #2 Compact'),
      from:'3 and 1 Lines #2',noDisplay: true,
      paths:[
        HingeRight.changeBeats(2).skew(-0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,0.167),

        HingeRight.changeBeats(2).skew(0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,-0.167),

        HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.167,0.5) +
            HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.167) +
            HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.167,-0.5),

        QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.167,0.5) +
            QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,0.167,) +
            QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.167,-0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #3 Compact'),
      from:'3 and 1 Lines #3',noDisplay: true,
      paths:[
        QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.167,-0.5) +
            QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,-0.167,) +
            QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.167,0.5),

        HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.167,-0.5) +
            HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.167) +
            HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.167,0.5),

        HingeLeft.changeBeats(2).skew(0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,0.167),

        HingeLeft.changeBeats(2).skew(-0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,-0.167),
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #4 Compact'),
      from:'3 and 1 Lines #4',noDisplay: true,
      paths:[
        QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.167,-0.5) +
            QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,-0.167,) +
            QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.167,0.5),

        HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.167,-0.5) +
            HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.167) +
            HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.167,0.5),

        HingeRight.changeBeats(2).skew(-0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,-0.167),

        HingeRight.changeBeats(2).skew(0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,0.167),
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #5 Compact'),
      from:'3 and 1 Lines #5',noDisplay: true,
      paths:[
        HingeRight.changeBeats(2).skew(-0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,0.167),

        HingeRight.changeBeats(2).skew(0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,-0.167),

        HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.5,-0.5) +
            HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.5) +
            HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.5),

        QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.5,-0.5) +
            QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,-0.5) +
            QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #6 Compact'),
      from:'3 and 1 Lines #6',noDisplay: true,
      paths:[
        HingeLeft.changeBeats(2).skew(0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,-0.167),

        HingeLeft.changeBeats(2).skew(-0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,0.167),

        HingeLeft.changeBeats(2).scale(2.0,2.0).skew(0.5,-0.5) +
            HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.5) +
            HingeLeft.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.5),

        QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.5,-0.5) +
            QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,-0.5) +
            QuarterLeft.changeBeats(2).changehands(Hands.RIGHT).skew(-0.5,0.5)
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #7 Compact'),
      from:'3 and 1 Lines #7',noDisplay: true,
      paths:[
        QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.5,0.5) +
            QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,0.5) +
            QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,-0.5),

        HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.5,0.5) +
            HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.5) +
            HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.5),

        HingeRight.changeBeats(2).skew(-0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,-0.167),

        HingeRight.changeBeats(2).skew(0.167,-0.167) +
            HingeRight.changeBeats(2).skew(0.167,0.167) +
            HingeRight.changeBeats(2).skew(-0.167,0.167),
      ]),

    AnimatedCall('Cast Off Three Quarters',
      formation:Formation('3 and 1 Lines #8 Compact'),
      from:'3 and 1 Lines #8',noDisplay: true,
      paths:[
        QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(0.5,0.5) +
            QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,0.5) +
            QuarterRight.changeBeats(2).changehands(Hands.LEFT).skew(-0.5,-0.5),

        HingeRight.changeBeats(2).scale(2.0,2.0).skew(0.5,0.5) +
            HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,0.5) +
            HingeRight.changeBeats(2).scale(2.0,2.0).skew(-0.5,-0.5),

        HingeLeft.changeBeats(2).skew(0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,-0.167) +
            HingeLeft.changeBeats(2).skew(-0.167,0.167),

        HingeLeft.changeBeats(2).skew(-0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,0.167) +
            HingeLeft.changeBeats(2).skew(0.167,-0.167),
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight.changeBeats(6)
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          CastLeft.changeBeats(6),

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft.changeBeats(6)
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight.changeBeats(6)
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastRight.changeBeats(6)
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          CastLeft.changeBeats(6)
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Two-Faced Lines RH Compact'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
        Path(),

        HingeRight.changeBeats(2).changeBeats(2).skew(-0.167,0) +
            HingeRight.changeBeats(2).changeBeats(2).skew(0,-0.167) +
            HingeRight.changeBeats(2).changeBeats(2).skew(0.167,0),

        HingeRight.changeBeats(2).changeBeats(2).skew(0.167,0) +
            HingeRight.changeBeats(2).changeBeats(2).skew(0,0.167) +
            HingeRight.changeBeats(2).changeBeats(2).skew(-0.167,0),

        Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Two-Faced Lines LH Compact'),
      from:'Left-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
        Path(),

        HingeLeft.changeBeats(2).changeBeats(2).skew(0.167,0) +
            HingeLeft.changeBeats(2).changeBeats(2).skew(0,-0.167) +
            HingeLeft.changeBeats(2).changeBeats(2).skew(-0.167,0),

        HingeLeft.changeBeats(2).changeBeats(2).skew(-0.167,0) +
            HingeLeft.changeBeats(2).changeBeats(2).skew(0,0.167) +
            HingeLeft.changeBeats(2).changeBeats(2).skew(0.167,0),

        Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Ocean Waves RH BGGB Compact'),
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
        Path(),

        HingeLeft.changeBeats(2).changeBeats(2).skew(0.167,0) +
            HingeLeft.changeBeats(2).changeBeats(2).skew(0,-0.167) +
            HingeLeft.changeBeats(2).changeBeats(2).skew(-0.167,0),

        HingeLeft.changeBeats(2).changeBeats(2).skew(-0.167,0) +
            HingeLeft.changeBeats(2).changeBeats(2).skew(0,0.167) +
            HingeLeft.changeBeats(2).changeBeats(2).skew(0.167,0),

        Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Ocean Waves LH BGGB Compact'),
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
        Path(),

        HingeRight.changeBeats(2).changeBeats(2).skew(-0.167,0) +
            HingeRight.changeBeats(2).changeBeats(2).skew(0,-0.167) +
            HingeRight.changeBeats(2).changeBeats(2).skew(0.167,0),

        HingeRight.changeBeats(2).changeBeats(2).skew(0.167,0) +
            HingeRight.changeBeats(2).changeBeats(2).skew(0,0.167) +
            HingeRight.changeBeats(2).changeBeats(2).skew(-0.167,0),

        Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          CastRight.changeBeats(6),

          Path(),

          CastRight.changeBeats(6),

          Path()
      ]),

    AnimatedCall('Centers Cast Off Three Quarters',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          CastLeft.changeBeats(6),

          Path(),

          CastLeft.changeBeats(6),

          Path()
      ]),

    AnimatedCall('Very Centers Cast Off Three Quarters',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          Path(),

          CastLeft.changeBeats(6),

          Path()
      ]),

    AnimatedCall('Very Centers Cast Off Three Quarters',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          Path(),

          CastRight.changeBeats(6),

          Path()
      ]),
  ];

