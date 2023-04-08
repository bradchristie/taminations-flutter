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

  final List<AnimatedCall> TeamUp = [ 

    AnimatedCall('Team Up',
      formation:Formations.CompletedDoublePassThru,
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
      formation:Formations.InvertedLinesEndsFacingOut,
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
      formation:Formations.TmBoneURDR,
      from:'T-Bones',
      paths:[
          Forward +
          QuarterLeft.changeBeats(1.5).changehands(1).skew(1.0,0.0),

          DodgeLeft,

          RunRight,

          RunLeft.changehands(1)
      ]),
  ];

