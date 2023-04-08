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

  final List<AnimatedCall> SwitchToADiamond = [ 

    AnimatedCall('Switch to a Diamond',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          LeadRight +
          Forward_2,

          FlipLeft
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          FlipRight,

          LeadLeft +
          Forward_2
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formations.NormalLines,
      from:'Normal Lines',
      paths:[
          LeadRight +
          Forward_2.changeBeats(3),

          FlipLeft,

          FlipRight,

          LeadLeft +
          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          LeadRight +
          Forward_2,

          FlipLeft,

          FlipLeft,

          LeadRight +
          Forward_2
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft +
          Forward_2,

          FlipRight,

          FlipRight,

          LeadLeft +
          Forward_2
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          LeadLeft +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          FlipRight,

          FlipLeft,

          LeadRight +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines',
      paths:[
          LeadLeft.changeBeats(3).skew(-2.0,2.0),

          RunLeft,

          RunRight,

          LeadRight.changeBeats(3).scale(1.0,3.0)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'3 and 1 Lines',
      paths:[
          LeadLeft +
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          FlipRight,

          FlipRight,

          LeadRight +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Tidal Two-Faced Line',
      paths:[
          LeadRight.scale(0.75,1.0) +
          Forward.scale(0.5,1.0),

          FlipLeft.scale(1.0,0.5),

          FlipLeft.scale(1.0,0.5),

          LeadRight.scale(0.75,1.0) +
          Forward.scale(0.5,1.0)
      ]),

    AnimatedCall('Switch to a Diamond',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',
      paths:[
          LeadRight.scale(0.75,0.5) +
          Forward.changeBeats(2),

          FlipLeft.scale(1.0,0.5),

          FlipRight.scale(1.0,0.5),

          LeadLeft.scale(0.75,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,1.5)
      ]),
  ];

