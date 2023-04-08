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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> DiveThru = [

    AnimatedCall('Dive Thru',
      formation:Formations.PassThru,
      group:' ',difficulty: 1,
      paths:[
          ExtendRight.changehands(2).scale(1.0,0.5) +
          ExtendLeft.changehands(2).scale(1.0,0.5),

          ExtendLeft.changehands(1).scale(1.0,0.5) +
          ExtendRight.changehands(1).scale(1.0,0.5),

          ExtendLeft.changehands(6).scale(1.0,0.5) +
          ExtendRight.changehands(6).scale(1.0,0.5) +
          RunRight.changehands(6),

          ExtendRight.changehands(5).scale(1.0,0.5) +
          ExtendLeft.changehands(5).scale(1.0,0.5) +
          FlipLeft.changehands(5)
      ]),

    AnimatedCall('Heads Arch, Sides Dive Thru',
      formation:Formations.NormalLines,
      group:' ',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(1.5).changehands(6).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).changehands(6).scale(2.0,0.5) +
          RunRight.changehands(6),

          ExtendRight.changeBeats(1.5).changehands(5).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(5).scale(2.0,0.5) +
          FlipLeft.changehands(5),

          ExtendRight.changeBeats(1.5).changehands(2).scale(2.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(1.5).changehands(1).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(2.0,0.5)
      ]),

    AnimatedCall('Heads Wheel Around and make an Arch, Sides Dive Thru',
      formation:Formations.Promenade_2,
      group:' ',difficulty: 2,
      paths:[
          BackHingeRight.changeBeats(1.25).scale(0.5,0.5) +
          HalfBackHingeRight.scale(0.5,0.5).skew(-0.35,0.35) +
          ExtendLeft.changeBeats(1.5).changehands(6).scale(1.75,0.5) +
          ExtendRight.changeBeats(1.5).changehands(6).scale(1.75,0.5) +
          RunRight.changehands(6),

          HingeLeft.changeBeats(1.25).scale(0.5,0.5) +
          EighthLeft.changeBeats(.75).changehands(1).skew(0.6,-0.1) +
          ExtendRight.changeBeats(1.5).changehands(5).scale(1.75,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(5).scale(1.75,0.5) +
          FlipLeft.changehands(5),

          HalfBackHingeRight.changeBeats(2).scale(0.5,0.5).skew(-0.25,0.25) +
          ExtendRight.changeBeats(1.5).changehands(2).scale(1.75,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(2).scale(1.75,0.5),

          EighthLeft.changeBeats(2).changehands(1).skew(0.71,-0.2) +
          ExtendLeft.changeBeats(1.5).changehands(1).scale(1.75,0.5) +
          ExtendRight.changeBeats(1.5).changehands(1).scale(1.75,0.5)
      ]),
  ];

