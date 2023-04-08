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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> Slip = [

    AnimatedCall('Slip',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingRight,

          SwingRight,

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Line',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingRight,

          SwingRight,

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Line',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingLeft.scale(0.75,0.5),

          SwingLeft.scale(0.75,0.5),

          Path()
      ]),

    AnimatedCall('Slip',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          SwingRight.scale(0.75,0.5),

          SwingRight.scale(0.75,0.5),

          Path()
      ]),

    AnimatedCall('As Couples Slip',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',group:' ',fractions:'2',actives:'All',
      paths:[
          Path(),

          Path(),

          SwingLeft.changeBeats(4).scale(1.5,1.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5)
      ]),

    AnimatedCall('All 8 Slip',
      formation:Formations.TharLHBoys,
      from:'Thar',group:' ',fractions:'1.5',actives:'All',
      paths:[
          SwingLeft,

          Path(),

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Slide',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',fractions:'1.5',
      paths:[
          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0)
      ]),

    AnimatedCall('Slide',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',fractions:'1.5',
      paths:[
          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0)
      ]),

    AnimatedCall('Slide',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines',fractions:'1.5',
      paths:[
          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0)
      ]),

    AnimatedCall('Slide',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',fractions:'1.5',
      paths:[
          BackSashayRight.scale(1.5,0.5),

          BackSashayRight.scale(1.5,0.5),

          BackSashayRight.scale(1.5,0.5),

          BackSashayRight.scale(1.5,0.5)
      ]),

    AnimatedCall('Slide',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',fractions:'1.5',
      paths:[
          BackSashayLeft.scale(1.5,0.5),

          BackSashayLeft.scale(1.5,0.5),

          BackSashayLeft.scale(1.5,0.5),

          BackSashayLeft.scale(1.5,0.5)
      ]),

    AnimatedCall('As Couples Slide',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',group:' ',fractions:'2',
      paths:[
          BackSashayRight.changeBeats(4).scale(2.0,1.0),

          BackSashayRight.changeBeats(4).scale(2.0,1.0),

          BackSashayRight.changeBeats(4).scale(2.0,1.0),

          BackSashayRight.changeBeats(4).scale(2.0,1.0)
      ]),

    AnimatedCall('All 8 Slide',
      formation:Formations.TharLHBoys,
      from:'Thar',group:' ',fractions:'1.5',
      paths:[
          BackSashayRight.scale(1.5,1.0),

          BackSashayRight.scale(1.5,1.0),

          BackSashayRight.scale(1.5,1.0),

          BackSashayRight.scale(1.5,1.0)
      ]),

    AnimatedCall('Swing',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',fractions:'1.5',
      paths:[
          SwingRight,

          SwingRight,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Swing',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',fractions:'1.5',
      paths:[
          SwingLeft,

          SwingLeft,

          SwingLeft,

          SwingLeft
      ]),

    AnimatedCall('Swing',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines',fractions:'1.5',
      paths:[
          SwingLeft,

          SwingLeft,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Swing',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',fractions:'1.5',
      paths:[
          SwingRight.scale(0.75,0.5),

          SwingRight.scale(0.75,0.5),

          SwingRight.scale(0.75,0.5),

          SwingRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Swing',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',fractions:'1.5',
      paths:[
          SwingLeft.scale(0.75,0.5),

          SwingLeft.scale(0.75,0.5),

          SwingLeft.scale(0.75,0.5),

          SwingLeft.scale(0.75,0.5)
      ]),

    AnimatedCall('As Couples Swing',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',group:' ',fractions:'2',
      paths:[
          SwingRight.changeBeats(4).scale(1.5,1.5),

          SwingRight.changeBeats(4).scale(0.5,0.5),

          SwingRight.changeBeats(4).scale(0.5,0.5),

          SwingRight.changeBeats(4).scale(1.5,1.5)
      ]),

    AnimatedCall('All 8 Swing',
      formation:Formations.TharLHBoys,
      from:'Thar',group:' ',fractions:'1.5',
      paths:[
          SwingRight,

          SwingRight,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Slither',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Line',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayRight.scale(2.0,1.0),

          BackSashayRight.scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Line',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayLeft.scale(2.0,1.0),

          BackSashayLeft.scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayLeft.scale(1.5,0.5),

          BackSashayLeft.scale(1.5,0.5),

          Path()
      ]),

    AnimatedCall('Slither',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',fractions:'1.5',actives:'All',
      paths:[
          Path(),

          BackSashayRight.scale(1.5,0.5),

          BackSashayRight.scale(1.5,0.5),

          Path()
      ]),

    AnimatedCall('As Couples Slither',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',group:' ',fractions:'2',actives:'All',
      paths:[
          Path(),

          Path(),

          BackSashayLeft.changeBeats(4).scale(2.0,1.0),

          BackSashayLeft.changeBeats(4).scale(2.0,1.0)
      ]),

    AnimatedCall('All 8 Slither',
      formation:Formations.TharLHBoys,
      from:'Thar',group:' ',fractions:'1.5',actives:'All',
      paths:[
          BackSashayLeft.scale(2.0,1.0),

          Path(),

          BackSashayLeft.scale(2.0,1.0),

          Path()
      ]),
  ];

