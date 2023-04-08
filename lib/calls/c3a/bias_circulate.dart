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

  final List<AnimatedCall> BiasCirculate = [

    AnimatedCall('Bias Circulate',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          HingeRight +
          LeadLeft.changeBeats(3),

          RunLeft.changeBeats(7.5),

          LeadLeft.changeBeats(3) +
          HingeRight +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          RunRight.changeBeats(7.5).scale(2.0,3.0)
      ]),

    AnimatedCall('Bias Circulate',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          RunLeft.changeBeats(7.5).scale(2.0,3.0),

          LeadRight.changeBeats(3) +
          HingeLeft +
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          RunRight.changeBeats(7.5),

          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          HingeLeft +
          LeadRight.changeBeats(3)
      ]),
  ];

