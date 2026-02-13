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

  final List<AnimatedCall> Hinge = [

    AnimatedCall('Hinge',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',difficulty: 1,notForSequencer: true,
      paths:[
          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:-1.5,y:3,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:180),
        Dancer.fromData(gender:Gender.GIRL,x:-1.5,y:-1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1.5,y:-3,angle:180),
  ]),
      from:'Right-Hand Waves',difficulty: 1,
      paths:[
          HingeRight.changeBeats(2).skew(-0.5,-0.5),

          HingeRight.changeBeats(2).skew(0.5,0.5),

          HingeRight.changeBeats(2).skew(-0.5,0.5),

          HingeRight.changeBeats(2).skew(0.5,-0.5)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Centers In',difficulty: 2,
      paths:[
          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2),

          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Centers Out',difficulty: 2,
      paths:[
          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2),

          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',difficulty: 1,
      paths:[
          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Magic Column RH'),
      from:'Magic Columns, Right-Hand Centers',difficulty: 2,
      paths:[
          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Magic Column LH'),
      from:'Magic Columns, Left-Hand Centers',difficulty: 2,
      paths:[
          HingeRight.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeLeft.changeBeats(2).scale(0.5,1.0),

          HingeRight.changeBeats(2).scale(0.5,1.0)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 1,
      paths:[
          HingeRight.changeBeats(2).scale(1.0,0.5),

          HingeRight.changeBeats(2).scale(1.0,0.5),

          HingeRight.changeBeats(2).scale(1.0,0.5),

          HingeRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Hinge',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Hinge',
        formation:Formation('Thar RH Boys'),
        from:'Thar',
        difficulty: 2,
        paths:[
          HingeLeft.scale(1,1.414) +
              SxtnthRight,
          HingeLeft.skew(0,-0.414) +
              SxtnthLeft,
          HingeLeft.scale(1,1.414) +
              SxtnthRight,
          HingeLeft.skew(0,-0.414) +
              SxtnthLeft,
        ]),

    AnimatedCall('Hinge',
        formation:Formation('Thar LH Boys'),
        from:'Wrong Way Thar',
        difficulty: 2,
        paths:[
          HingeRight.scale(1,1.414) +
              SxtnthLeft,
          HingeRight.skew(0,0.414) +
              SxtnthRight,
          HingeRight.scale(1,1.414) +
              SxtnthLeft,
          HingeRight.skew(0,0.414) +
              SxtnthRight
        ]),

    //  Wave between mini-waves
    //  Coded here otherwise the program matches a wave between
    //  mini-waves to a thar, ending incorrectly as a squared set
    AnimatedCall('Hinge',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:0.5,angle:180),
          Dancer.fromData(gender:Gender.BOY,x:-2.5,y:0,angle:270),
          Dancer.fromData(gender:Gender.GIRL,x:-3.5,y:0,angle:90),
        ]),
        from:'Mini-Waves 1',
        difficulty: 2,
        noDisplay: true,
        paths:[
          HingeRight.changeBeats(2).scale(1.0,0.5),

          HingeRight.changeBeats(2).scale(1.0,0.5),

          HingeRight.changeBeats(2).scale(1.0,0.5),

          HingeRight.changeBeats(2).scale(1.0,0.5)
        ]),

    //  Left-hand version of previous
    AnimatedCall('Hinge',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:0,y:1.5,angle:180),
          Dancer.fromData(gender:Gender.GIRL,x:0,y:0.5,angle:0),
          Dancer.fromData(gender:Gender.BOY,x:-2.5,y:0,angle:90),
          Dancer.fromData(gender:Gender.GIRL,x:-3.5,y:0,angle:270),
        ]),
        from:'Mini-Waves 2',
        difficulty: 2,
        noDisplay: true,
        paths:[
          HingeLeft.changeBeats(2).scale(1.0,0.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5),

          HingeLeft.changeBeats(2).scale(1.0,0.5),
        ]),



    AnimatedCall('Centers Hinge',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
        difficulty: 1,
      notForSequencer: true,
      paths:[
          Path(),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 2,
        notForSequencer: true,
      paths:[
          HingeLeft.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',difficulty: 1,
        notForSequencer: true,
      paths:[
          Path(),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,
        notForSequencer: true,
      paths:[
          Path(),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Diamond RH'),
      from:'Right-Hand Diamond',difficulty: 2,
        notForSequencer: true,
      paths:[
          Path(),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Diamond LH'),
      from:'Left-Hand Diamond',difficulty: 2,
        notForSequencer: true,
      paths:[
          Path(),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
        notForSequencer: true,
      paths:[
          Path(),

          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 2,
        notForSequencer: true,
      paths:[
          Path(),

          HingeLeft.changeBeats(2),

          HingeLeft.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',difficulty: 2,
        notForSequencer: true,
      paths:[
          HingeRight.changeBeats(2),

          Path(),

          HingeRight.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',difficulty: 2,
        notForSequencer: true,
      paths:[
          HingeLeft.changeBeats(2),

          Path(),

          HingeLeft.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Centers Hinge',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',difficulty: 2,
        notForSequencer: true,
      paths:[
          Path(),

          Path(),

          HingeRight.changeBeats(2),

          HingeRight.changeBeats(2)
      ]),

    AnimatedCall('Very Centers Hinge',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Right-Hand Diamonds',difficulty: 2,
        notForSequencer: true,
      paths:[
          Path(),

          Path(),

          HingeLeft.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Very Centers Hinge',
      formation:Formation('Diamonds LH Girl Points'),
      from:'Left-Hand Diamonds',difficulty: 2,
        notForSequencer: true,
      paths:[
          Path(),

          Path(),

          HingeRight.changeBeats(2),

          Path()
      ]),

    AnimatedCall('Very Centers Hinge',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',difficulty: 2,
        notForSequencer: true,
      paths:[
          Path(),

          Path(),

          Path(),

          HingeLeft.changeBeats(2)
      ]),

    AnimatedCall('Very Centers Hinge',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',difficulty: 2,
        notForSequencer: true,
      paths:[
          Path(),

          Path(),

          Path(),

          HingeLeft.changeBeats(2).changehands(Hands.GRIPLEFT).scale(1.0,0.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          HingeRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(3.0,3.0),

          HingeRight.changeBeats(3).changehands(Hands.GRIPBOTH).scale(1.0,1.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(3).changehands(Hands.GRIPBOTH).scale(1.0,1.0),

          HingeLeft.changeBeats(3).changehands(Hands.GRIPLEFT).scale(3.0,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          HingeRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(1.5,3.0),

          HingeRight.changeBeats(3).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          HingeRight.changeBeats(3).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          HingeRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          HingeLeft.changeBeats(3).changehands(Hands.GRIPLEFT).scale(1.5,3.0),

          HingeLeft.changeBeats(3).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          HingeLeft.changeBeats(3).changehands(Hands.GRIPBOTH).scale(0.5,1.0),

          HingeLeft.changeBeats(3).changehands(Hands.GRIPLEFT).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',difficulty: 1,
      paths:[
          HingeRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(3.0,1.5),

          HingeRight.changeBeats(3).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          HingeRight.changeBeats(3).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          HingeRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(3.0,1.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Two-Faced Tidal Line LH'),
      difficulty: 1,noDisplay: true,
      paths:[
          HingeLeft.changeBeats(3).changehands(Hands.GRIPLEFT).scale(3.0,1.5),

          HingeLeft.changeBeats(3).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          HingeLeft.changeBeats(3).changehands(Hands.GRIPBOTH).scale(1.0,0.5),

          HingeLeft.changeBeats(3).changehands(Hands.GRIPLEFT).scale(3.0,1.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',difficulty: 2,
      paths:[
          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(-0.5,3.0),

          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(-1.5,1.0),

          HingeRight.changeBeats(3).changehands(Hands.LEFT).scale(0.5,1.0),

          HingeRight.changeBeats(3).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',difficulty: 2,noDisplay: true,
      paths:[
          HingeRight.changeBeats(3).scale(1.5,3.0),

          HingeRight.changeBeats(3).changehands(Hands.LEFT).scale(0.5,1.0),

          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(-1.5,1.0),

          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(-0.5,3.0)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',difficulty: 2,
      paths:[
          HingeRight.changeBeats(3).scale(3.0,1.5),

          HingeRight.changeBeats(3).changehands(Hands.LEFT).scale(1.0,0.5),

          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(-3.0,0.5),

          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(-1.0,1.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Tidal Line LH'),
      from:'Tidal Line LH',difficulty: 2,noDisplay: true,
      paths:[
          QuarterLeft.changeBeats(3).changehands(Hands.RIGHT).skew(-3.0,0.5),

          QuarterLeft.changeBeats(3).changehands(Hands.LEFT).skew(-1.0,1.5),

          HingeRight.changeBeats(3).scale(3.0,1.5),

          HingeRight.changeBeats(3).changehands(Hands.LEFT).scale(1.0,0.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Two-Faced Tidal Line',difficulty: 2,
      paths:[
          HingeRight.changeBeats(3).scale(3.0,1.5),

          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5),

          HingeRight.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5),

          HingeRight.changeBeats(3).scale(3.0,1.5)
      ]),

    AnimatedCall('Couples Hinge',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Two-Faced Tidal Line LH',difficulty: 2,noDisplay: true,
      paths:[
          HingeLeft.changeBeats(3).scale(3.0,1.5),

          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5),

          HingeLeft.changeBeats(3).changehands(Hands.BOTH).scale(1.0,0.5),

          HingeLeft.changeBeats(3).scale(3.0,1.5)
      ]),
  ];

