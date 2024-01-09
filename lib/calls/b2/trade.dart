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

  final List<AnimatedCall> Trade = [

    AnimatedCall('Boys Trade',
      formation:Formation('Wave RH Boys Center'),
      from:'Right-Hand Wave, Boys Center',difficulty: 1,notForSequencer: true,
      paths:[
          SwingLeft.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave, Boys End',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Wave LH Boys Center'),
      from:'Left-Hand Wave, Boys Center',difficulty: 1,notForSequencer: true,
      paths:[
          SwingRight.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave, Boys End',difficulty: 1,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          SwingLeft.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          RunRight.scale(2.0,2.0),

          Path(),

          RunLeft.scale(1.0,2.0),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 2,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.scale(1.0,2.0),

          Path(),

          RunRight.scale(2.0,2.0)
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path(),

          Path(),

          RunRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Waves, Boys in Center',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formation('Ocean Waves RH GBGB'),
      from:'Waves, Boys Facing Out',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.scale(1.0,2.0),

          Path(),

          RunRight.scale(2.0,2.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave, Girls Center',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Wave RH Boys Center'),
      from:'Right-Hand Wave, Girls End',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave, Girls Center',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Wave LH Boys Center'),
      from:'Left-Hand Wave, Girls End',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          Path(),

          RunRight.scale(2.0,2.0),

          Path(),

          RunLeft.scale(1.0,2.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.scale(1.0,2.0),

          Path(),

          RunRight.scale(2.0,2.0),

          Path()
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight,

          SwingRight,

          Path()
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4).scale(1.5,3.0),

          Path(),

          Path(),

          RunLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Waves, Girls Facing Out',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.scale(1.0,2.0),

          Path(),

          RunRight.scale(2.0,2.0)
      ]),

    AnimatedCall('Centers Trade',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft
      ]),

    AnimatedCall('Centers Trade',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight
      ]),

    AnimatedCall('Centers Trade',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight.changeBeats(4)
      ]),

    AnimatedCall('Centers Trade',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          SwingLeft.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Centers Trade',
      formation:Formation('Normal Lines'),
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          Path(),

          RunRight,

          FlipLeft,

          Path()
      ]),

    AnimatedCall('Centers Trade',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Lines Facing Out',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          FlipLeft,

          RunRight,

          Path()
      ]),

    AnimatedCall('Centers Trade',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Waves',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Centers Trade',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',difficulty: 2,notForSequencer: true,
      paths:[
          Path(),

          Path(),

          RunRight,

          FlipLeft
      ]),

    AnimatedCall('Trade',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          SwingRight,

          SwingRight,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Trade',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          SwingLeft,

          SwingLeft,

          SwingLeft,

          SwingLeft
      ]),

    AnimatedCall('Trade',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines',difficulty: 2,notForSequencer: true,
      paths:[
          SwingLeft,

          SwingLeft,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Partner Trade',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',difficulty: 2,notForSequencer: true,
      paths:[
          RunRight,

          FlipLeft
      ]),

    AnimatedCall('Partner Trade',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',difficulty: 1,notForSequencer: true,
      paths:[
          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Partner Trade',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',difficulty: 2,notForSequencer: true,
      paths:[
          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Partner Trade',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',difficulty: 2,notForSequencer: true,
      paths:[
          SwingLeft,

          SwingLeft
      ]),

    AnimatedCall('Partner Trade',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          FlipLeft,

          RunRight,

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Partner Trade',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',difficulty: 1,
      paths:[
          FlipLeft,

          RunRight,

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Ends Trade',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Ends Trade',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Ends Trade',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Ends Trade',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          Path(),

          RunLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Ends Trade',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          RunLeft.scale(1.0,3.0),

          Path(),

          Path(),

          RunRight.scale(2.0,3.0)
      ]),

    AnimatedCall('Ends Trade',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Waves',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.scale(1.0,3.0),

          Path(),

          Path(),

          RunRight.scale(1.0,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(1.5,3.0),

          RunRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,1.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Compact Two-Faced Line RH'),
      from:'Compact Right-Hand Two-Faced Line',difficulty: 1,noDisplay: true,
      paths:[
          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(1.5,1.5),

          RunRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,0.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Compact Two-Faced Line LH'),
      from:'Compact Left-Hand Two-Faced Line',difficulty: 1,noDisplay: true,
      paths:[
          RunLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,0.5),

          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.5,1.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 2,
      paths:[
          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.0,3.0),

          FlipLeft.changeBeats(6).changehands(Hands.GRIPRIGHT),

          RunRight.changeBeats(6).changehands(Hands.GRIPLEFT).scale(2.0,1.0),

          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(3.0,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 3,
      paths:[
          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(1.5,3.0),

          RunRight.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.0,1.0),

          FlipLeft.changeBeats(6).changehands(Hands.GRIPRIGHT),

          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(0.5,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(1.5,3.0),

          RunRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          RunRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.5,3.0),

          RunLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          RunLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(1.5,1.5),

          RunRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(1.5,1.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.5,1.5),

          RunLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,0.5),

          RunLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(0.5,0.5),

          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.5,1.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',difficulty: 3,
      paths:[
          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(3.0,1.5),

          RunRight.changeBeats(6).changehands(Hands.GRIPLEFT).scale(2.0,0.5),

          FlipLeft.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.0,1.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',difficulty: 3,
      paths:[
          FlipLeft.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          RunLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(1.0,1.5),

          RunRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(3.0,1.5),

          RunRight.changeBeats(6).changehands(Hands.GRIPLEFT).scale(2.0,0.5)
      ]),
  ];

