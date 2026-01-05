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

  final List<AnimatedCall> TaggingCallsBackToAWave = [

    AnimatedCall('Flip Back',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',parts:'5.5',
      paths:[
          HingeRight +
          Forward_4 +
          RunRight.changeBeats(6),

          HingeRight +
          RunRight.changeBeats(4) +
          ExtendRight.changeBeats(2).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25)
      ]),

    AnimatedCall('Flip Back',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',parts:'5.5',
      paths:[
          HingeLeft +
          Forward_4 +
          RunLeft.changeBeats(6),

          HingeLeft +
          RunLeft.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,0.25)
      ]),

    AnimatedCall('Flip Back',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Right-Hand Waves',parts:'4.5',
      paths:[
          LeadRight +
          Forward_4.changeBeats(3) +
          RunRight.changeBeats(6),

          LeadRight +
          RunRight +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          LeadRight +
          RunRight +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          LeadRight +
          Forward_4.changeBeats(3) +
          RunRight.changeBeats(6)
      ]),

    AnimatedCall('Flip Back',
      formation:Formation('Ocean Waves LH GBBG'),
      from:'Left-Hand Waves',parts:'4.5',
      paths:[
          LeadLeft +
          Forward_4.changeBeats(3) +
          RunLeft.changeBeats(6),

          LeadLeft +
          RunLeft +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25),

          LeadLeft +
          RunLeft +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25),

          LeadLeft +
          Forward_4.changeBeats(3) +
          RunLeft.changeBeats(6)
      ]),

    AnimatedCall('Flip Back',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'4.5',
      paths:[
          LeadRight.scale(1.0,0.5) +
          Forward_2.changeBeats(3) +
          RunRight.changeBeats(6).scale(0.5,1.0),

          LeadRight.scale(1.0,0.5) +
          RunRight +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          LeadRight.scale(1.0,0.5) +
          RunRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          LeadRight.scale(1.0,0.5) +
          Forward_2.changeBeats(3) +
          RunRight.changeBeats(6)
      ]),

    AnimatedCall('Flip Back',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'4.5',
      paths:[
          LeadLeft.scale(1.0,0.5) +
          Forward_2.changeBeats(3) +
          RunLeft.changeBeats(6).scale(0.5,1.0),

          LeadLeft.scale(1.0,0.5) +
          RunLeft +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          LeadLeft.scale(1.0,0.5) +
          RunLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          LeadLeft.scale(1.0,0.5) +
          Forward_2.changeBeats(3) +
          RunLeft.changeBeats(6)
      ]),

    AnimatedCall('Tag Back',
      formation:Formation('Normal Lines'),
      from:'Lines',parts:'3',
      paths:[
          LeadRight.changeBeats(3) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          LeadRight +
          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(6),

          QuarterLeft.skew(-1.0,1.0) +
          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(6),

          QuarterLeft.changeBeats(3).skew(-1.0,1.0) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Tag Back',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',parts:'3',
      paths:[
          LeadRight.changeBeats(3) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25),

          LeadRight +
          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(6),

          LeadRight +
          Forward_2.changeBeats(1.5) +
          RunRight.changeBeats(6),

          LeadRight.changeBeats(3) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(2.0,0.25)
      ]),

    AnimatedCall('Vertical Tag Back',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',parts:'3',
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.5,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(1.5,0.25),

          ExtendLeft.changeBeats(2).scale(1.5,2.0) +
          Forward_2.scale(0.75,1.0) +
          RunRight
      ]),

    AnimatedCall('All 8 Vertical Tag Back',
      formation:Formation('Static Square'),
      from:'Static Square',parts:'6',
      paths:[
          Stand.changeBeats(5) +
          Forward_3 +
          SwingRight +
          Forward_3,

          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          Forward_3 +
          RunRight,

          Stand.changeBeats(5) +
          Forward_3 +
          SwingRight +
          Forward_3,

          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          Forward_3 +
          RunRight
      ]),
  ];

