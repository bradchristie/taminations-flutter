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

  final List<AnimatedCall> TurnBack = [

    AnimatedCall('U-Turn Back',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',fractions:'1.5',
      notForSequencer: true,
      paths:[
          UmTurnRight,

          UmTurnLeft
      ]),

    AnimatedCall('U-Turn Back',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
  ]),
      from:'Sashayed Couples',
      paths:[
          UmTurnLeft,

          UmTurnRight
      ]),

    AnimatedCall('U-Turn Back',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',fractions:'1.5',
        notForSequencer: true,
      paths:[
          UmTurnLeft,

          UmTurnRight
      ]),

    AnimatedCall('U-Turn Back',
      formation:Formation('Normal Lines'),
      from:'Lines',fractions:'1.5',
        notForSequencer: true,
      paths:[
          UmTurnRight,

          UmTurnLeft,

          UmTurnRight,

          UmTurnLeft
      ]),

    AnimatedCall('U-Turn Back',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',fractions:'1.5',
        notForSequencer: true,
      paths:[
          UmTurnLeft,

          UmTurnRight,

          UmTurnLeft,

          UmTurnRight
      ]),

    AnimatedCall('U-Turn Back',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',fractions:'1.5',
        notForSequencer: true,
      paths:[
          UmTurnRight,

          UmTurnRight,

          UmTurnRight,

          UmTurnRight
      ]),

    AnimatedCall('U-Turn Back',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',fractions:'1.5',
        notForSequencer: true,
      paths:[
          UmTurnLeft,

          UmTurnLeft,

          UmTurnLeft,

          UmTurnLeft
      ]),

    AnimatedCall('Boys Turn Back',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',notForSequencer: true,
      paths:[
          UmTurnRight,

          Path()
      ]),

    AnimatedCall('Boys Turn Back',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',notForSequencer: true,
      paths:[
          UmTurnRight,

          Path()
      ]),

    AnimatedCall('Girls Turn Back',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',notForSequencer: true,
      paths:[
          Path(),

          UmTurnLeft
      ]),

    AnimatedCall('Girls Turn Back',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',notForSequencer: true,
      paths:[
          Path(),

          UmTurnRight
      ]),

    AnimatedCall('Girls Backtrack',
      formation:Formation('Promenade'),
      from:'Promenade',isGenderSpecific:true,
      taminator: '''
      Girls continue clockwise and boys counterclockwise until the next call.
    ''',
      paths:[
          LeadLeft_12.changeBeats(2).scale(2.0,2.0),

          FlipRight.changeBeats(2).scale(1.0,0.5).skew(-1.0,0.5),

          LeadLeft_12.changeBeats(2).scale(2.0,2.0),

          FlipRight.changeBeats(2).scale(1.0,0.5).skew(-1.0,0.5)
      ]),
  ];

