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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> TeamUp = [

    AnimatedCall('Team Up',
        from: 'Lines Facing Out',
        formation: Formation('Lines Facing Out'),
        numbers: ['1','8','2','7','3','6','4','5'],
        paths: [
          LeadLeft.scale(1, 3).changeBeats(2) +
              HingeRight.skew(0, 1),
          DodgeLeft.skew(-1, 0),
          RunRight.skew(-1, 0),
          LeadRight.scale(2, 3).changeBeats(2) +
              HingeRight,
        ]),

    AnimatedCall('Team Up',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          QuarterRight.changeBeats(1.5).changehands(2).skew(1.0,0.0),

          LeadRight +
          HingeRight,

          DodgeLeft,

          RunRight
      ]),

    AnimatedCall('Team Up',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',
      paths:[
          LeadLeft_2.skew(-1.0,1.0) +
          QuarterRight.changeBeats(1.5).changehands(2).skew(1.0,0.0),

          RunRight.skew(1.0,0.0),

          DodgeLeft.skew(1.0,0.0),

          LeadRight_2.skew(0.0,-1.0) +
          HingeRight
      ]),

    AnimatedCall('Team Up',
        from: '3 and 1 Lines',
        formation: Formation('3 and 1 Lines #2'),
        numbers: ['1','8','2','7','3','6','4','5'],
        paths: [
          ExtendLeft.changeBeats(2).scale(2, 0.5) +
              HingeRight.scale(1, 0.5),
          BackSashayLeft.skew(-1, 0),
          BackSashayLeft.skew(1, 0),
          ExtendLeft.changeBeats(2).scale(2, 0.5) +
              HingeRight.scale(1, 0.5)
        ]),

    AnimatedCall('Team Up',
      formation:Formation('T-Bone URDR'),
      from:'T-Bones',
      paths:[
          Forward +
          QuarterLeft.changeBeats(1.5).changehands(1).skew(1.0,0.0),

          DodgeLeft,

          RunRight,

          RunLeft.changehands(1)
      ]),
  ];

