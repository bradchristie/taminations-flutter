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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> LinearAction = [

    AnimatedCall('Linear Action',
      formation:Formations.QuarterTag,
      from:'Right-Hand Quarter Tag',parts:'1.5;5',
      paths:[
          LeadRight +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          CastLeft,

          HingeRight +
          Forward_4 +
          LeadRight +
          Forward_2,

          HingeRight +
          RunRight +
          Forward_2 +
          CastLeft
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',parts:'1.5;5',
      paths:[
          LeadRight +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(5.0,3.0),

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft,

          HingeLeft +
          Forward_4 +
          LeadLeft +
          Forward_2,

          HingeLeft +
          RunLeft +
          Forward_2 +
          CastRight
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.n34Tag,
      from:'Right-Hand 3/4 Tag',parts:'1.5;5',
      paths:[
          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          LeadRight +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          CastLeft,

          HingeRight +
          Forward_4 +
          LeadRight +
          Forward_2,

          HingeRight +
          RunRight +
          Forward_2 +
          CastLeft
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.n34TagLH,
      from:'Left-Hand 3/4 Tag',parts:'1.5;5',
      paths:[
          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(5.0,3.0),

          LeadRight +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft,

          HingeLeft +
          Forward_4 +
          LeadLeft +
          Forward_2,

          HingeLeft +
          RunLeft +
          Forward_2 +
          CastRight
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.QuarterLinesRH,
      from:'Right-Hand Quarter Lines',parts:'1.5;5',
      paths:[
          LeadRight +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          CastLeft,

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          RunRight +
          Forward_2 +
          CastLeft,

          LeadRight +
          Forward_4 +
          LeadRight +
          Forward_2
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.QuarterLinesLH,
      from:'Left-Hand Quarter Lines',parts:'1.5;5',
      paths:[
          LeadRight +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          CastLeft,

          LeadRight +
          RunRight +
          Forward_2 +
          CastLeft,

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          Forward_4 +
          LeadRight +
          Forward_2
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.n34LinesRH,
      from:'Right-Hand 3/4 Lines',parts:'1.5;5',
      paths:[
          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          LeadRight +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          CastLeft,

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          RunRight +
          Forward_2 +
          CastLeft,

          LeadRight +
          Forward_4 +
          LeadRight +
          Forward_2
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.n34LinesLH,
      from:'Left-Hand 3/4 Lines',parts:'1.5;5',
      paths:[
          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          LeadRight +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          CastLeft,

          LeadRight +
          RunRight +
          Forward_2 +
          CastLeft,

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          Forward_4 +
          LeadRight +
          Forward_2
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.MixedQuarterTag1,
      from:'Mixed Quarter Tag #1',parts:'1.5;5',
      paths:[
          HingeRight +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeRight +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          CastLeft,

          HingeRight +
          Forward_4 +
          LeadRight +
          Forward_2,

          HingeRight +
          RunRight +
          Forward_2 +
          CastLeft
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.MixedQuarterTag2,
      from:'Mixed Quarter Tag #2',parts:'1.5;5',
      paths:[
          HingeRight +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(5.0,3.0),

          HingeRight +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          BackHingeLeft +
          BackHingeLeft +
          BackHingeLeft,

          HingeLeft +
          Forward_4 +
          LeadLeft +
          Forward_2,

          HingeLeft +
          RunLeft +
          Forward_2 +
          CastRight
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.MixedQuarterTag3,
      from:'Mixed Quarter Tag #3',parts:'1.5;5',
      paths:[
          HingeRight +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeRight +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          CastLeft,

          LeadRight +
          Forward_4 +
          LeadRight +
          Forward_2,

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          RunRight +
          Forward_2 +
          CastLeft
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.MixedQuarterTag4,
      from:'Mixed Quarter Tag #4',parts:'1.5;5',
      paths:[
          HingeRight +
          SwingRight.changeBeats(5).skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeRight +
          SwingRight.changeBeats(5).skew(0.0,1.0) +
          CastLeft,

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          Forward_4 +
          LeadRight +
          Forward_2,

          LeadRight +
          RunRight +
          Forward_2 +
          CastLeft
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.MixedQuarterTag5,
      from:'Mixed Quarter Tag #5',parts:'1.5;5',
      paths:[
          HingeLeft +
          SwingLeft.changeBeats(5).skew(0.0,-1.0) +
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          HingeLeft +
          SwingLeft.changeBeats(5).skew(0.0,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeRight +
          Forward_4 +
          LeadRight +
          ExtendLeft.changeBeats(4).scale(2.0,2.0),

          HingeRight +
          RunRight +
          Forward_2 +
          CastLeft
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.MixedQuarterTag6,
      from:'Mixed Quarter Tag #6',parts:'1.5;5',
      paths:[
          HingeLeft +
          SwingLeft.changeBeats(5).skew(0.0,-1.0) +
          CastRight,

          HingeLeft +
          SwingLeft.changeBeats(5).skew(0.0,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeLeft +
          Forward_4 +
          LeadLeft +
          Forward_2,

          HingeLeft +
          RunLeft +
          Forward_2 +
          CastRight
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.MixedQuarterTag7,
      from:'Mixed Quarter Tag #7',parts:'1.5;5',
      paths:[
          HingeLeft +
          SwingLeft.changeBeats(5).skew(0.0,-1.0) +
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          HingeLeft +
          SwingLeft.changeBeats(5).skew(0.0,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          LeadRight +
          Forward_4 +
          LeadRight +
          ExtendLeft.changeBeats(4).scale(2.0,2.0),

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          RunRight +
          Forward_2 +
          CastLeft
      ]),

    AnimatedCall('Linear Action',
      formation:Formations.MixedQuarterTag8,
      from:'Mixed Quarter Tag #8',parts:'1.5;5',
      paths:[
          HingeLeft +
          SwingLeft.changeBeats(5).skew(0.0,-1.0) +
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          HingeLeft +
          SwingLeft.changeBeats(5).skew(0.0,1.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          QuarterLeft.changeBeats(1.5).skew(-1.0,1.0) +
          Forward_4 +
          LeadRight +
          ExtendLeft.changeBeats(4).scale(2.0,2.0),

          LeadRight +
          RunRight +
          Forward_2 +
          CastLeft
      ]),
  ];

