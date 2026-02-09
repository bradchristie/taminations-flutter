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

final List<AnimatedCall> CastOffOneQuarter = [

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 2,
      paths:[
        BackHingeRight.skew(0, -0.5),
        HingeLeft.skew(0,-0.5)
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
        HingeRight.skew(0, 0.5),
        BackHingeLeft.skew(0, 0.5)
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
        HingeRight.skew(0.0,-0.5),
        HingeRight.skew(0.0,0.5)
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
            HingeLeft.skew(0.0,0.5),
            HingeLeft.skew(0.0,-0.5)
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
        BackHingeLeft.skew(0, 0.5),
        HingeRight.skew(0,0.5),
        HingeLeft.skew(0, -0.5),
        BackHingeRight.skew(0, -0.5),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
        HingeRight,
        HingeRight
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
        HingeLeft,
        HingeLeft
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 2, //noDisplay: true,
      paths:[
        BackHingeRight,
        HingeLeft,
        HingeRight,
        BackHingeLeft
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Remember, the centers push, the ends are the pivot.
      Resist the instinct to turn towards the center of the square.
    ''',
      paths:[
        BackHingeRight.skew(0, -0.5),
        HingeLeft.skew(0,-0.5),
        HingeLeft.skew(0,-0.5),
        BackHingeRight.skew(0, -0.5),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Remember, the centers push, the ends are the pivot.
      Resist the instinct to turn towards the center of the square.
    ''',
      paths:[
        BackHingeLeft.skew(0, 0.5),
        HingeRight.skew(0, 0.5),
        HingeRight.skew(0, 0.5),
        BackHingeLeft.skew(0, 0.5),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
        HingeRight,
        HingeRight,
        HingeRight,
        HingeRight,
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
        HingeLeft,
        HingeLeft,
        HingeLeft,
        HingeLeft,
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',difficulty: 2,
      paths:[
        HingeLeft,
        HingeLeft,
        HingeRight,
        HingeRight,
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',difficulty: 2,
      paths:[
        HingeRight,
        HingeRight,
        HingeLeft,
        HingeLeft,
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Tidal Wave RH BGBG'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
        HingeRight.scale(1.0,0.5),
        HingeRight.scale(1.0,0.5),
        HingeRight.scale(1.0,0.5),
        HingeRight.scale(1.0,0.5)
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',difficulty: 2,
      paths:[
        HingeLeft.scale(1.0,0.5),
        HingeLeft.scale(1.0,0.5),
        HingeLeft.scale(1.0,0.5),
        HingeLeft.scale(1.0,0.5)
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',difficulty: 2,
      paths:[
        BackHingeRight.scale(1,0.5),
        HingeLeft.scale(1,0.5),
        HingeRight.scale(1,0.5),
        BackHingeLeft.scale(1,0.5),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',difficulty: 2,
      paths:[
        HingeRight.scale(1,0.5),
        BackHingeLeft.scale(1,0.5),
        BackHingeRight.scale(1,0.5),
        HingeLeft.scale(1,0.5),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
        BackHingeRight.scale(1,0.5),
        HingeLeft.scale(1,0.5),
        HingeLeft.scale(1,0.5),
        BackHingeRight.scale(1,0.5),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
        BackHingeLeft.scale(1,0.5),
        HingeRight.scale(1,0.5),
        HingeRight.scale(1,0.5),
        BackHingeLeft.scale(1,0.5),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Inverted Tidal Line RH'),
      from:'Right-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
        HingeRight.scale(1.0,0.5),
        HingeRight.scale(1.0,0.5),
        HingeLeft.scale(1.0,0.5),
        HingeLeft.scale(1.0,0.5)
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Inverted Tidal Line LH'),
      from:'Left-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
        HingeLeft.scale(1.0,0.5),
        HingeLeft.scale(1.0,0.5),
        HingeRight.scale(1.0,0.5),
        HingeRight.scale(1.0,0.5)
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',difficulty: 2,
      paths:[
        HingeRight.scale(0.5,1.0),
        HingeRight.scale(0.5,1.0),
        HingeRight.scale(0.5,1.0),
        HingeRight.scale(0.5,1.0),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',difficulty: 2,
      paths:[
        HingeLeft.scale(0.5,1.0),
        HingeLeft.scale(0.5,1.0),
        HingeLeft.scale(0.5,1.0),
        HingeLeft.scale(0.5,1.0),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns Right-Hand Centers',difficulty: 2,
      paths:[
        HingeLeft.scale(0.5,1.0),
        HingeRight.scale(0.5,1.0),
        HingeRight.scale(0.5,1.0),
        HingeLeft.scale(0.5,1.0),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns Left-Hand Centers',difficulty: 2,
      paths:[
        HingeRight.scale(0.5,1.0),
        HingeLeft.scale(0.5,1.0),
        HingeLeft.scale(0.5,1.0),
        HingeRight.scale(0.5,1.0),
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Alamo Wave'),
      from:'Alamo Wave',difficulty: 2,
      paths:[
        SxtnthLeft +
            HingeRight.skew(0.414,0.0),
        SxtnthRight +
            HingeRight.skew(-0.414,0.0),
        SxtnthLeft +
            HingeRight.skew(0.414,0.0),
        SxtnthRight +
            HingeRight.skew(-0.414,0.0)
      ]),

  AnimatedCall('Cast Off One Quarter',
      formation:Formation('Thar LH Boys'),
      from:'Thar',difficulty: 2,
      paths:[
        HingeRight.skew(0.0,-0.414) +
            SxtnthLeft,
        HingeRight.skew(0.0,0.414) +
            SxtnthRight,
        HingeRight.skew(0.0,-0.414) +
            SxtnthLeft,
        HingeRight.skew(0.0,0.414) +
            SxtnthRight
      ]),






  AnimatedCall('Cast Off One Half',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 2,
      paths:[
        UmTurnLeft.changehands(Hands.RIGHT).skew(0, -2),
        SwingLeft.scale(2, 2).skew(0, -2)
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
        SwingRight.scale(2, 2).skew(0, 2),
        UmTurnRight.changehands(Hands.LEFT).skew(0, 2),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
        SwingRight,
        SwingRight
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
        SwingLeft,
        SwingLeft
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
        UmTurnRight.changehands(Hands.LEFT).skew(0, 2),
        SwingRight.scale(2, 2).skew(0, 2),
        SwingLeft.scale(2, 2).skew(0, -2),
        UmTurnLeft.changehands(Hands.RIGHT).skew(0, -2),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
        SwingRight,
        SwingRight,
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
        SwingLeft,
        SwingLeft,
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 2, noDisplay: true,
      paths:[
        SwingRight.scale(1, 2).skew(0, 2),
        UmTurnRight.changehands(Hands.LEFT).skew(0, 2),
        UmTurnLeft.changehands(Hands.RIGHT).skew(0, -2),
        SwingLeft.scale(1, 2).skew(0, -2),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Remember, the centers push, the ends are the pivot.
      Resist the instinct to turn towards the center of the square.
    ''',
      paths:[
        UmTurnLeft.changehands(Hands.RIGHT).skew(0, -2),
        SwingLeft.scale(2, 2).skew(0, -2),
        SwingLeft.scale(2, 2).skew(0, -2),
        UmTurnLeft.changehands(Hands.RIGHT).skew(0, -2),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      taminator: '''
      Remember, the centers push, the ends are the pivot.
      Resist the instinct to turn towards the center of the square.
    ''',
      paths:[
        UmTurnRight.changehands(Hands.LEFT).skew(0, 2),
        SwingRight.scale(2, 2).skew(0, 2),
        SwingRight.scale(2, 2).skew(0, 2),
        UmTurnRight.changehands(Hands.LEFT).skew(0, 2),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
        SwingRight,
        SwingRight,
        SwingRight,
        SwingRight,
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
        SwingLeft,
        SwingLeft,
        SwingLeft,
        SwingLeft,
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',difficulty: 2,
      paths:[
        SwingLeft,
        SwingLeft,
        SwingRight,
        SwingRight,
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',difficulty: 2,
      paths:[
        SwingRight,
        SwingRight,
        SwingLeft,
        SwingLeft,
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Tidal Wave RH BGBG'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
      paths:[
        SwingRight.scale(0.5,0.5),
        SwingRight.scale(0.5,0.5),
        SwingRight.scale(0.5,0.5),
        SwingRight.scale(0.5,0.5),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',difficulty: 2,
      paths:[
        SwingLeft.scale(0.5,0.5),
        SwingLeft.scale(0.5,0.5),
        SwingLeft.scale(0.5,0.5),
        SwingLeft.scale(0.5,0.5),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',difficulty: 2,
      paths:[
        UmTurnLeft.changehands(Hands.RIGHT).skew(0,-1),
        SwingLeft.scale(1,.5),
        SwingRight.scale(1,.5),
        UmTurnRight.changehands(Hands.LEFT).skew(0,1),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',difficulty: 2,
      paths:[
        SwingRight.scale(1,.5),
        UmTurnRight.changehands(Hands.LEFT).skew(0,1),
        UmTurnLeft.changehands(Hands.RIGHT).skew(0,-1),
        SwingLeft.scale(1,.5),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
        UmTurnLeft.changehands(Hands.RIGHT).skew(0,-1),
        SwingLeft.scale(1,.5),
        SwingLeft.scale(1,.5),
        UmTurnLeft.changehands(Hands.RIGHT).skew(0,-1),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
        UmTurnRight.changehands(Hands.LEFT).skew(0,1),
        SwingRight.scale(1,.5),
        SwingRight.scale(1,.5),
        UmTurnRight.changehands(Hands.LEFT).skew(0,1),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Inverted Tidal Line RH'),
      from:'Right-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
        SwingRight.scale(0.5,0.5),
        SwingRight.scale(0.5,0.5),
        SwingLeft.scale(0.5,0.5),
        SwingLeft.scale(0.5,0.5)
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Inverted Tidal Line LH'),
      from:'Left-Hand Inverted Tidal Line',difficulty: 2,
      paths:[
        SwingLeft.scale(0.5,0.5),
        SwingLeft.scale(0.5,0.5),
        SwingRight.scale(0.5,0.5),
        SwingRight.scale(0.5,0.5),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',difficulty: 2,
      paths:[
        SwingRight.scale(.5,1),
        SwingRight.scale(.5,1),
        SwingRight.scale(.5,1),
        SwingRight.scale(.5,1),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',difficulty: 2,
      paths:[
        SwingLeft.scale(.5,1),
        SwingLeft.scale(.5,1),
        SwingLeft.scale(.5,1),
        SwingLeft.scale(.5,1),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns Right-Hand Centers',difficulty: 2,
      paths:[
        SwingLeft.scale(.5,1),
        SwingRight.scale(.5,1),
        SwingRight.scale(.5,1),
        SwingLeft.scale(.5,1),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns Left-Hand Centers',difficulty: 2,
      paths:[
        SwingRight.scale(.5,1),
        SwingLeft.scale(.5,1),
        SwingLeft.scale(.5,1),
        SwingRight.scale(.5,1),
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Alamo Wave'),
      from:'Alamo Wave',difficulty: 2,
      paths:[
        SxtnthLeft +
            SwingRight +
            SxtnthLeft,
        SxtnthRight +
            SwingRight +
            SxtnthRight,
        SxtnthLeft +
            SwingRight +
            SxtnthLeft,
        SxtnthRight +
            SwingRight +
            SxtnthRight,
      ]),

  AnimatedCall('Cast Off One Half',
      formation:Formation('Thar LH Boys'),
      from:'Thar',difficulty: 2,
      paths:[
        SwingRight,
        SwingRight,
        SwingRight,
        SwingRight,
      ]),


];

