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

  final List<AnimatedCall> Regroup = [

    AnimatedCall('Regroup',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',parts:'3',
      paths:[
          LeadLeft +
          LeadRight +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          RunRight.scale(1.0,1.5).skew(1.0,0.0) +
          QuarterRight,

          FlipLeft.scale(1.0,1.5).skew(1.0,0.0) +
          QuarterLeft,

          LeadRight +
          QuarterLeft.skew(0.0,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0)
      ]),

    AnimatedCall('Regroup',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3',
      paths:[
          UmTurnRight.skew(-1.0,-1.0) +
          Forward_2 +
          LeadRight.changeBeats(2).scale(2.0,2.0),

          FlipLeft.scale(1.0,1.5) +
          QuarterLeft.skew(1.0,0.0),

          RunRight.scale(1.0,1.5) +
          QuarterRight.skew(1.0,0.0),

          UmTurnLeft.skew(-1.0,0.0) +
          Forward_2 +
          LeadLeft.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Regroup',
        formation: Formation('Ocean Waves RH BGGB'),
        from: 'Right-Hand Waves',
        paths: [
          QuarterLeft + RunRight.scale(1.5, 2.5).skew(-1.0, 0),
          SwingLeft + QuarterLeft.skew(1.0, -1.0),
          SwingLeft + QuarterLeft.skew(-1.0,-1.0),
          QuarterLeft + RunLeft.scale(0.5, 2.5).skew(-1.0, 0)
        ]),

    AnimatedCall('Regroup',
        formation: Formation('Ocean Waves LH BGGB'),
        from: 'Left-Hand Waves',
        paths: [
          QuarterRight + RunRight.scale(1.5, 2.5).skew(-1.0, 0),
          SwingRight + QuarterRight.skew(-1.0, 1.0),
          SwingRight + QuarterRight.skew(1.0,1.0),
          QuarterRight + RunLeft.scale(0.5, 2.5).skew(-1.0, 0)
        ]),

    AnimatedCall('Regroup',
        formation: Formation('T-Bone DLRD'),
        from: 'T-Bones',
        paths: [
          QuarterRight + RunRight.scale(1.5, 2).skew(-2.0, 0),
          FlipLeft + QuarterLeft,
          RunRight + QuarterRight,
          QuarterLeft + RunLeft.scale(0.5, 2).skew(-2.0, 0)
        ])

  ];

