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

  final List<AnimatedCall> WithTheFlow = [

    AnimatedCall('Bend the Line With the Flow',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',group:' ',fractions:'2',
      paths:[
          HingeRight.changeBeats(2) +
          Forward_4,

          BackHingeLeft.changeBeats(2) +
          DodgeLeft.changeBeats(4),

          BackHingeLeft.changeBeats(2) +
          DodgeLeft.changeBeats(4),

          HingeRight.changeBeats(2) +
          Forward_4
      ]),

    AnimatedCall('Wheel and Deal With the Flow',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',group:' ',fractions:'4',
      paths:[
          RunRight.changeBeats(4).changehands(2).scale(1.0,2.0).skew(1.0,0.0) +
          Forward_2,

          UmTurnRight.changeBeats(4).changehands(1).skew(1.0,0.0) +
          DodgeLeft.changeBeats(2),

          UmTurnRight.changeBeats(4).changehands(1).skew(1.0,0.0) +
          DodgeLeft.changeBeats(2),

          RunRight.changeBeats(4).changehands(2).scale(2.0,2.0).skew(1.0,0.0) +
          Forward_2
      ]),

    AnimatedCall('All 4 Couples Right and Left Thru With the Flow',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',fractions:'9.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          BeauWheel +
          DodgeRight.changeBeats(6),

          ExtendRight.changeBeats(3.5).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft +
          BelleWheel +
          Forward_6,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward +
          LeadRight +
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          BeauWheel +
          DodgeRight.changeBeats(6),

          ExtendRight.changeBeats(3.5).scale(3.0,1.0) +
          Forward_2 +
          ExtendLeft +
          BelleWheel +
          Forward_6
      ]),
  ];

