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

  final List<AnimatedCall> WheelAround = [ 

    AnimatedCall('Wheel Around',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          BeauWheel,

          BelleWheel
      ]),

    AnimatedCall('Wheel Around',
      formation:Formations.CouplesFacingOutCompact,
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          BelleWheel,

          BeauWheel
      ]),

    AnimatedCall('Wheel Around',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          BeauWheel,

          BelleWheel,

          BeauWheel,

          BelleWheel
      ]),

    AnimatedCall('Wheel Around',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          BeauWheel.scale(0.5,1.0),

          BelleWheel.scale(0.5,1.0),

          BeauWheel.scale(0.5,1.0),

          BelleWheel.scale(0.5,1.0)
      ]),

    AnimatedCall('Heads Wheel Around',
      formation:Formations.Promenade_2,
      from:'Promenade',
      paths:[
          BackHingeRight.scale(0.5,0.5) +
          HalfBackHingeRight.scale(0.5,0.5).skew(-0.35,0.35),

          HingeLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(.75).changehands(1).skew(0.6,-0.1),

          HalfBackHingeRight.scale(0.5,0.5).skew(-0.25,0.25),

          EighthLeft.changeBeats(.75).changehands(1).skew(0.71,-0.2)
      ]),

    AnimatedCall('Reverse Wheel Around',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',notForSequencer: true,
      paths:[
          BelleWheel.scale(1.0,-1.0),

          BeauWheel.scale(1.0,-1.0)
      ]),

    AnimatedCall('Reverse Wheel Around',
      formation:Formations.CouplesFacingOutCompact,
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          BeauWheel.scale(1.0,-1.0),

          BelleWheel.scale(1.0,-1.0)
      ]),

    AnimatedCall('Reverse Wheel Around',
      formation:Formations.NormalLines,
      from:'Lines',
      paths:[
          BelleWheel.scale(1.0,-1.0),

          BeauWheel.scale(1.0,-1.0),

          BelleWheel.scale(1.0,-1.0),

          BeauWheel.scale(1.0,-1.0)
      ]),

    AnimatedCall('Reverse Wheel Around',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          BelleWheel.scale(0.5,-1.0),

          BeauWheel.scale(0.5,-1.0),

          BelleWheel.scale(0.5,-1.0),

          BeauWheel.scale(0.5,-1.0)
      ]),
  ];

