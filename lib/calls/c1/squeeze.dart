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

  final List<AnimatedCall> Squeeze = [

    AnimatedCall('Ends Squeeze',
      formation:Formations.ColumnRHGBGB,
      from:'Columns',
      paths:[
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          Path(),

          Path(),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Ends Squeeze',
      formation:Formations.ButterflyRH,
      from:'Butterfly',
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Squeeze',
      formation:Formations.ButterflyRH,
      from:'Butterfly',
      paths:[
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Squeeze',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Diamonds',
      paths:[
          SwingRight +
          DodgeLeft.changeBeats(1).scale(1.0,0.25),

          DodgeRight +
          SwingRight.changehands(6).scale(0.5,1.0),

          SwingRight +
          DodgeLeft.changeBeats(1).scale(1.0,0.25),

          DodgeRight +
          SwingRight.changehands(6).scale(0.5,1.0)
      ]),

    AnimatedCall('Squeeze',
      formation:Formations.ORH,
      from:'O',
      paths:[
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Centers Tandem Squeeze',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',
      paths:[
          Path(),

          CounterRotateRight_0_m2.changehands(2) +
          LeadRight.changeBeats(3).scale(2.0,2.0),

          CounterRotateRight_2_0.changehands(2) +
          Forward_2.changeBeats(1.5) +
          QuarterRight.changeBeats(1.5).skew(2.0,0.0),

          Path()
      ]),

    AnimatedCall('Centers Tandem Squeeze',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',
      paths:[
          Path(),

          CounterRotateLeft_2_0.changehands(1) +
          Forward_2.changeBeats(1.5) +
          QuarterLeft.changeBeats(1.5).skew(2.0,0.0),

          CounterRotateLeft_0_2.changehands(1) +
          LeadLeft.changeBeats(3).scale(2.0,2.0),

          Path()
      ]),

    AnimatedCall('Squeeze the Hourglass',
      formation:Formations.HourglassRHBP,
      from:'Right-Hand Hourglass',
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-3.0) +
          HingeRight.changehands(6),

          Stand.changeBeats(4.5).changehands(0),

          LeadRight.changeBeats(3).scale(1.0,3.0) +
          QuarterRight.changehands(6).skew(1.0,0.0),

          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.1,0.5)
      ]),

    AnimatedCall('Squeeze the Hourglass',
      formation:Formations.HourglassLHBP,
      from:'Left-Hand Hourglass',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          QuarterLeft.changehands(5).skew(1.0,0.0),

          Stand.changeBeats(4.5).changehands(0),

          QuarterLeft.changeBeats(3).skew(0.0,3.0) +
          HingeLeft.changehands(5),

          HingeLeft.scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.1,0.5)
      ]),

    AnimatedCall('Squeeze the Galaxy',
      formation:Formations.GalaxyRHGP,
      from:'Right-Hand Galaxy',
      paths:[
          HingeRight +
          QuarterRight.changeBeats(3).skew(3.0,0.0),

          Stand.changeBeats(4.5).changehands(0),

          QuarterRight.changehands(2).skew(0.0,-1.0) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          LeadRight.changeBeats(3).scale(0.5,3.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Squeeze the Galaxy',
      formation:Formations.GalaxyLHGP,
      from:'Left-Hand Galaxy',
      paths:[
          QuarterLeft.changehands(1).skew(0.0,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,1.0),

          Stand.changeBeats(4.5).changehands(0),

          HingeLeft +
          QuarterLeft.changeBeats(3).skew(3.0,0.0),

          LeadLeft.changeBeats(3).scale(0.5,3.0) +
          HingeLeft.scale(1.0,0.5)
      ]),
  ];

