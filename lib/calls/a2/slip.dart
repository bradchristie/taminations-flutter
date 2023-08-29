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
import '../../moves.dart';

  final List<AnimatedCall> Slip = [

    AnimatedCall('Slip',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingRight,

          SwingRight,

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Line',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingRight,

          SwingRight,

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Line',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingLeft.scale(0.75,0.5),

          SwingLeft.scale(0.75,0.5),

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingRight.scale(0.75,0.5),

          SwingRight.scale(0.75,0.5),

          Path()
      ]),

    AnimatedCall('As Couples Slip',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',group:' ',fractions:'2',actives:'All',
      paths:[
          Path(),

          Path(),

          SwingLeft.changeBeats(4).scale(1.5,1.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5)
      ]),

    AnimatedCall('All 8 Slip',
      formation:Formation('Thar LH Boys'),
      from:'Thar',group:' ',fractions:'1.5',actives:'All',
      paths:[
          SwingLeft,

          Path(),

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Slide',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',fractions:'1.5',
      paths:[
          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0)
      ]),

    AnimatedCall('Slide',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',fractions:'1.5',
      paths:[
          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0)
      ]),

    AnimatedCall('Slide',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',fractions:'1.5',
      paths:[
          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0)
      ]),

    AnimatedCall('Slide',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',fractions:'1.5',
      paths:[
          BackSashayRight.scale(1.5,0.5),

          BackSashayRight.scale(1.5,0.5),

          BackSashayRight.scale(1.5,0.5),

          BackSashayRight.scale(1.5,0.5)
      ]),

    AnimatedCall('Slide',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',fractions:'1.5',
      paths:[
          BackSashayLeft.scale(1.5,0.5),

          BackSashayLeft.scale(1.5,0.5),

          BackSashayLeft.scale(1.5,0.5),

          BackSashayLeft.scale(1.5,0.5)
      ]),

    AnimatedCall('As Couples Slide',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',group:' ',fractions:'2',
      paths:[
          BackSashayRight.changeBeats(4).scale(2.0,1.0),

          BackSashayRight.changeBeats(4).scale(2.0,1.0),

          BackSashayRight.changeBeats(4).scale(2.0,1.0),

          BackSashayRight.changeBeats(4).scale(2.0,1.0)
      ]),

    AnimatedCall('All 8 Slide',
      formation:Formation('Thar LH Boys'),
      from:'Thar',group:' ',fractions:'1.5',
      paths:[
          BackSashayRight.scale(1.5,1.0),

          BackSashayRight.scale(1.5,1.0),

          BackSashayRight.scale(1.5,1.0),

          BackSashayRight.scale(1.5,1.0)
      ]),

    AnimatedCall('Swing',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',fractions:'1.5',
      paths:[
          SwingRight,

          SwingRight,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Swing',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',fractions:'1.5',
      paths:[
          SwingLeft,

          SwingLeft,

          SwingLeft,

          SwingLeft
      ]),

    AnimatedCall('Swing',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',fractions:'1.5',
      paths:[
          SwingLeft,

          SwingLeft,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Swing',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',fractions:'1.5',
      paths:[
          SwingRight.scale(0.75,0.5),

          SwingRight.scale(0.75,0.5),

          SwingRight.scale(0.75,0.5),

          SwingRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Swing',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',fractions:'1.5',
      paths:[
          SwingLeft.scale(0.75,0.5),

          SwingLeft.scale(0.75,0.5),

          SwingLeft.scale(0.75,0.5),

          SwingLeft.scale(0.75,0.5)
      ]),

    AnimatedCall('As Couples Swing',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',group:' ',fractions:'2',
      paths:[
          SwingRight.changeBeats(4).scale(1.5,1.5),

          SwingRight.changeBeats(4).scale(0.5,0.5),

          SwingRight.changeBeats(4).scale(0.5,0.5),

          SwingRight.changeBeats(4).scale(1.5,1.5)
      ]),

    AnimatedCall('All 8 Swing',
      formation:Formation('Thar LH Boys'),
      from:'Thar',group:' ',fractions:'1.5',
      paths:[
          SwingRight,

          SwingRight,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Slither',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Line',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Line',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayLeft.scale(1.5,0.5),

          BackSashayLeft.scale(1.5,0.5),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayRight.scale(1.5,0.5),

          BackSashayRight.scale(1.5,0.5),

          Path()
      ]),

    AnimatedCall('As Couples Slither',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',group:' ',fractions:'2',actives:'All',
      paths:[
          Path(),

          Path(),

          BackSashayLeft.changeBeats(4).scale(2.0,1.0),

          BackSashayLeft.changeBeats(4).scale(2.0,1.0)
      ]),

    AnimatedCall('All 8 Slither',
      formation:Formation('Thar LH Boys'),
      from:'Thar',group:' ',fractions:'1.5',actives:'All',
      paths:[
          BackSashayLeft.scale(2.0,1.0),

          Path(),

          BackSashayLeft.scale(2.0,1.0),

          Path()
      ]),
  ];

