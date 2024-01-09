/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

  final List<AnimatedCall> Finish = [

    AnimatedCall('Finish Alter the Wave',
      formation:Formation('Ocean Waves LH BGGB'),
      group:'Finish',parts:'4.5;4',
      paths:[
          UmTurnLeft.changeBeats(4.5) +
          LeadRight.changeBeats(2).scale(1.5,3.0) +
          LeadRight.changeBeats(2).scale(3.0,1.5) +
          FlipRight,

          CastRight +
          SwingRight.changeBeats(4) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          CastRight +
          SwingRight.changeBeats(4) +
          LeadRight.changeBeats(3).scale(3.0,1.0),

          UmTurnLeft.changeBeats(4.5) +
          LeadRight.changeBeats(2).scale(2.0,3.0) +
          LeadRight.changeBeats(2).scale(3.0,2.0) +
          FlipRight
      ]),

    AnimatedCall('Finish Brace Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
  ]),
      group:'Finish',isGenderSpecific:true,
      paths:[
          BeauWheel,

          BelleWheel,

          UmTurnLeft,

          UmTurnRight
      ]),

    AnimatedCall('Finish Coordinate',
      formation:Formation('Column RH GBGB'),
      group:'Finish',parts:'1;3',
      taminator: '''
    The first part of Coordinate is Circulate, and the second part is
    Circulate 1/2.  So Finish Coordinate starts with Circulate 1/2.
    ''',
      paths:[
          LeadRight.scale(0.5,1.0) +
          LeadRight.changeBeats(5).scale(3.0,1.5),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5),

          Forward +
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(5).scale(3.0,2.5),

          Forward +
          HingeRight.scale(0.5,1.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Finish Cross Chain And Roll',
      formation:Formation('Trade By'),
      group:'Finish',
      paths:[
          BelleWheel +
          QuarterLeft,

          BeauWheel +
          QuarterLeft,

          Forward.changeBeats(1.5) +
          HingeLeft +
          Forward,

          QuarterRight.skew(0.0,-1.0) +
          HingeLeft +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Finish Diamond Chain Thru',
      formation:Formation('Diamonds RH Girl Points'),
      group:'Finish',parts:'3',
      paths:[
          Stand.changeBeats(3) +
          CastRight,

          Path(),

          SwingLeft +
          CastRight,

          Path()
      ]),

    AnimatedCall('Finish Dixie Diamond',
      formation:Formation('Ocean Waves LH GBBG'),
      group:'Finish',
      paths:[
          UmTurnLeft,

          HingeRight,

          HingeRight,

          UmTurnLeft
      ]),

    AnimatedCall('Finish Linear Cycle',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Finish',fractions:'4',
      paths:[
          Forward_4 +
          RunRight,

          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0),

          Forward_4 +
          RunRight,

          RunRight +
          Forward_2 +
          UmTurnRight.skew(2.0,0.0)
      ]),

    AnimatedCall('Finish Load the Boat',
      formation:Formation('Lines Facing Out'),
      group:'Finish',fractions:'2;3',
      paths:[
          LeadLeft.changeBeats(2).scale(1.5,3.5) +
          LeadLeft.changeBeats(2.5).scale(2.5,3.5) +
          QuarterLeft.changeBeats(2.5).skew(1.0,0.0),

          QuarterRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight +
          PassThru,

          QuarterLeft.changeBeats(2).skew(-1.0,0.0) +
          FlipLeft +
          PassThru,

          LeadRight.changeBeats(2).scale(2.5,3.5) +
          LeadRight.changeBeats(2.5).scale(3.5,4.5) +
          LeadRight.changeBeats(2.5)
      ]),

    AnimatedCall('Finish Motivate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Finish',fractions:'4.5;3',
      paths:[
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          CastLeft +
          SwingRight +
          CastLeft,

          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Finish Pass and Roll',
      formation:Formation('Trade By'),
      group:'Finish',
      paths:[
          FlipRight.scale(1.0,0.25) +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,1.5),

          FlipRight.scale(1.0,0.25) +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          UmTurnRight,

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          Forward +
          ExtendRight.scale(1.0,0.5) +
          FlipRight
      ]),

    AnimatedCall('Finish Pass the Ocean',
      formation:Formation('Lines Facing Out'),
      group:'Finish',
      paths:[
          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(2).skew(-1.0,1.0),

          LeadRight.changeBeats(2)
      ]),

    AnimatedCall('Finish Pass the Sea',
      formation:Formation('Lines Facing Out'),
      group:'Finish',
      paths:[
          LeadLeft.changeBeats(2),

          QuarterRight.changeBeats(2).skew(-1.0,-1.0),

          LeadLeft.changeBeats(2),

          QuarterRight.changeBeats(2).skew(-1.0,-1.0)
      ]),

    AnimatedCall('Finish Percolate',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Finish',parts:'2',
      paths:[
          Forward_2 +
          HingeRight +
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,2.0) +
          Forward,

          LeadLeft.changeBeats(2) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          Forward_2 +
          HingeRight +
          Stand.changeBeats(4).changehands(0),

          LeadRight.changeBeats(2).scale(2.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          Forward_2
      ]),

    AnimatedCall('Finish Recycle',
      formation:Formation('Box RH'),
      group:'Finish',parts:'2',
      paths:[
          CounterRotateRight_3_1.skew(0.0,-1.0) +
          QuarterRight.changeBeats(2),

          CounterRotateRight_m1_m3.skew(0.0,1.0) +
          QuarterRight.changeBeats(2)
      ]),

    AnimatedCall('Finish Relay the Deucey',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Finish',parts:'4.5;3;3;3',
      paths:[
          Forward_2.changeBeats(4.5) +
          Forward_2.changeBeats(3) +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          SwingRight +
          CastLeft,

          CastLeft +
          SwingRight +
          SwingLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          CastLeft +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,3.0) +
          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(4.5),

          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Finish Relay the Shadow',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Finish',parts:'4.5',
      paths:[
          LeadRight.changeBeats(4.5).scale(3.0,3.5) +
          HingeRight.changeBeats(4).scale(3.0,1.0),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          LeadRight +
          LeadRight +
          LeadRight,

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          HingeLeft +
          Forward_2,

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          HingeRight.changeBeats(4).scale(3.0,1.0)
      ]),

    AnimatedCall('Finish Relay the Top',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Finish',parts:'4.5;3',
      paths:[
          ExtendRight.changeBeats(4.5).scale(2.0,2.0) +
          HingeRight.changeBeats(3) +
          CastLeft,

          CastLeft +
          HingeRight.changeBeats(3) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          CastLeft +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Finish Remake',
      formation:Formation('Ocean Waves LH BGGB'),
      group:'Finish',parts:'3',
      paths:[
          SwingLeft +
          CastRight,

          SwingLeft,

          SwingLeft,

          SwingLeft +
          CastRight
      ]),

    AnimatedCall('Finish Rotary Spin',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
  ]),
      group:'Finish',
      paths:[
          Forward +
          CastLeft,

          ExtendRight.scale(1.0,2.0) +
          CastLeft,

          BeauWheel.changeBeats(4) +
          QuarterLeft.skew(0.0,1.0),

          BelleWheel.changeBeats(4) +
          QuarterLeft.skew(0.0,-1.0)
      ]),

    AnimatedCall('Finish Spin Chain and Exchange the Gears',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Finish',parts:'4.5;3;4.5;4',
      paths:[
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2.5).scale(2.7,2.7) +
          HingeRight.changehands(0) +
          SwingRight.changehands(0).skew(-0.5,0.0),

          CastLeft +
          SwingRight +
          CastLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight +
          Forward.changeBeats(2).scale(2.2,2.2) +
          LeadRight.scale(1.5,0.5),

          CastLeft +
          Stand.changeBeats(3) +
          CastLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          Forward.skew(0.0,0.3) +
          HalfHingeRight.changeBeats(1.5).skew(0.3,0.3),

          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          SwingLeft +
          SwingLeft +
          HalfHingeLeft +
          Forward.changeBeats(4).scale(2.95,1.0) +
          HalfHingeRight +
          HingeRight.scale(0.5,1.0).skew(0.0,0.3) +
          QuarterRight
      ]),

    AnimatedCall('Finish Spin Chain the Gears',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Finish',parts:'4.5;3;4.5;3',
      paths:[
          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          CastLeft.changehands(Hands.GRIPLEFT) +
          SwingRight +
          CastLeft,

          CastLeft +
          SwingRight +
          CastLeft.changehands(Hands.GRIPLEFT) +
          FlipRight,

          CastLeft +
          Stand.changeBeats(3) +
          CastLeft.changehands(Hands.GRIPLEFT) +
          FlipRight,

          Stand.changeBeats(2) +
          FlipRight.changeBeats(5.5) +
          CastLeft.changehands(Hands.GRIPLEFT) +
          Stand.changeBeats(3) +
          CastLeft
      ]),

    AnimatedCall('Finish Spin Chain Thru',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Finish',parts:'4.5;3',
      paths:[
          Path(),

          CastLeft +
          SwingRight +
          CastLeft,

          CastLeft +
          Stand.changeBeats(3) +
          CastLeft,

          Path()
      ]),

    AnimatedCall('Finish Swing the Fractions',
      formation:Formation('Ocean Waves RH BGGB'),
      group:'Finish',parts:'3;4.5;3',
      paths:[
          Stand.changeBeats(3) +
          CastRight +
          Stand.changeBeats(3) +
          HingeRight,

          SwingLeft +
          CastRight +
          Stand.changeBeats(3) +
          HingeRight,

          SwingLeft +
          CastRight +
          SwingLeft +
          HingeRight,

          Stand.changeBeats(3) +
          CastRight +
          SwingLeft +
          HingeRight
      ]),

    AnimatedCall('Finish Tally Ho',
      formation:Formation('Tidal Wave RH BGGB'),
      group:'Finish',parts:'3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4).scale(3.0,1.5),

          HingeRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          HingeRight.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Finish Triple Star Thru',
      formation:Formation('Normal Lines'),
      group:'Finish',isGenderSpecific:true,parts:'3.5',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.5),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5) +
          QuarterLeft.changeBeats(1.5).skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,-0.5),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,0.5) +
          QuarterRight.changeBeats(1.5).skew(1.0,0.5)
      ]),
  ];

