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

  final List<AnimatedCall> WheelAround = [

    AnimatedCall('Wheel Around',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',notForSequencer: true,
      paths:[
          BeauWheel,

          BelleWheel
      ]),

    AnimatedCall('Wheel Around',
      formation:Formation('Couples Facing Out Compact'),
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          BelleWheel,

          BeauWheel
      ]),

    AnimatedCall('Wheel Around',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          BeauWheel,

          BelleWheel,

          BeauWheel,

          BelleWheel
      ]),

    AnimatedCall('Wheel Around',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          BeauWheel.scale(0.5,1.0),

          BelleWheel.scale(0.5,1.0),

          BeauWheel.scale(0.5,1.0),

          BelleWheel.scale(0.5,1.0)
      ]),

    AnimatedCall('Heads Wheel Around',
      formation:Formation('Promenade 2'),
      from:'Promenade',
      paths:[
          BackHingeRight.scale(0.5,0.5) +
          HalfBackHingeRight.scale(0.5,0.5).skew(-0.35,0.35),

          HingeLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(.75).changehands(Hands.LEFT).skew(0.6,-0.1),

          HalfBackHingeRight.scale(0.5,0.5).skew(-0.25,0.25),

          EighthLeft.changeBeats(.75).changehands(Hands.LEFT).skew(0.71,-0.2)
      ]),

    AnimatedCall('Reverse Wheel Around',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',notForSequencer: true,
      paths:[
          BelleWheel.scale(1.0,-1.0),

          BeauWheel.scale(1.0,-1.0)
      ]),

    AnimatedCall('Reverse Wheel Around',
      formation:Formation('Couples Facing Out Compact'),
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          BeauWheel.scale(1.0,-1.0),

          BelleWheel.scale(1.0,-1.0)
      ]),

    AnimatedCall('Reverse Wheel Around',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          BelleWheel.scale(1.0,-1.0),

          BeauWheel.scale(1.0,-1.0),

          BelleWheel.scale(1.0,-1.0),

          BeauWheel.scale(1.0,-1.0)
      ]),

    AnimatedCall('Reverse Wheel Around',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          BelleWheel.scale(0.5,-1.0),

          BeauWheel.scale(0.5,-1.0),

          BelleWheel.scale(0.5,-1.0),

          BeauWheel.scale(0.5,-1.0)
      ]),
  ];

