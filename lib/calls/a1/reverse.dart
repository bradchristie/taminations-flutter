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
import '../a1/swap_around.dart' as a1;
import '../a2/recycle.dart' as a2;
import '../b2/flutterwheel.dart' as b2;
import '../b2/wheel_around.dart' as b2;
import '../ms/dixie_style.dart' as ms;

  final List<AnimatedCall> Reverse = [

    AnimatedCall('Reverse Rollaway',
      formation:Formations.NormalLines,
      group:'Reverse',
      paths:[
          FoldRight.changeBeats(1.5).changehands(6).scale(0.6,0.5) +
          UmTurnRight.changeBeats(1.5).changehands(6).skew(1.2,1.0),

          DodgeLeft.changehands(5),

          FoldRight.changeBeats(1.5).changehands(6).scale(0.6,0.5) +
          UmTurnRight.changeBeats(1.5).changehands(6).skew(1.2,1.0),

          DodgeLeft.changehands(5)
      ]),

    AnimatedCall('Reverse Half Sashay',
      formation:Formations.FacingCouples,
      group:'Reverse',notForSequencer: true,
      paths:[
          SashayRight.changeBeats(4),

          BackSashayLeft.changeBeats(4)
      ]),
    b2.WheelAround.where((tam) =>
      tam.title == 'Reverse Wheel Around' && tam.from == 'Facing Couples').first.xref(title: 'Reverse Wheel Around').xref(group: 'Reverse'),

    AnimatedCall('Reverse Courtesy Turn',
      formation:Formations.CouplesFacingOut,
      group:'Reverse',
      paths:[
          BelleReverseWheel.scale(0.67,1.0),

          BeauReverseWheel.scale(0.67,1.0)
      ]),
    b2.Flutterwheel.where((tam) =>
      tam.title == 'Reverse Flutterwheel' && tam.from == 'Facing Couples').first.xref(title: 'Reverse Flutterwheel').xref(group: 'Reverse'),
    ms.DixieStyle.where((tam) =>
      tam.title == 'Reverse Dixie Style to a Wave').first.xref(title: 'Reverse Dixie Style to a Wave').xref(group: 'Reverse'),

    AnimatedCall('Reverse Circle to a Line',
      formation:Formations.EightChainThru,
      group:'Reverse',
      paths:[
          EighthRight.changehands(7) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.GRIPBOTH, cx1: 0, cy1: -1.88, cx2: 2.83, cy2: -1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: 2, x4: 0, y4: 2  )) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.GRIPRIGHT, cx1: 0, cy1: -.78, cx2: .636, cy2: -1.414, x2: 1.414, y2: -1.414, cx3: .55, cx4: 1, cy4: .45, x4: 1, y4: 1  )) +
          EighthRight.changehands(6) +
          UmTurnRight.changehands(6).skew(1.0,-2.0),

          EighthLeft.changehands(7) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.GRIPBOTH, cx1: 0, cy1: -1.88, cx2: 2.83, cy2: -1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: 2, x4: 0, y4: 2  )) +
      Path.fromMovement(Movement.fromData(beats: 1.5, hands: Hands.GRIPBOTH, cx1: 0, cy1: -.39, cx2: .318, cy2: -.707, x2: .707, y2: -.707, cx3: .55, cx4: 1, cy4: .45, x4: 1, y4: 1  )) +
          EighthLeft.changehands(7),

          EighthRight.changehands(7) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.GRIPBOTH, cx1: 0, cy1: -1.88, cx2: 2.83, cy2: -1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: 2, x4: 0, y4: 2  )) +
          EighthLeft.changeBeats(2).changehands(7).skew(2.121,-0.707),

          EighthLeft.changehands(7) +
      Path.fromMovement(Movement.fromData(beats: 3, hands: Hands.GRIPBOTH, cx1: 0, cy1: -1.88, cx2: 2.83, cy2: -1.88, x2: 2.83, y2: 0, cx3: 1.33, cx4: 1.33, cy4: 2, x4: 0, y4: 2  )) +
          EighthRight.changeBeats(2).changehands(5).skew(-0.707,-2.121)
      ]),
    a1.SwapAround.where((tam) =>
      tam.title == 'Reverse Swap Around' && tam.from == 'Facing Couples').first.xref(title: 'Reverse Swap Around').xref(group: 'Reverse (A-1)'),
    a2.Recycle.where((tam) =>
      tam.title == 'Reverse Recycle').first.xref(title: 'Reverse Recycle').xref(group: 'Reverse (A-2)'),
  ];

