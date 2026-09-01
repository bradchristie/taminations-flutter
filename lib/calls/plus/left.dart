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

final List<AnimatedCall> Left = [

  AnimatedCall('Left Half Tag',
      formation:Formation('Two-Faced Lines LH Compact'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      group: 'Left',
      paths:[
        LeadLeft.scale(1.5,0.5) +
            Forward.changeBeats(2),
        LeadLeft.scale(1.5,0.5) +
            Forward_2.changeBeats(2.5),
        LeadLeft.scale(0.5,0.5) +
            Forward.changeBeats(1.5) +
            Forward,
        LeadLeft.scale(0.5,0.5) +
            Forward.changeBeats(2)
      ]),

  AnimatedCall('Left Hinge',
      formation:Formation('Lines Facing Out Compact'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      group: 'Left',
      paths:[
        LeadLeft.scale(1.5,1.5),
        QuarterRight.skew(-0.5,-0.5),
        LeadLeft.scale(1.5,0.5),
        QuarterRight.skew(-0.5,-1.5),
      ]),


  AnimatedCall('Left Pass Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 1,
      fractions: '1',
      group: 'Left',
      paths:[
        ExtendRight.scale(1.5, 0.5) +
            ExtendLeft.scale(1.5,0.5),
        ExtendRight.scale(1.5, 0.5) +
            ExtendLeft.scale(1.5,0.5),
      ]),

  AnimatedCall('Left Tag the Line',
      formation:Formation('Two-Faced Lines LH Compact'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      group: 'Left',
      paths:[
        LeadLeft.scale(0.5,0.5) +
            Forward.changeBeats(4).scale(2.5,1) +
            ExtendLeft,
        LeadLeft.scale(0.5,0.5) +
            Forward.changeBeats(4).scale(2.5,1) +
            ExtendLeft,
        LeadLeft.scale(0.5,0.5) +
            Forward.changeBeats(4).scale(2.5,1) +
            Forward,
        LeadLeft.scale(0.5,0.5) +
            Forward.changeBeats(4).scale(2.5,1) +
            Forward,
      ]),

  AnimatedCall('Left Wheel and Deal',
      formation:Formation('Lines Facing Out Compact'),
      from:'Lines Facing Out',difficulty: 2,
      group: 'Left',
      paths:[
        RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(2.0,2.0).skew(1.5,0.0),
        UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(1.5,0.0),
        UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(-.5,0.0),
        RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.0,2.0).skew(-.5,0.0),
      ]),

];