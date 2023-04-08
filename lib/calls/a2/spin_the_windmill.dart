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

  final List<AnimatedCall> SpinTheWindmill = [ 

    AnimatedCall('Spin the Windmill Right',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',parts:'3;3',
      paths:[
          QuarterRight +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterRight +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          SwingRight +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Right',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',parts:'3;3',
      paths:[
          QuarterRight +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterRight +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          SwingLeft +
          SwingRight +
          CastLeft,

          SwingLeft +
          Stand.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('Spin the Windmill Right',
      formation:Formations.n34Tag,
      from:'3/4 Tag',parts:'3;3',
      paths:[
          QuarterRight +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          QuarterRight +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          SwingRight +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Right',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',parts:'5;3',
      paths:[
          QuarterRight +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterRight +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          CastRight,

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Right',
      formation:Formations.TradeBy,
      from:'Trade By',parts:'5;3',
      paths:[
          QuarterRight +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          QuarterRight +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          CastRight,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Left',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',parts:'3;3',
      paths:[
          QuarterLeft +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          QuarterLeft +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          SwingRight +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Left',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',parts:'3;3',
      paths:[
          QuarterLeft +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          QuarterLeft +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          SwingLeft +
          SwingRight +
          CastLeft,

          SwingLeft +
          Stand.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('Spin the Windmill Left',
      formation:Formations.n34Tag,
      from:'3/4 Tag',parts:'3;3',
      paths:[
          QuarterLeft +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterLeft +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          SwingRight +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Left',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',parts:'5;3',
      paths:[
          QuarterLeft +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          QuarterLeft +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          CastRight,

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Left',
      formation:Formations.TradeBy,
      from:'Trade By',parts:'5;3',
      paths:[
          QuarterLeft +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterLeft +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          Forward.changeBeats(2) +
          SwingRight +
          Stand.changeBeats(3) +
          CastRight,

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          SwingLeft +
          CastRight
      ]),

    AnimatedCall('Left Spin the Windmill Right',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',parts:'5;3',
      paths:[
          QuarterRight +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterRight +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          CastLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Left Spin the Windmill Right',
      formation:Formations.TradeBy,
      from:'Trade By',parts:'5;3',
      paths:[
          QuarterRight +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          QuarterRight +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          CastLeft,

          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('Left Spin the Windmill Left',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',parts:'5;3',
      paths:[
          QuarterLeft +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          QuarterLeft +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          CastLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Left Spin the Windmill Left',
      formation:Formations.TradeBy,
      from:'Trade By',parts:'5;3',
      paths:[
          QuarterLeft +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterLeft +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,3.0) +
          Forward_3,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          SwingRight +
          CastLeft,

          Forward.changeBeats(2) +
          SwingLeft +
          Stand.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('Spin the Windmill Forward',
      formation:Formations.NormalLines,
      from:'Lines',parts:'5;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(4).scale(3.0,3.5) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeRight.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(3) +
          HingeRight.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(4).scale(2.0,2.5) +
          LeadLeft.changeBeats(4).scale(3.0,1.0)
      ]),

    AnimatedCall('Spin the Windmill In',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',parts:'3;3',
      paths:[
          LeadRight +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(2.0,2.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          QuarterLeft.skew(0.0,1.0) +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          SwingRight +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill In',
      formation:Formations.n34Tag,
      from:'3/4 Tag',parts:'3;3',
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(4).scale(2.0,3.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0),

          LeadRight +
          Forward_2 +
          LeadRight.changeBeats(4).scale(3.0,4.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          SwingRight +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Out',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',parts:'3;3',
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          Forward_4,

          QuarterRight.skew(0.0,-1.0) +
          LeadLeft.changeBeats(4).scale(2.0,2.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          SwingRight +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Out',
      formation:Formations.n34Tag,
      from:'3/4 Tag',parts:'3;3',
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          LeadRight.changeBeats(4).scale(3.0,3.0) +
          Forward_4,

          QuarterLeft.skew(0.0,1.0) +
          LeadLeft.changeBeats(4).scale(2.0,2.0) +
          LeadLeft.changeBeats(4).scale(3.0,2.0) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          SwingRight +
          SwingLeft +
          CastRight,

          SwingRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Spin the Windmill Forward',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',parts:'3;3',
      paths:[
          SwingRight +
          SwingLeft +
          CastRight,

          Forward_4 +
          RunRight.changeBeats(6.5).scale(2.0,3.0),

          SwingRight +
          Stand.changeBeats(3) +
          CastRight,

          RunRight.changeBeats(6.5).scale(2.0,3.0) +
          Forward_4
      ]),
  ];

