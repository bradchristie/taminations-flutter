/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> ExplodeTheLine = [

    AnimatedCall('Explode the Line',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(3) +
          Forward_2.changeBeats(3),

          LeadRight.changeBeats(3).scale(2.0,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,1.0),

          QuarterRight.changeBeats(2).skew(-1.0,-1.0) +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',
      paths:[
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-1.0) +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(3).scale(1.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          LeadLeft.changeBeats(3).scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',
      paths:[
          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',
      paths:[
          QuarterRight.changeBeats(2).skew(-0.5,-1.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',
      paths:[
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterRight.changeBeats(2).skew(-0.5,-1.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(0.5,3.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line, Right-Hand Centers',
      paths:[
          LeadRight.changeBeats(2).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Tidal Inverted Line, Left-Hand Centers',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line, Right-Hand Centers',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Tidal Line LH'),
      from:'Tidal Line, Left-Hand Centers',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(-1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Tidal 3 and 1 Line #1'),
      from:'Tidal 3 and 1 Line #1',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Tidal 3 and 1 Line #4'),
      from:'Tidal 3 and 1 Line #4',
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Tidal 3 and 1 Line #5'),
      from:'Tidal 3 and 1 Line #5',
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Explode the Line',
      formation:Formation('Tidal 3 and 1 Line #8'),
      from:'Tidal 3 and 1 Line #8',
      paths:[
          QuarterRight.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(-1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,1.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterRight.changeBeats(2).skew(-1.0,-1.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',noDisplay: true,
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-1.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,1.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines',noDisplay: true,
      paths:[
          LeadRight.changeBeats(2).scale(1.0,1.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,1.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines 2',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,1.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          LeadRight.changeBeats(2).scale(1.0,1.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,1.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,1.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',noDisplay: true,
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-1.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          LeadRight.changeBeats(2).scale(1.0,1.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',noDisplay: true,
      paths:[
          LeadRight.changeBeats(2).scale(1.0,1.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterRight.changeBeats(2).skew(-1.0,-1.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,1.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,1.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line RH',noDisplay: true,
      paths:[
          LeadRight.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Tidal Inverted Line LH',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          LeadRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line RH',noDisplay: true,
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal Line LH'),
      from:'Tidal Line LH',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,0.5),

          QuarterRight.changeBeats(2).skew(-1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal 3 and 1 Line #1'),
      from:'Tidal 3 and 1 Line #1',noDisplay: true,
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal 3 and 1 Line #4'),
      from:'Tidal 3 and 1 Line #4',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(2).skew(1.0,0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterLeft.changeBeats(2).skew(-1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal 3 and 1 Line #5'),
      from:'Tidal 3 and 1 Line #5',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterLeft.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Explode',
      formation:Formation('Tidal 3 and 1 Line #8'),
      from:'Tidal 3 and 1 Line #8',noDisplay: true,
      paths:[
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          QuarterRight.changeBeats(2).skew(1.0,0.5),

          QuarterRight.changeBeats(2).skew(-1.0,-0.5)
      ]),
  ];

