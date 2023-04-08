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

  final List<AnimatedCall> Face = [

    AnimatedCall('Face Left',
      formation:Formations.FacingCouplesClose,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          QuarterLeft,

          QuarterLeft
      ]),

    AnimatedCall('Face Left',
      formation:Formations.CouplesFacingOutClose,
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          QuarterLeft,

          QuarterLeft
      ]),

    AnimatedCall('Face Right',
      formation:Formations.FacingCouplesClose,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          QuarterRight,

          QuarterRight
      ]),

    AnimatedCall('Face Right',
      formation:Formations.CouplesFacingOutClose,
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          QuarterRight,

          QuarterRight
      ]),

    AnimatedCall('Face In',
      formation:Formations.FacingCouplesClose,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          QuarterRight,

          QuarterLeft
      ]),

    AnimatedCall('Face In',
      formation:Formations.CouplesFacingOutClose,
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          QuarterLeft,

          QuarterRight
      ]),

    AnimatedCall('Face In',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',
      paths:[
          QuarterLeft.skew(0.0,-0.5),

          QuarterRight.skew(0.0,0.5),

          QuarterLeft.skew(0.0,-0.5),

          QuarterRight.skew(0.0,0.5)
      ]),

    AnimatedCall('Face In',
      formation:Formations.LinesFacingOutCompact,
      from:'Lines Facing Out',
      paths:[
          QuarterLeft.skew(-0.5,0.0),

          QuarterLeft.skew(-0.5,0.0),

          QuarterRight.skew(-0.5,0.0),

          QuarterRight.skew(-0.5,0.0)
      ]),

    AnimatedCall('Face Out',
      formation:Formations.FacingCouplesClose,
      from:'Facing Couples',
      paths:[
          QuarterLeft,

          QuarterRight
      ]),

    AnimatedCall('Face Out',
      formation:Formations.CouplesFacingOutClose,
      from:'Couples Facing Out',
      paths:[
          QuarterRight,

          QuarterLeft
      ]),

    AnimatedCall('Face Out',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',
      paths:[
          QuarterRight.skew(0.0,-0.5),

          QuarterLeft.skew(0.0,0.5),

          QuarterRight.skew(0.0,-0.5),

          QuarterLeft.skew(0.0,0.5)
      ]),

    AnimatedCall('Face Out',
      formation:Formations.LinesFacingOutCompact,
      from:'Lines Facing Out',
      paths:[
          QuarterRight.skew(-0.5,0.0),

          QuarterRight.skew(-0.5,0.0),

          QuarterLeft.skew(-0.5,0.0),

          QuarterLeft.skew(-0.5,0.0)
      ]),
  ];

