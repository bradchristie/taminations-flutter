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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> Substitute = [ 

    AnimatedCall('Substitute',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',
      paths:[
          ExtendRight.changehands(6).scale(1.0,0.5) +
          ExtendLeft.changehands(6).scale(1.0,0.5),

          ExtendLeft.changehands(5).scale(1.0,0.5) +
          ExtendRight.changehands(5).scale(1.0,0.5),

          Back.changehands(6).skew(0.0,0.5) +
          Back.changehands(6).skew(0.0,-0.5),

          Back.changehands(5).skew(0.0,-0.5) +
          Back.changehands(5).skew(0.0,0.5)
      ]),

    AnimatedCall('Substitute',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          ExtendRight.changeBeats(1.5).changehands(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(1).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(2.0,0.5),

          RetreatRight.changeBeats(1.5).changehands(5).scale(2.0,0.5) +
          RetreatLeft.changeBeats(1.5).changehands(5).scale(2.0,0.5),

          RetreatLeft.changeBeats(1.5).changehands(6).scale(2.0,0.5) +
          RetreatRight.changeBeats(1.5).changehands(6).scale(2.0,0.5)
      ]),

    AnimatedCall('Substitute',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          RetreatRight.changeBeats(1.5).changehands(5).scale(2.0,0.5) +
          RetreatLeft.changeBeats(1.5).changehands(5).scale(2.0,0.5),

          RetreatLeft.changeBeats(1.5).changehands(6).scale(2.0,0.5) +
          RetreatRight.changeBeats(1.5).changehands(6).scale(2.0,0.5),

          ExtendRight.changeBeats(1.5).changehands(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(1).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(2.0,0.5)
      ]),

    AnimatedCall('Substitute',
      formation:Formations.GalaxyRHGP,
      from:'Galaxy',
      paths:[
          ExtendLeft.changeBeats(1.5).changehands(6).scale(1.0,0.5) +
          ExtendRight.changeBeats(1.5).changehands(6).scale(1.0,0.5),

          DodgeRight,

          RetreatLeft.changeBeats(1.5).changehands(6).scale(1.0,0.5) +
          RetreatRight.changeBeats(1.5).changehands(6).scale(1.0,0.5),

          Path()
      ]),
  ];

