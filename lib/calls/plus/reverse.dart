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

final List<AnimatedCall> Reverse = [

  AnimatedCall('Reverse Half Sashay',
      formation:Formation('Facing Couples Compact'),
      difficulty: 2,
      group: 'Reverse',
      paths:[
        SashayRight.changeBeats(4),
        BackSashayLeft.changeBeats(4)
      ]),

  AnimatedCall('Reverse Rollaway',
      formation:Formation('Facing Couples'),
      difficulty: 2,
      group: 'Reverse',
      notForSequencer: true,
      paths:[
        FoldRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(0.6,0.5) +
            UmTurnRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).skew(1.2,1.0),
        DodgeLeft.changehands(Hands.GRIPLEFT),
      ]),

  AnimatedCall('Reverse Single Circle to a Wave',
      formation:Formation('Facing Couples Compact'),
      difficulty: 2,
      group: 'Reverse',
      paths:[
        Forward.scale(0.8,0.3) +
            ssqtrright +
            ssqtrright +
            ExtendRight.scale(0.7,2.0),

        Forward.scale(0.8,0.3) +
            ssqtrright +
            ssqtrright +
            Forward.scale(0.7,0.7),

      ]),

  AnimatedCall('Reverse Wheel Around',
      formation:Formation('Couples Facing Out Compact'),
      difficulty: 2,
      group: 'Reverse',
      paths:[
        BelleReverseWheel,
        BeauReverseWheel,
      ]),

];