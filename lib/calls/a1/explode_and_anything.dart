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

  final List<AnimatedCall> ExplodeAndAnything = [

    AnimatedCall('Explode and Roll',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          QuarterLeft.skew(-1.0,1.0) +
          QuarterLeft.skew(1.0,0.0),

          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft,

          QuarterRight.skew(1.0,0.0) +
          QuarterRight,

          QuarterRight.skew(-1.0,-1.0) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Explode and Roll',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines',
      paths:[
          QuarterRight.skew(1.0,-1.0) +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft,

          QuarterRight.skew(1.0,0.0) +
          QuarterRight,

          QuarterLeft.skew(1.0,1.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Explode and Roll',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines',
      paths:[
          QuarterRight.skew(1.0,-1.0) +
          QuarterRight.skew(1.0,0.0),

          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft,

          QuarterRight.skew(1.0,0.0) +
          QuarterRight,

          QuarterRight.skew(-1.0,-1.0) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Explode and Roll',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines',noDisplay: true,
      paths:[
          QuarterLeft.skew(-1.0,1.0) +
          QuarterLeft.skew(1.0,0.0),

          QuarterLeft.skew(1.0,0.0) +
          QuarterLeft,

          QuarterRight.skew(1.0,0.0) +
          QuarterRight,

          QuarterLeft.skew(1.0,1.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Explode and Roll',
      formation:Formations.TidalInvertedLineLH,
      from:'Tidal Inverted Line',
      paths:[
          QuarterLeft.skew(1.0,0.5) +
          QuarterLeft,

          QuarterRight.skew(1.0,0.5) +
          QuarterRight,

          QuarterLeft.skew(1.0,-0.5) +
          QuarterLeft,

          QuarterRight.skew(1.0,-0.5) +
          QuarterRight
      ]),

    AnimatedCall('Explode and Touch a Quarter',
      formation:Formations.LinesFacingOut,
      from:'Lines',
      paths:[
          QuarterLeft.skew(-1.0,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5),

          QuarterLeft.skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5),

          QuarterRight.skew(-1.0,-1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),
  ];

