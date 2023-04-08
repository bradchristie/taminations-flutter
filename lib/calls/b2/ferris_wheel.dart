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

  final List<AnimatedCall> FerrisWheel = [

    AnimatedCall('Ferris Wheel',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Handed Two-Faced Lines, strictly',difficulty: 1,
      paths:[
          Forward_2.changehands(2) +
          RunRight.changeBeats(4).changehands(6).scale(1.0,2.0).skew(1.0,0.0),

          Forward_2.changehands(1) +
          UmTurnRight.changeBeats(4).changehands(5).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ferris Wheel',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Handed Two-Faced Lines',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(3.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(3.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Ferris Wheel',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Handed Two-Faced Lines',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(6).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(6).skew(3.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(3.0,0.0)
      ]),

    AnimatedCall('Ferris Wheel',
      formation:Formations.TmBoneCouples_1,
      from:'T-Bone Couples',difficulty: 2,
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(3.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(3.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(6).skew(1.0,0.0)
      ]),

    AnimatedCall('Ferris Wheel',
      formation:Formations.TmBoneCouples_2,
      from:'T-Bone Couples 2',difficulty: 2,
      paths:[
          UmTurnLeft.changeBeats(4).changehands(6).skew(3.0,0.0),

          RunLeft.changeBeats(4).changehands(5).scale(2.0,2.0).skew(3.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(1.0,0.0),

          RunRight.changeBeats(4).changehands(6).scale(2.0,2.0).skew(1.0,0.0)
      ]),
  ];

