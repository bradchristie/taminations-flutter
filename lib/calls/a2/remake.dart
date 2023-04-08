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
import '../../common_dart.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> Remake = [

    AnimatedCall('Remake',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',parts:'1.5;3',
      paths:[
          HingeRight +
          SwingLeft +
          CastRight,

          HingeRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Remake',
      formation:Formations.DiamondFacingRH,
      from:'Facing Diamond',parts:'1.5;3',
      paths:[
          Stand.changeBeats(1.5) +
          SwingLeft +
          CastRight,

          HingeRight +
          SwingLeft
      ]),

    AnimatedCall('Remake',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',parts:'1.5;3',
      paths:[
          HingeRight +
          SwingLeft +
          CastRight,

          HingeRight +
          Stand.changeBeats(3) +
          CastRight,

          HingeRight +
          SwingLeft +
          CastRight,

          HingeRight +
          Stand.changeBeats(3) +
          CastRight
      ]),

    AnimatedCall('Remake',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',parts:'1.5;3',
      taminator: '''
      Note that the very centers do not trade, since this is not a
      Grand Remake.
    ''',
      paths:[
          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Remake',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds',parts:'1.5;3',
      paths:[
          HingeRight +
          SwingLeft,

          Stand.changeBeats(1.5) +
          SwingLeft +
          CastRight,

          HingeRight +
          SwingLeft,

          Stand.changeBeats(1.5) +
          SwingLeft +
          CastRight
      ]),

    AnimatedCall('Left Remake',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',parts:'1.5;3',
      paths:[
          HingeLeft +
          Stand.changeBeats(3) +
          CastLeft,

          HingeLeft +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Left Remake',
      formation:Formations.DiamondFacing,
      from:'Facing Diamond',parts:'1.5;3',
      paths:[
          Stand.changeBeats(1.5) +
          SwingRight +
          CastLeft,

          HingeLeft +
          SwingRight
      ]),

    AnimatedCall('Left Remake',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',parts:'1.5;3',
      paths:[
          HingeLeft +
          Stand.changeBeats(3) +
          CastLeft,

          HingeLeft +
          SwingRight +
          CastLeft,

          HingeLeft +
          Stand.changeBeats(3) +
          CastLeft,

          HingeLeft +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Left Remake',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',parts:'1.5;3',
      taminator: '''
      Note that the very centers do not trade, since this is not a
      Grand Remake.
    ''',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Remake',
      formation:Formations.DiamondsFacingLHGirlPoints,
      from:'Facing Diamonds',parts:'1.5;3',
      paths:[
          HingeLeft +
          SwingRight,

          Stand.changeBeats(1.5) +
          SwingRight +
          CastLeft,

          HingeLeft +
          SwingRight,

          Stand.changeBeats(1.5) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Any Hand Remake',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',parts:'1.5;3',
      paths:[
          HingeRight +
          FlipLeft +
          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33),

          HingeRight +
          Stand.changeBeats(3) +
          QuarterLeft.changehands(2).skew(0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,0.33),

          HingeLeft +
          Stand.changeBeats(3) +
          QuarterRight.changehands(1).skew(0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,-0.33),

          HingeLeft +
          RunRight +
          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33)
      ]),

    AnimatedCall('Any Hand Remake',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',parts:'1.5;3',
      paths:[
          HingeLeft +
          Stand.changeBeats(3) +
          QuarterRight.changehands(1).skew(0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,0.33) +
          QuarterRight.changehands(1).skew(-0.33,-0.33),

          HingeLeft +
          RunRight +
          HingeLeft.scale(1.0,2.0).skew(0.33,-0.33) +
          HingeLeft.skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,1.0).skew(-0.33,0.33),

          HingeRight +
          FlipLeft +
          HingeRight.scale(1.0,2.0).skew(0.33,0.33) +
          HingeRight.skew(-0.33,0.33) +
          HingeRight.scale(2.0,1.0).skew(-0.33,-0.33),

          HingeRight +
          Stand.changeBeats(3) +
          QuarterLeft.changehands(2).skew(0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,-0.33) +
          QuarterLeft.changehands(2).skew(-0.33,0.33)
      ]),

    AnimatedCall('Any Hand Remake',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns, Right-Hand Centers',parts:'1.5;3',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3).changehands(1) +
          BackHingeRight.scale(0.5,0.5) +
          BackHingeRight.scale(0.5,0.5) +
          BackHingeRight.scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          StandAlone.changeBeats(3) +
          BackHingeLeft.scale(0.5,0.5) +
          BackHingeLeft.scale(0.5,0.5) +
          BackHingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Any Hand Remake',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns, Left-Hand Centers',parts:'1.5;3',
      paths:[
          HingeRight.scale(0.5,1.0) +
          StandAlone.changeBeats(3) +
          BackHingeRight.scale(0.5,0.5) +
          BackHingeRight.scale(0.5,0.5) +
          BackHingeRight.scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3).changehands(2) +
          BackHingeLeft.scale(0.5,0.5) +
          BackHingeLeft.scale(0.5,0.5) +
          BackHingeLeft.scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Any Hand Remake',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',parts:'1.5;3',
      paths:[
          HingeRight +
          FlipLeft,

          Stand.changeBeats(1.5) +
          RunRight +
          CastLeft,

          HingeRight +
          FlipLeft,

          Stand.changeBeats(1.5) +
          RunRight +
          CastLeft
      ]),

    AnimatedCall('Any Hand Remake',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',parts:'1.5;3',
      paths:[
          HingeLeft +
          RunRight,

          Stand.changeBeats(1.5) +
          FlipLeft +
          CastRight,

          HingeLeft +
          RunRight,

          Stand.changeBeats(1.5) +
          FlipLeft +
          CastRight
      ]),

    AnimatedCall('Remake the Alamo',
      formation:Formations.AlamoWave,
      from:'Alamo Wave',group:' ',parts:'1.5;3',
      paths:[
          SxtnthLeft +
          HingeRight.changehands(6).skew(0.414,0.0) +
          HingeLeft +
          HingeLeft.changehands(5).skew(0.414,0.0) +
          CastRight +
          SxtnthRight,

          SxtnthRight +
          HingeRight.changehands(6) +
          Stand.changeBeats(3) +
          CastRight +
          SxtnthLeft,

          SxtnthLeft +
          HingeRight.changehands(6).skew(0.414,0.0) +
          HingeLeft +
          HingeLeft.changehands(5).skew(0.414,0.0) +
          CastRight +
          SxtnthRight,

          SxtnthRight +
          HingeRight.changehands(6) +
          Stand.changeBeats(3) +
          CastRight +
          SxtnthLeft
      ]),

    AnimatedCall('All 8 Remake',
      formation:Formations.StaticMiniWavesRH,
      from:'Static Mini-Waves',group:' ',parts:'1.5;3',
      paths:[
          HingeRight.skew(1.0,0.0) +
          SwingLeft +
          HingeRight.skew(0.0,-0.5) +
          HingeRight.skew(0.5,0.0) +
          HingeRight,

          HingeRight.skew(-1.0,0.0) +
          Stand.changeBeats(3) +
          HingeRight.skew(0.0,0.5) +
          HingeRight.skew(-0.5,0.0) +
          HingeRight,

          HingeRight.skew(1.0,0.0) +
          SwingLeft +
          HingeRight.skew(0.0,-0.5) +
          HingeRight.skew(0.5,0.0) +
          HingeRight,

          HingeRight.skew(-1.0,0.0) +
          Stand.changeBeats(3) +
          HingeRight.skew(0.0,0.5) +
          HingeRight.skew(-0.5,0.0) +
          HingeRight
      ]),

    AnimatedCall('All 8 Left Remake',
      formation:Formations.StaticMiniWavesLH,
      from:'Static Mini-Waves',group:' ',parts:'1.5;3',
      paths:[
          HingeLeft.skew(-1.0,0.0) +
          Stand.changeBeats(3) +
          HingeLeft.skew(0.0,-0.5) +
          HingeLeft.skew(-0.5,0.0) +
          HingeLeft,

          HingeLeft.skew(1.0,0.0) +
          SwingRight +
          HingeLeft.skew(0.0,0.5) +
          HingeLeft.skew(0.5,0.0) +
          HingeLeft,

          HingeLeft.skew(-1.0,0.0) +
          Stand.changeBeats(3) +
          HingeLeft.skew(0.0,-0.5) +
          HingeLeft.skew(-0.5,0.0) +
          HingeLeft,

          HingeLeft.skew(1.0,0.0) +
          SwingRight +
          HingeLeft.skew(0.0,0.5) +
          HingeLeft.skew(0.5,0.0) +
          HingeLeft
      ]),

    AnimatedCall('As Couples Remake',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',group:' ',parts:'3;4',
      paths:[
          LeadRight.changeBeats(3).changehands(2).scale(1.5,3.0) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          SwingRight.changeBeats(4).scale(1.5,1.5) +
          LeadRight.changeBeats(3).changehands(2).scale(3.0,1.5),

          LeadRight.changeBeats(3).changehands(3).scale(0.5,1.0) +
          SwingLeft.changeBeats(4).scale(1.5,1.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          LeadRight.changeBeats(3).changehands(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).changehands(3).scale(0.5,1.0) +
          Stand.changeBeats(4) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          LeadRight.changeBeats(3).changehands(3).scale(1.0,0.5),

          LeadRight.changeBeats(3).changehands(2).scale(1.5,3.0) +
          Stand.changeBeats(4) +
          SwingRight.changeBeats(4).scale(1.5,1.5) +
          LeadRight.changeBeats(3).changehands(2).scale(3.0,1.5)
      ]),

    AnimatedCall('Grand Remake',
      formation:Formations.ColumnRHGBGB,
      group:' ',parts:'1.5;3',
      paths:[
          HingeRight.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Grand Remake',
      formation:Formations.ColumnLHGBGB,
      group:' ',parts:'1.5;3',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          HingeLeft.scale(0.5,1.0) +
          Stand.changeBeats(3) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Remake the Thar',
      formation:Formations.TharRHBoys,
      from:'Thar',parts:'1.5;3',
      taminator: '''Note that this starts with the left hand.  Unlike Remake,
      the caller does not need to say "Left Remake the Thar".
    ''',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.LEFT, cx1: 0.55, cy1: 0, cx2: 1, cy2: 0.45, x2: 1, y2: 1, cx3: .265, cx4: .52, cy4: .105, x4: .707, y4: .293  )) +
          SwingRight.scale(0.707,0.707) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.LEFT, cx1: .5, cy1: 0, cx2: 1, cy2: 0, x2: 1.414, y2: 0, cx3: .265, cx4: .52, cy4: .105, x4: .707, y4: .293  )) +
          SwingLeft,

      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.LEFT, cx1: 0.55, cy1: 0, cx2: 1, cy2: 0.45, x2: 1, y2: 1, cx3: .891, cx4: 1.337, cy4: 1.077, x4: .707, y4: 1.707  )) +
          SwingRight.scale(0.707,0.707) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.LEFT, cx1: 0, cy1: .5, cx2: 0, cy2: 1, x2: 0, y2: 1.414, cx3: .891, cx4: 1.337, cy4: 1.077, x4: .707, y4: 1.707  )) +
          SwingLeft,

      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.LEFT, cx1: 0.55, cy1: 0, cx2: 1, cy2: 0.45, x2: 1, y2: 1, cx3: .265, cx4: .52, cy4: .105, x4: .707, y4: .293  )) +
          SwingRight.scale(0.707,0.707) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.LEFT, cx1: .5, cy1: 0, cx2: 1, cy2: 0, x2: 1.414, y2: 0, cx3: .265, cx4: .52, cy4: .105, x4: .707, y4: .293  )) +
          SwingLeft,

      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.LEFT, cx1: 0.55, cy1: 0, cx2: 1, cy2: 0.45, x2: 1, y2: 1, cx3: .891, cx4: 1.337, cy4: 1.077, x4: .707, y4: 1.707  )) +
          SwingRight.scale(0.707,0.707) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.LEFT, cx1: 0, cy1: .5, cx2: 0, cy2: 1, x2: 0, y2: 1.414, cx3: .891, cx4: 1.337, cy4: 1.077, x4: .707, y4: 1.707  )) +
          SwingLeft
      ]),

    AnimatedCall('Remake the Thar',
      formation:Formations.TharLHBoys,
      from:'Wrong Way Thar',parts:'1.5;3',
      paths:[
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.RIGHT, cx1: 0.55, cy1: 0, cx2: 1, cy2: -0.45, x2: 1, y2: -1, cx3: .265, cx4: .52, cy4: -.105, x4: .707, y4: -.293  )) +
          SwingLeft.scale(0.707,0.707) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.RIGHT, cx1: .5, cy1: 0, cx2: 1, cy2: 0, x2: 1.414, y2: 0, cx3: .265, cx4: .52, cy4: -.105, x4: .707, y4: -.293  )) +
          SwingRight,

      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.RIGHT, cx1: 0.55, cy1: 0, cx2: 1, cy2: -0.45, x2: 1, y2: -1, cx3: .891, cx4: 1.337, cy4: -1.077, x4: .707, y4: -1.707  )) +
          SwingLeft.scale(0.707,0.707) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.RIGHT, cx1: 0, cy1: -.5, cx2: 0, cy2: -1, x2: 0, y2: -1.414, cx3: .891, cx4: 1.337, cy4: -1.077, x4: .707, y4: -1.707  )) +
          SwingRight,

      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.RIGHT, cx1: 0.55, cy1: 0, cx2: 1, cy2: -0.45, x2: 1, y2: -1, cx3: .265, cx4: .52, cy4: -.105, x4: .707, y4: -.293  )) +
          SwingLeft.scale(0.707,0.707) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.RIGHT, cx1: .5, cy1: 0, cx2: 1, cy2: 0, x2: 1.414, y2: 0, cx3: .265, cx4: .52, cy4: -.105, x4: .707, y4: -.293  )) +
          SwingRight,

      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.RIGHT, cx1: 0.55, cy1: 0, cx2: 1, cy2: -0.45, x2: 1, y2: -1, cx3: .891, cx4: 1.337, cy4: -1.077, x4: .707, y4: -1.707  )) +
          SwingLeft.scale(0.707,0.707) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.RIGHT, cx1: 0, cy1: -.5, cx2: 0, cy2: -1, x2: 0, y2: -1.414, cx3: .891, cx4: 1.337, cy4: -1.077, x4: .707, y4: -1.707  )) +
          SwingRight
      ]),
  ];

