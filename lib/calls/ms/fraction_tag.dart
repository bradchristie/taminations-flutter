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

  final List<AnimatedCall> FractionTag = [ 

    AnimatedCall('Quarter Tag',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterRight,

          LeadRight
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 3,
      paths:[
          QuarterLeft.skew(-1.0,1.0),

          QuarterLeft
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 3,
      paths:[
          QuarterRight,

          QuarterLeft.skew(-1.0,1.0)
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,
      paths:[
          QuarterLeft,

          LeadRight
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          QuarterRight.skew(1.0,0.0),

          LeadRight,

          LeadRight,

          QuarterRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Quarter Tag',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,0.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          LeadRight.changeBeats(2),

          QuarterRight.changeBeats(2).skew(-1.0,0.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          LeadRight,

          LeadRight +
          Forward_2
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterLeft.skew(-1.0,0.0) +
          Forward_3,

          QuarterLeft.skew(-1.0,0.0) +
          Forward
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          QuarterRight.skew(1.0,0.0) +
          Forward,

          QuarterLeft.skew(-1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,
      paths:[
          QuarterLeft.skew(-1.0,0.0) +
          Forward,

          QuarterRight.skew(1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Half Tag',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight.changeBeats(4)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.NormalLines,
      from:'Lines Facing In',difficulty: 2,
      paths:[
          LeadRight.changeBeats(4),

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          LeadRight,

          LeadRight +
          Forward_2,

          LeadRight +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 3,
      paths:[
          LeadRight,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight +
          Forward_2,

          LeadRight +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',noDisplay: true,
      paths:[
          LeadRight,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',noDisplay: true,
      paths:[
          LeadRight,

          LeadRight.changeBeats(2) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',noDisplay: true,
      paths:[
          LeadRight,

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',noDisplay: true,
      paths:[
          LeadRight,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight.changeBeats(2) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines Ends Facing Out',noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(4).skew(-1.0,1.0),

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines Ends Facing In',noDisplay: true,
      paths:[
          LeadRight,

          QuarterLeft.changeBeats(2).skew(-1.0,1.0) +
          Forward_2,

          LeadRight.changeBeats(2) +
          Forward_2,

          QuarterLeft.changeBeats(4).skew(-1.0,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',difficulty: 1,
      paths:[
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(0.5,1.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Half Tag',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',difficulty: 2,
      paths:[
          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(0.5,1.0),

          QuarterRight.changeBeats(2).skew(1.0,0.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0) +
          Forward.changeBeats(2).scale(1.5,1.0),

          QuarterLeft.changeBeats(2).skew(-1.0,0.0) +
          Forward.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 3,
      paths:[
          QuarterRight.skew(-1.0,0.0) +
          Forward,

          QuarterRight.skew(-1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          LeadLeft +
          Forward_2,

          LeadLeft
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          QuarterRight.skew(-1.0,0.0) +
          Forward,

          QuarterLeft.skew(1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,
      paths:[
          QuarterLeft.skew(1.0,0.0) +
          Forward,

          QuarterRight.skew(-1.0,0.0) +
          Forward_3
      ]),

    AnimatedCall('Left Half Tag',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
      paths:[
          LeadLeft,

          LeadLeft +
          Forward_2,

          LeadLeft +
          Forward_2,

          LeadLeft
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          QuarterLeft.skew(-0.5,0.5) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.5,0.5),

          QuarterLeft.skew(-0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.5,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,0.5) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.5,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 2,
      paths:[
          QuarterLeft.skew(-0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.5,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('3/4 Tag the Line',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          QuarterLeft.skew(-0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          QuarterLeft.skew(-0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,1.5),

          LeadRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Left 3/4 Tag the Line',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 3,
      paths:[
          QuarterRight.skew(-0.5,-0.5) +
          ExtendRight.changeBeats(3).scale(2.5,0.5),

          QuarterRight.skew(-0.5,-0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.5,0.5)
      ]),

    AnimatedCall('Left 3/4 Tag the Line',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 2,
      paths:[
          LeadLeft.scale(0.5,1.0) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Left 3/4 Tag the Line',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 2,
      paths:[
          QuarterRight.skew(-0.5,-0.5) +
          ExtendRight.changeBeats(3).scale(2.5,0.5),

          LeadLeft.scale(0.5,1.0) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left 3/4 Tag the Line',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 3,
      paths:[
          LeadLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          QuarterRight.skew(-0.5,-0.5) +
          Forward +
          ExtendLeft.changeBeats(2).scale(2.5,0.5)
      ]),
  ];

