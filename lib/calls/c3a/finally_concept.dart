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

  final List<AnimatedCall> FinallyConcept = [ 

    AnimatedCall('Finally As Couples Swing Thru',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Tidal Two-Faced Line',group:'Finally As Couples',fractions:'3',
      paths:[
          Stand.changeBeats(8),

          SwingRight.scale(0.5,0.5) +
          SwingLeft.changeBeats(5).changehands(1).scale(1.5,1.5),

          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(5),

          Stand.changeBeats(3) +
          SwingLeft.changeBeats(5).changehands(3).scale(0.5,0.5)
      ]),

    AnimatedCall('Finally As Couples Mix',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Tidal Two-Faced Line',group:'Finally As Couples',fractions:'3',
      paths:[
          DodgeRight.scale(1.0,0.5),

          RunRight +
          SwingLeft.changeBeats(5).changehands(3).scale(0.5,0.5),

          RunRight,

          DodgeRight.scale(1.0,0.5) +
          SwingLeft.changeBeats(5).scale(1.5,1.5)
      ]),

    AnimatedCall('Finally As Couples Pass the Ocean',
      formation:Formations.NormalLines,
      group:'Finally As Couples',fractions:'3;1.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight +
          ExtendLeft.changeBeats(3).changehands(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterLeft +
          ExtendLeft.changeBeats(3).changehands(1).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight +
          ExtendLeft.changeBeats(3).changehands(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterLeft +
          ExtendLeft.changeBeats(3).changehands(1).scale(1.0,2.0)
      ]),

    AnimatedCall('Finally As Couples Wheel the Sea',
      formation:Formations.LinesFacingOut,
      group:'Finally As Couples',fractions:'3',
      paths:[
          BelleWheel +
          DodgeRight.changeBeats(4).changehands(1).scale(1.0,2.0),

          BeauWheel +
          DodgeRight.changeBeats(4).changehands(2).scale(1.0,2.0),

          BelleWheel +
          Forward_4.changehands(1),

          BeauWheel +
          Forward_4.changehands(2)
      ]),

    AnimatedCall('Finally Tandem Swing Thru',
      formation:Formations.OceanWavesRHBGGB,
      group:'Finally Tandem',fractions:'3',
      paths:[
          SwingRight +
          CounterRotateLeft_0_2.changehands(1).skew(-1.0,0.0) +
          CounterRotateLeft_0_2.changehands(1).skew(0.0,1.0),

          SwingRight,

          SwingRight,

          SwingRight +
          CounterRotateLeft_2_0.changehands(1).skew(1.0,0.0) +
          CounterRotateLeft_2_0.changehands(1).skew(0.0,-1.0)
      ]),
  ];

