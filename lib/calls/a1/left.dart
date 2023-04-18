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
import '../a1/partner_hinge.dart' as a1;
import '../a1/quarter_thru.dart' as a1;
import '../a1/split_square_thru.dart' as a1;
import '../a1/square_chain_thru.dart' as a1;
import '../a1/turn_and_deal.dart' as a1;
import '../a2/pass_and_roll.dart' as a2;
import '../a2/remake.dart' as a2;
import '../a2/spin_the_windmill.dart' as a2;
import '../b2/swing_thru.dart' as b2;
import '../b2/touch_a_quarter.dart' as b2;
import '../plus/track_ii.dart' as plus;

  final List<AnimatedCall> Left = [

    AnimatedCall('Left Dosado',
      formation:Formations.FacingCouplesCompact,
      group:'Left',
      notForSequencer: true,
      paths:[
          ExtendRight.scale(1.5,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          RetreatLeft.scale(1.0,0.5) +
          RetreatRight.scale(1.5,0.5),

          ExtendRight.scale(1.5,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          RetreatLeft.scale(1.0,0.5) +
          RetreatRight.scale(1.5,0.5)
      ]),

    AnimatedCall('Left Pass to the Center',
      formation:Formations.OceanWavesLHGBBG,
      group:'Left',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.changeBeats(4),

          Forward.changeBeats(2),

          Forward.changeBeats(2) +
          FlipRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),
    b2.SwingThru.where((tam) =>
      tam.title == 'Left Swing Thru' && tam.from == 'Right-Hand Wave').first.xref(title: 'Left Swing Thru').xref(group: 'Left'),

    AnimatedCall('Left 3/4 Tag the Line',
      formation:Formations.TwomFacedLinesLH,
      group:'Left',
      paths:[
          LeadLeft +
          Forward_2.changeBeats(3),

          LeadLeft +
          ExtendLeft.changeBeats(3).scale(3.0,2.0),

          LeadLeft +
          Forward_3,

          LeadLeft +
          Forward_2.changeBeats(3)
      ]),
    b2.TouchAQuarter.where((tam) =>
      tam.title == 'Left Touch a Quarter' && tam.from == 'Facing Couples').first.xref(title: 'Left Touch a Quarter').xref(group: 'Left'),
    plus.TrackIi.where((tam) =>
      tam.title == 'Left Track 2').first.xref(title: 'Left Track 2').xref(group: 'Left'),

    AnimatedCall('Left Turn Thru',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',group:'Left',
      paths:[
          ExtendRight.scale(1.5,0.5) +
          SwingLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendLeft.scale(1.5,0.5),

          ExtendRight.scale(1.5,0.5) +
          SwingLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendLeft.scale(1.5,0.5)
      ]),

    AnimatedCall('Left Turn Thru',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',group:'Left',
      paths:[
          HingeLeft.scale(0.75,1.0) +
          HingeLeft.scale(0.75,0.75) +
          ExtendRight.scale(1.0,0.25),

          HingeLeft.scale(0.75,1.0) +
          HingeLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(1.0,1.75)
      ]),

    AnimatedCall('Left Wheel and Deal',
      formation:Formations.LinesFacingOut,
      group:'Left',
      paths:[
          RunLeft.changeBeats(4).changehands(1).scale(2.0,2.0).skew(1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(2).skew(1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(1).skew(-1.0,0.0),

          RunRight.changeBeats(4).changehands(2).scale(1.0,2.0).skew(-1.0,0.0)
      ]),
    a1.PartnerHinge.where((tam) =>
      tam.title == 'Left Partner Hinge' && tam.from == 'Lines Facing Out').first.xref(title: 'Left Partner Hinge').xref(group: 'Left (A-1)'),
    a1.QuarterThru.where((tam) =>
      tam.title == 'Left Quarter Thru' && tam.from == 'Left-Hand Box').first.xref(title: 'Left Quarter Thru').xref(group: 'Left (A-1)'),
    a1.SplitSquareThru.where((tam) =>
      tam.title == 'Left Split Square Thru').first.xref(title: 'Left Split Square Thru').xref(group: 'Left (A-1)'),
    a1.SquareChainThru.where((tam) =>
      tam.title == 'Left Square Chain Thru' && tam.from == 'Facing Couples').first.xref(title: 'Left Square Chain Thru').xref(group: 'Left (A-1)'),
    a1.TurnAndDeal.where((tam) =>
      tam.title == 'Left Turn and Deal').first.xref(title: 'Left Turn and Deal').xref(group: 'Left (A-1)'),
    a2.PassAndRoll.where((tam) =>
      tam.title == 'Left Pass and Roll').first.xref(title: 'Left Pass and Roll').xref(group: 'Left (A-2)'),
    a2.Remake.where((tam) =>
      tam.title == 'Left Remake').first.xref(title: 'Left Remake').xref(group: 'Left (A-2)'),
    a2.SpinTheWindmill.where((tam) =>
      tam.title == 'Left Spin the Windmill Right' && tam.from == 'Trade By').first.xref(title: 'Left Spin the Windmill Right').xref(group: 'Left (A-2)'),
  ];

