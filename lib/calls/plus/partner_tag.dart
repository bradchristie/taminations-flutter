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

  final List<AnimatedCall> PartnerTag = [

    AnimatedCall('Partner Tag',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',notForSequencer: true,
      paths:[
          LeadRight.scale(0.5,1.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.0)
      ]),

    AnimatedCall('Partner Tag',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Partner Tag',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',notForSequencer: true,
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Partner Tag',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',notForSequencer: true,
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Partner Tag',
      formation:Formation('Normal Lines'),
      from:'Lines',
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,1.5),

          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,1.5)
      ]),

    AnimatedCall('Partner Tag',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Partner Tag',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Partner Tag',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.0,1.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),
  ];

