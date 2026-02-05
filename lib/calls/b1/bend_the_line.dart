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

  final List<AnimatedCall> BendTheLine = [

    AnimatedCall('Bend the Line',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      notForSequencer: true,
      paths:[
          HingeRight.changeBeats(4).skew(0, -.5),

          BackHingeLeft.changeBeats(4).skew(0, -.5)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      notForSequencer: true,
      paths:[
          BackHingeRight.changeBeats(4).skew(0, .5),

          HingeLeft.changeBeats(4).skew(0, .5)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 2,
      paths:[
          HingeRight.changeBeats(4),

          BackHingeLeft.changeBeats(4),

          BackHingeRight.changeBeats(4),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(4),

          BackHingeRight.changeBeats(4),

          BackHingeLeft.changeBeats(4),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          HingeRight.changeBeats(4),

          BackHingeLeft.changeBeats(4),

          BackHingeLeft.changeBeats(4),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(4),

          BackHingeRight.changeBeats(4),

          BackHingeRight.changeBeats(4),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',difficulty: 1,
      paths:[
          HingeRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,0.5),

          BackHingeLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,0.5),

          BackHingeLeft.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,0.5),

          HingeRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,0.5)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(4).scale(1.0,0.5),

          BackHingeRight.changeBeats(4).scale(1.0,0.5),

          BackHingeRight.changeBeats(4).scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formation('Tidal Line RH'),
      from:'Right-Hand Tidal Line',difficulty: 2,
      paths:[
          HingeRight.changeBeats(4).scale(1.0,0.5),

          BackHingeLeft.changeBeats(4).scale(1.0,0.5),

          BackHingeRight.changeBeats(4).scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5)
      ]),

    AnimatedCall('Bend the Line',
      formation:Formation('Tidal Line LH'),
      from:'Left-Hand Tidal Line',difficulty: 2,
      paths:[
          BackHingeRight.changeBeats(4).scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5),

          HingeRight.changeBeats(4).scale(1.0,0.5),

          BackHingeLeft.changeBeats(4).scale(1.0,0.5)
      ]),

    AnimatedCall('Line of 6 Bend the Line', group: ' ', difficulty: 2,
        formation: Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:0,y:5,angle:180)]),
        paths: [
          Stand,
          BackHingeRight.skew(-1, 0),
          HingeLeft.changehands(Hands.BOTH).skew(-1, 0),
          HingeLeft.scale(2, 3)
        ]),

    //  For sequencer, all possible lines of just 6 dancers BTL
    AnimatedCall('Line of 6 Bend the Line', group: ' ', difficulty: 2,
        formation: Formation('', dancers:[
          Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
          Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:180),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:5,angle:180)]),
        paths: [
          BackHingeRight.skew(-1, 0),
          HingeLeft.changehands(Hands.BOTH).skew(-1, 0),
          HingeLeft.scale(2, 3)
        ]),

    AnimatedCall('Line of 6 Bend the Line', group: ' ', difficulty: 2,
        formation: Formation('', dancers:[
          Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
          Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:5,angle:0)]),
        paths: [
          BackHingeLeft.skew(-1, 0),
          HingeRight.changehands(Hands.BOTH).skew(-1, 0),
          HingeRight.scale(2, 3)
        ]),

    AnimatedCall('Line of 6 Bend the Line', group: ' ', difficulty: 2,
        formation: Formation('',asymmetric: true, dancers:[
          Dancer.fromData(gender:Gender.GIRL,x:0,y:1,angle:0),
          Dancer.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:5,angle:0),
          Dancer.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
          Dancer.fromData(gender:Gender.BOY,x:0,y:-5,angle:0)]),
        paths: [
          BackHingeLeft.skew(-1, 0),
          HingeRight.changehands(Hands.BOTH).skew(-1, 0),
          HingeRight.scale(2, 3),
          BackHingeRight.skew(-1, 0),
          HingeLeft.changehands(Hands.BOTH).skew(-1, 0),
          HingeLeft.scale(2, 3)
        ]),

    AnimatedCall('Line of 8 Bend the Line', group: ' ',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',difficulty: 2,
      paths:[
          LeadRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(3.0,1.5),

          LeadRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          BackHingeLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          BackHingeLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(3.0,1.5)
      ]),


    //  More animations of big lines for the sequencer
    AnimatedCall('Line of 8 Bend the Line',
        formation:Formation('Tidal Line LH'),
        from:'Tidal Line LH',difficulty: 2, noDisplay: true,
        paths:[
          LeadLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          LeadLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(3.0,1.5),

          BackHingeRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(3.0,1.5),

          BackHingeRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(1.0,0.5)
        ]),

    AnimatedCall('Line of 8 Bend the Line',
        formation:
        Formation('',asymmetric: true, dancers:[
          Dancer.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:180),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:180),
          Dancer.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:180),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:180),
          Dancer.fromData(gender:Gender.BOY,x:0,y:3.5,angle:180),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:180),
          Dancer.fromData(gender:Gender.BOY,x:0,y:1.5,angle:180),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:.5,angle:180),
        ]),
        from:'Tidal Line One-Faced',difficulty: 2, noDisplay: true,
        paths:[
          LeadRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(3.0,1.5),

          LeadRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          BackHingeLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          BackHingeLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(3.0,1.5),

          LeadLeft.changeBeats(6).changehands(Hands.GRIPLEFT).scale(3.0,1.5),

          LeadLeft.changeBeats(6).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          BackHingeRight.changeBeats(6).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          BackHingeRight.changeBeats(6).changehands(Hands.GRIPRIGHT).scale(3.0,1.5)
        ]),


  ];

