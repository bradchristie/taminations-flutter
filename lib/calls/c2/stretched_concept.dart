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
import '../../formation.dart';
import '../../moves.dart';
import '../c3a/scatter_circulate.dart' as c3a;

  final List<AnimatedCall> StretchedConcept = [

    AnimatedCall('Stretched Line Crossfire',
      formation:Formation('Tidal Line RH'),
      group:'Stretched Line',
      paths:[
          RunRight.changeBeats(6).scale(1.0,1.25).skew(2.0,0.0),

          RunRight.scale(0.5,0.75) +
          Forward_2.changeBeats(3),

          RunRight.changeBeats(6).scale(1.0,2.25).skew(2.0,0.0),

          RunRight.changeBeats(4).scale(0.5,1.75) +
          Forward_2
      ]),

    AnimatedCall('Stretched Line Tag the Line',
      formation:Formation('Tidal Line RH'),
      group:'Stretched Line',
      paths:[
          LeadRight.changeBeats(2.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).scale(1.0,0.5),

          LeadRight.changeBeats(2.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).scale(1.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5),

          LeadRight.scale(0.5,1.0) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Stretched Line Turn and Deal',
      formation:Formation('Tidal Line RH'),
      group:'Stretched Line',
      paths:[
          LeadRight.changeBeats(2.5).scale(1.5,0.5) +
          QuarterRight.changeBeats(2.5),

          LeadRight.changeBeats(2.5).scale(1.5,1.0) +
          QuarterRight.changeBeats(2.5).skew(0.5,0.0),

          LeadRight.scale(1.5,1.0) +
          Forward +
          QuarterRight.skew(0.5,0.0),

          LeadRight.scale(1.5,1.0) +
          Forward_2 +
          QuarterRight.skew(0.5,0.0)
      ]),

    AnimatedCall('Stretched Line Wheel and Deal',
      formation:Formation('Tidal Line RH'),
      group:'Stretched Line',
      paths:[
          RunRight.changeBeats(4).changehands(6).scale(1.5,1.25).skew(2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(2.0,0.5),

          RunRight.changeBeats(4).changehands(6).scale(1.5,2.25).skew(2.0,0.0),

          UmTurnRight.changeBeats(4).changehands(5).skew(2.0,-1.5)
      ]),

    AnimatedCall('Stretched Wave Explode the Wave',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Stretched Wave',
      paths:[
          LeadRight.changeBeats(2).scale(1.5,0.5) +
          Forward +
          ExtendRight.scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(4).scale(1.0,0.5),

          LeadRight.changeBeats(2).scale(1.5,0.5) +
          Forward_2 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          LeadLeft.changeBeats(2).scale(0.5,0.5) +
          Forward_2 +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Stretched Wave Recycle',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Stretched Wave',
      paths:[
          RunRight.changeBeats(3).scale(1.0,1.25).skew(2.0,0.0),

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,0.0) +
          UmTurnRight.changeBeats(2).skew(1.5,-0.5),

          RunRight.changeBeats(3).scale(1.0,2.25).skew(2.0,0.0),

          UmTurnRight.changeBeats(2).skew(-1.0,0.0) +
          UmTurnRight.changeBeats(2).skew(1.0,-1.5)
      ]),
    c3a.ScatterCirculate.where((tam) =>
      tam.title == 'Scatter Circulate' && tam.from == 'Normal Lines').first.xref(title: 'Stretched Box Circulate'),
    c3a.ScatterCirculate.where((tam) =>
      tam.title == 'Scatter Circulate' && tam.from == 'Lines Facing Out').first.xref(title: 'Stretched Box Circulate'),
    c3a.ScatterCirculate.where((tam) =>
      tam.title == 'Scatter Circulate' && tam.from == 'Right-Hand Two-Faced Lines').first.xref(title: 'Stretched Box Circulate'),
    c3a.ScatterCirculate.where((tam) =>
      tam.title == 'Scatter Circulate' && tam.from == 'Left-Hand Two-Faced Lines').first.xref(title: 'Stretched Box Circulate'),
  ];

