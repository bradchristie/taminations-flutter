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
import '../../common_dart.dart';
import '../../moves.dart';

  final List<AnimatedCall> Crossfire = [

    AnimatedCall('Crossfire',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(6).scale(2.0,2.0).skew(2.0,0.0),

          SwingRight.changeBeats(3.5) +
          Forward_2.changeBeats(2.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          SwingLeft.changeBeats(3.5) +
          Forward_2.changeBeats(2.5),

          RunLeft.changeBeats(6).scale(2.0,2.0).skew(2.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          SwingRight +
          Forward,

          SwingRight +
          Forward,

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0),

          SwingLeft +
          Forward,

          SwingLeft +
          Forward,

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Tidal Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(5).skew(2.0,-0.5),

          SwingRight.scale(0.75,0.75) +
          Forward_2,

          SwingRight.scale(0.75,0.75) +
          Forward_2,

          RunRight.changeBeats(5).skew(2.0,-0.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Tidal Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          RunLeft.changeBeats(5).skew(2.0,0.5),

          SwingLeft.scale(0.75,0.75) +
          Forward_2,

          SwingLeft.scale(0.75,0.75) +
          Forward_2,

          RunLeft.changeBeats(5).skew(2.0,0.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 2,
      taminator: '''
      There is some controversy over this particular case.
      The alternative treats Crossfire as a strictly 4-dancer call,
      so this case ends in a double pass thru formation.
    ''',
      paths:[
          RunLeft.changeBeats(5).scale(1.0,2.0).skew(1.0,0.0),

          FlipLeft +
          Forward_2,

          RunRight +
          ExtendLeft_2,

          RunRight.changeBeats(5).scale(2.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Centers Facing In',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          Forward.changeBeats(2),

          RunRight.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          Forward.changeBeats(2),

          RunRight.changeBeats(4).scale(2.0,2.0).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Centers Facing Out',difficulty: 3,
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          Forward.changeBeats(2),

          RunRight.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          FlipLeft.changeBeats(4).scale(0.75,2.0).skew(1.0,0.0) +
          Forward.changeBeats(2)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 3,
      paths:[
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          RunRight.changeBeats(4).scale(0.75,1.0).skew(-1.0,0.0),

          FlipLeft.changeBeats(4).skew(-1.0,0.0),

          FlipLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',difficulty: 3,
      paths:[
          RunRight.changeBeats(5).scale(2.0,1.0).skew(2.0,-0.5),

          RunRight.changeBeats(5).skew(-2.0,0.5),

          FlipLeft.changeBeats(5).skew(-2.0,-0.5),

          RunLeft.changeBeats(5).skew(2.0,0.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Tidal Line LH'),
      from:'Tidal Line',difficulty: 3,noDisplay: true,
      paths:[
          RunLeft.changeBeats(5).skew(-2.0,-0.5),

          RunLeft.changeBeats(5).scale(2.0,1.0).skew(2.0,0.5),

          RunRight.changeBeats(5).skew(2.0,-0.5),

          FlipRight.changeBeats(5).skew(-2.0,0.5)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line',difficulty: 3,
      paths:[
          RunRight.changeBeats(5).scale(2.0,1.0).skew(1.5,-1.0),

          FlipLeft.changeBeats(5).skew(-1.5,-1.0),

          RunRight.changeBeats(5).skew(-1.5,0.0),

          RunLeft.changeBeats(5).skew(1.5,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Tidal Inverted Line',difficulty: 3,noDisplay: true,
      paths:[
          RunLeft.changeBeats(5).skew(1.5,0.0),

          RunRight.changeBeats(5).skew(-1.5,0.0),

          FlipLeft.changeBeats(5).skew(-1.5,-1.0),

          RunRight.changeBeats(5).scale(2.0,1.0).skew(1.5,-1.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds, Right-Hand Centers',difficulty: 3,
      paths:[
          SwingRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.75) +
          ExtendLeft.scale(1.0,0.5),

          CrossFoldLeft.scale(0.5,1.0),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.75) +
          ExtendLeft.scale(1.0,0.5),

          CrossFoldLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Diamonds Facing LH Girl Points'),
      from:'Facing Diamonds, Left-Hand Centers',difficulty: 3,
      paths:[
          SwingLeft.changehands(Hands.GRIPLEFT).scale(1.0,0.75) +
          ExtendRight.scale(1.0,0.5),

          CrossFoldRight.scale(0.5,1.0),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(1.0,0.75) +
          ExtendRight.scale(1.0,0.5),

          CrossFoldRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Diamonds Facing PTP'),
      from:'Point-to-Point Facing Diamonds, Right-Hand Centers',difficulty: 3,
      paths:[
          SwingRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.75).skew(0.5,0.0) +
          ExtendLeft.scale(0.5,0.5),

          RunLeft.skew(1.0,0.0),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.75).skew(-0.5,0.0) +
          ExtendLeft.scale(1.5,0.5),

          RunLeft.scale(1.0,2.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Crossfire',
      formation:Formation('Diamonds Facing LH PTP'),
      from:'Point-to-Point Facing Diamonds, Left-Hand Centers',difficulty: 3,
      paths:[
          SwingLeft.changehands(Hands.GRIPLEFT).scale(1.0,0.75).skew(-0.5,0.0) +
          ExtendRight.scale(1.5,0.5),

          RunRight.skew(1.0,0.0),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(1.0,0.75).skew(0.5,0.0) +
          ExtendRight.scale(0.5,0.5),

          RunRight.scale(1.0,2.0).skew(1.0,0.0)
      ]),
  ];

