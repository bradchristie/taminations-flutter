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

  final List<AnimatedCall> TurnToALine = [ 

    AnimatedCall('Turn to a Line',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',
      paths:[
          FlipLeft.skew(1.5,0.0),

          FlipLeft.skew(1.5,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',
      paths:[
          FlipRight.skew(-2.0,0.0),

          FlipRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',
      paths:[
          FlipLeft.skew(2.0,0.0),

          FlipRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',
      paths:[
          FlipRight.skew(-2.0,0.0),

          FlipLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',
      paths:[
          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.DoublePassThru,
      from:'Double Pass Thru',
      paths:[
          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',
      paths:[
          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.TradeBy,
      from:'Trade By',
      paths:[
          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns, Right-Hand Centers',
      paths:[
          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns, Left-Hand Centers',
      paths:[
          FlipRight.skew(-1.0,0.0),

          FlipRight.skew(-1.0,0.0),

          FlipLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.NormalLines,
      from:'Normal Lines',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5),

          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5),

          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',
      paths:[
          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5),

          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5),

          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5),

          FlipLeft.skew(2.0,-1.5),

          FlipRight.skew(-2.0,0.5)
      ]),

    AnimatedCall('Turn to a Line',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',
      paths:[
          FlipRight.skew(-2.0,1.5),

          FlipRight.skew(-2.0,0.5),

          FlipRight.skew(-2.0,1.5),

          FlipLeft.skew(2.0,-0.5)
      ]),

    AnimatedCall('Turn to a Line and Roll',
      formation:Formations.CompletedDoublePassThru,
      group:' ',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          FlipRight.skew(-1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0) +
          QuarterLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Turn to a Line and Spread',
      formation:Formations.TradeBy,
      group:' ',
      paths:[
          UmTurnRight.skew(-1.0,0.0),

          RunRight.scale(1.0,2.0).skew(-1.0,0.0),

          UmTurnRight.skew(-1.0,0.0),

          RunRight.scale(1.0,2.0).skew(-1.0,0.0)
      ]),

    AnimatedCall('All 8 Turn to a Line',
      formation:Formations.StaticMiniWavesRH,
      group:'  ',
      paths:[
          FlipLeft.changeBeats(5).skew(3.0,0.0),

          FlipRight.changeBeats(5).skew(-3.0,0.0),

          FlipLeft.changeBeats(5).skew(3.0,0.0),

          FlipRight.changeBeats(5).skew(-3.0,0.0)
      ]),

    AnimatedCall('As Couples Turn to a Line',
      formation:Formations.TwomFacedLinesRH,
      group:'  ',
      paths:[
          QuarterLeft.changeBeats(2).changehands(2) +
          QuarterLeft.changeBeats(2).changehands(2).skew(-0.5,-2.0),

          LeadLeft.changeBeats(2).changehands(1).scale(2.0,2.0) +
          QuarterLeft.changeBeats(2).changehands(1).skew(0.5,0.0),

          QuarterRight.changeBeats(2).changehands(1).skew(-1.0,-1.0) +
          LeadRight.changeBeats(2).changehands(1).scale(0.5,1.0),

          LeadRight.changeBeats(2).changehands(2).scale(1.0,3.0) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,3.0)
      ]),

    AnimatedCall('Butterfly Turn to a Line',
      formation:Formations.ButterflyTradeBy,
      group:'   ',
      paths:[
          RunRight.scale(1.0,2.0).skew(-2.0,0.0),

          UmTurnRight,

          FlipRight,

          FlipRight.skew(-2.0,0.0)
      ]),

    AnimatedCall('Concentric Turn to a Line',
      formation:Formations.DoublePassThru,
      group:'   ',
      paths:[
          FlipLeft.skew(3.0,0.5),

          FlipLeft.skew(3.0,1.5),

          FlipLeft.skew(1.0,-1.5),

          FlipLeft.scale(1.0,0.75).skew(1.0,0.0)
      ]),

    AnimatedCall('Cross Concentric Turn to a Line (from columns)',
      formation:Formations.DoublePassThru,
      group:'   ',
      paths:[
          FlipLeft.scale(1.0,0.25).skew(3.0,0.0),

          FlipLeft.scale(1.0,0.75).skew(3.0,0.0),

          FlipLeft.scale(1.0,2.0).skew(1.0,-1.5),

          FlipLeft.scale(1.0,1.75).skew(1.0,0.0)
      ]),

    AnimatedCall('Cross Concentric Turn to a Line (from waves)',
      formation:Formations.OceanWavesRHBGBG,
      group:'   ',
      paths:[
          Stand +
          DodgeRight +
          FlipLeft.skew(2.0,-1.5),

          FlipRight.scale(1.0,1.25).skew(-2.0,0.0),

          FlipLeft.scale(1.0,1.75).skew(2.0,0.0),

          Stand +
          DodgeRight +
          FlipRight.scale(1.0,0.75).skew(-2.0,0.0)
      ]),

    AnimatedCall('"O" Turn to a Line',
      formation:Formations.OTradeBy,
      group:'   ',
      paths:[
          FlipRight,

          FlipRight.skew(-2.0,0.0),

          RunRight.scale(1.0,2.0).skew(-2.0,0.0),

          UmTurnRight
      ]),

    AnimatedCall('Stretch Turn to a Line',
      formation:Formations.CompletedDoublePassThru,
      group:'   ',
      paths:[
          FlipRight.skew(-1.0,0.0),

          UmTurnRight.skew(-1.0,0.0),

          UmTurnLeft.skew(1.0,0.0),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Turn to a Line',
      formation:Formations.CompletedDoublePassThru,
      group:'   ',
      paths:[
          FlipRight.skew(-1.0,0.0) +
          Forward_4,

          FlipRight.scale(1.0,0.5).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(4).scale(4.0,1.0),

          Forward.changeBeats(2) +
          RunRight.changeBeats(5),

          Forward.changeBeats(2) +
          RunRight.changeBeats(5)
      ]),

    AnimatedCall('Turn to a Line the Windmill Right',
      formation:Formations.ColumnRHGBGB,
      group:'   ',
      paths:[
          HingeRight.changeBeats(1).scale(0.5,1.0) +
          LeadRight.changeBeats(4).scale(5.0,3.5) +
          LeadRight.changeBeats(4).scale(3.0,3.0),

          FlipRight.skew(-1.0,0.0) +
          CastLeft,

          FlipLeft.skew(1.0,0.0) +
          CastLeft,

          HingeRight.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(4).scale(4.0,2.5) +
          LeadLeft.changeBeats(4).scale(3.0,2.0)
      ]),
  ];

