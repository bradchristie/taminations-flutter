/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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
import '../../moves.dart';
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> LockIt = [

    AnimatedCall('Lockit',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:0,angle:270),
  ]),
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
          LeadRight.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0),

          HingeRight.changeBeats(4).changehands(Hands.BOTH)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          HingeLeft.changeBeats(4).changehands(Hands.BOTH),

          LeadLeft.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamond Facing RH'),
      from:'Facing Diamond, Right-Hand Centers',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamond Facing'),
      from:'Facing Diamond, Left-Hand Centers',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(4).scale(1.5,3.0),

          HingeLeft.changeBeats(4).scale(0.5,1.0),

          HingeLeft.changeBeats(4).scale(0.5,1.0),

          LeadRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(4).scale(1.5,3.0),

          HingeRight.changeBeats(4).scale(0.5,1.0),

          HingeRight.changeBeats(4).scale(0.5,1.0),

          LeadLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          LeadRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.5,3.0),

          HingeRight.changeBeats(4).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          HingeRight.changeBeats(4).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          LeadRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.5,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.5,3.0),

          HingeLeft.changeBeats(4).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          HingeLeft.changeBeats(4).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          LeadLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.5,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5),

          LeadRight.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,1.5),

          HingeRight.changeBeats(4).scale(1.0,0.5),

          HingeRight.changeBeats(4).scale(1.0,0.5),

          LeadLeft.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
          LeadRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(3.0,1.5),

          HingeRight.changeBeats(4).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          HingeRight.changeBeats(4).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          LeadRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(3.0,1.5)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          LeadLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(3.0,1.5),

          HingeLeft.changeBeats(4).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          HingeLeft.changeBeats(4).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          LeadLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(3.0,1.5)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Twin Diamonds',
      paths:[
          QuarterRight.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(1.0,3.0),

          QuarterRight.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,-2.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Twin Diamonds',
      paths:[
          QuarterLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          QuarterLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.0,2.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds, Right-Hand Centers',
      paths:[
          QuarterRight.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          QuarterRight.changeBeats(4).changehands(Hands.RIGHT).skew(1.0,-2.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamonds Facing LH Girl Points'),
      from:'Facing Diamonds, Left-Hand Centers',
      paths:[
          QuarterLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(1.0,3.0),

          QuarterLeft.changeBeats(4).changehands(Hands.LEFT).skew(1.0,2.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamonds RH PTP Girl Points'),
      from:'Right-Hand Point-to-Point Diamonds',
      paths:[
          HingeRight.changeBeats(4).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          HingeRight.changeBeats(4).skew(-1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamonds LH PTP Girl Points'),
      from:'Left-Hand Point-to-Point Diamonds',
      paths:[
          HingeLeft.changeBeats(4).skew(-1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0),

          HingeLeft.changeBeats(4).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamonds Facing PTP'),
      from:'Facing PTP Diamonds, Right-Hand Centers',
      paths:[
          HingeRight.changeBeats(4).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0),

          HingeRight.changeBeats(4).skew(-1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formation('Diamonds Facing LH PTP'),
      from:'Facing PTP Diamonds, Left-Hand Centers',
      paths:[
          HingeLeft.changeBeats(4).skew(-1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          HingeLeft.changeBeats(4).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('As Couples Lockit',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',group:' ',
      paths:[
          HingeRight.changeBeats(4).scale(3.5,3.5),

          HingeRight.changeBeats(4).scale(2.5,2.5),

          HingeLeft.changeBeats(4).scale(1.5,1.5),

          HingeLeft.changeBeats(4).scale(0.5,0.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Lockit').first.xref(title: 'All 8 Lockit').xref(group: ' '),
  ];

