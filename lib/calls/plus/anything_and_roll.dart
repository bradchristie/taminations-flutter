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

  final List<AnimatedCall> AnythingAndRoll = [

    AnimatedCall('Bend the Line and Roll',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',group:' ',difficulty: 2,
      taminator: '''
    After learning Hinge and Roll, Trade and Roll, it's easy to get
    the mistaken feeling that Roll means "face your partner".  Learn Bend the Line
    and Roll and others so you know what Roll really means.
    ''',
      paths:[
          HingeRight.skew(0.0,-1.0) +
          QuarterRight,

          QuarterRight.changehands(Hands.LEFT).skew(-1.0,0.0) +
          QuarterRight,

          QuarterLeft.changehands(Hands.RIGHT).skew(-1.0,0.0) +
          QuarterLeft,

          HingeLeft.skew(0.0,1.0) +
          QuarterLeft
      ]),

    AnimatedCall('Cast Off 3/4 and Roll',
      formation:Formation('Lines Facing Out'),
      group:' ',difficulty: 2,
      paths:[
          QuarterRight.changehands(Hands.LEFT).skew(0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,0.33) +
          QuarterRight.changehands(Hands.LEFT).skew(-0.33,-0.33) +
          QuarterRight.skew(1.0,0.0),

          HingeRight.scale(2.0,2.0).skew(0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,0.33) +
          HingeRight.scale(2.0,2.0).skew(-0.33,-0.33) +
          QuarterRight.skew(1.0,0.0),

          HingeLeft.scale(2.0,2.0).skew(0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,-0.33) +
          HingeLeft.scale(2.0,2.0).skew(-0.33,0.33) +
          QuarterLeft.skew(1.0,0.0),

          QuarterLeft.changehands(Hands.RIGHT).skew(0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,-0.33) +
          QuarterLeft.changehands(Hands.RIGHT).skew(-0.33,0.33) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Chase Right and Roll',
      formation:Formation('Lines Facing Out'),
      group:' ',difficulty: 3,
      taminator: '''
      Only the dancers being chased can roll.
    ''',
      paths:[
          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).skew(1.0,0.0) +
          QuarterRight,

          RunRight.changeBeats(2.5) +
          Forward_3.changeBeats(2.5),

          UmTurnRight.changeBeats(1.5).skew(-1.0,0.0) +
          Forward +
          RunRight.changeBeats(2.5).skew(1.0,0.0) +
          QuarterRight,

          RunRight.changeBeats(2.5) +
          Forward_3.changeBeats(2.5)
      ]),

    AnimatedCall('Cloverleaf and Roll',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',difficulty: 3,
      taminator: '''
      CALLERLAB has ruled that only the trailers can roll.
    ''',
      paths:[
          LeadRight +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          Forward,

          LeadLeft +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).scale(1.5,1.5) +
          Forward,

          Forward_2 +
          LeadRight +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,0.5) +
          QuarterRight,

          Forward_2 +
          LeadLeft +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,0.5) +
          QuarterLeft
      ]),

    AnimatedCall('Cut the Diamond and Roll',
      formation:Formation('Diamonds RH Girl Points'),
      group:' ',difficulty: 2,
      paths:[
          Forward_2 +
          LeadRight +
          QuarterRight.skew(1.0,0.0),

          DodgeRight +
          SwingRight +
          QuarterRight.skew(-1.0,0.0),

          Forward_2 +
          LeadRight +
          QuarterRight.skew(-1.0,0.0),

          DodgeRight +
          SwingRight +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Dixie Style to a Wave and Roll',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      group:' ',difficulty: 2,
      paths:[
          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5) +
          QuarterLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5) +
          QuarterLeft,

          Stand.changeBeats(2) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(1.0,0.5) +
          QuarterLeft,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,1.0) +
          HingeLeft.scale(1.0,0.5) +
          QuarterLeft
      ]),

    AnimatedCall('Ends Fold and Roll',
      formation:Formation('Lines Facing Out'),
      group:' ',difficulty: 2,
      paths:[
          FoldLeft.skew(-1.0,0.0) +
          QuarterLeft,

          Back.changeBeats(3),

          Back.changeBeats(3),

          FoldRight.skew(-1.0,0.0) +
          QuarterRight
      ]),

    AnimatedCall('Explode and Roll',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',difficulty: 2,
      paths:[
          RunRight.skew(1.0,0.0),

          UmTurnLeft.skew(1.0,0.0),

          UmTurnLeft.skew(1.0,0.0),

          RunRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Ferris Wheel and Roll',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Handed Two-Faced Lines',group:' ',difficulty: 2,
      paths:[
          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(3.0,0.0) +
          QuarterRight,

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(3.0,0.0) +
          QuarterRight,

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0) +
          QuarterRight,

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(1.0,0.0) +
          QuarterRight
      ]),

    AnimatedCall('Flip the Diamond and Roll',
      formation:Formation('Diamonds RH Girl Points'),
      group:' ',difficulty: 2,
      paths:[
          LeadRight.changeBeats(3).scale(3.0,1.0) +
          QuarterRight.skew(1.0,0.0),

          RunRight +
          QuarterRight.skew(-1.0,0.0),

          LeadRight.changeBeats(3).scale(3.0,1.0) +
          QuarterRight.skew(-1.0,0.0),

          RunRight +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Flutterwheel and Roll',
      formation:Formation('Normal Lines'),
      group:' ',difficulty: 2,
      paths:[
          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(0.5,0.5) +
          QuarterRight,

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(0.5,0.25) +
          QuarterRight,

          Forward.changeBeats(3.5).changehands(0) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.5,1.5) +
          RunRight.changehands(Hands.RIGHT).scale(1.5,2.0).skew(0.5,0.5) +
          QuarterRight,

          ExtendLeft.changeBeats(2).scale(1.5,1.75) +
          SwingRight.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnRight.changehands(Hands.LEFT).skew(0.5,0.25) +
          QuarterRight
      ]),

    AnimatedCall('Hinge and Roll',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',group:' ',difficulty: 1,
      paths:[
          HingeRight.skew(0.0,-1.0) +
          QuarterRight,

          QuarterRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          QuarterRight,

          QuarterRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          QuarterRight,

          HingeRight.skew(0.0,-1.0) +
          QuarterRight
      ]),

    AnimatedCall('Heads Lead Right and Roll',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 2,
      paths:[
          HingeRight.changeBeats(4).scale(0.5,0.5).skew(3.5,-1.5) +
          QuarterRight,

          QuarterRight.changeBeats(4).changehands(Hands.LEFT).skew(2.0,0.0) +
          QuarterRight,

          Path(),

          Path()
      ]),

    AnimatedCall('Partner Trade and Roll (from Lines)',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',group:' ',difficulty: 1,
      paths:[
          FlipLeft.skew(-1.0,0.0) +
          QuarterLeft,

          RunRight.skew(-1.0,0.0) +
          QuarterRight,

          FlipLeft.skew(-1.0,0.0) +
          QuarterLeft,

          RunRight.skew(-1.0,0.0) +
          QuarterRight
      ]),

    AnimatedCall('Partner Trade and Roll (from Completed Double Pass Thru)',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',group:' ',difficulty: 1,
      paths:[
          FlipLeft +
          QuarterLeft,

          RunRight +
          QuarterRight,

          FlipLeft +
          QuarterLeft,

          RunRight +
          QuarterRight
      ]),

    AnimatedCall('Pass to the Center and Roll',
      formation:Formation('Pass Thru'),
      from:'Pass Thru',group:' ',fractions:'2',difficulty: 2,
      paths:[
          PassThru,

          PassThru,

          PassThru +
          RunRight +
          QuarterRight,

          PassThru +
          FlipLeft +
          QuarterLeft
      ]),

    AnimatedCall('Peel Off and Roll',
      formation:Formation('Completed Double Pass Thru'),
      group:' ',difficulty: 2,
      paths:[
          RunRight.skew(-1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          RunLeft.skew(-1.0,0.0) +
          QuarterLeft.skew(1.0,0.0),

          UmTurnRight.skew(1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          UmTurnLeft.skew(1.0,0.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Recycle and Roll',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',group:' ',difficulty: 2,
      paths:[
          RunRight.changeBeats(4).skew(1.0,-3.0) +
          QuarterRight,

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,-1.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0) +
          QuarterRight,

          RunRight.changeBeats(2).scale(0.5,0.5).skew(-0.5,-1.0) +
          RunRight.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0) +
          QuarterRight,

          RunRight.changeBeats(4).skew(1.0,-3.0) +
          QuarterRight
      ]),

    AnimatedCall('Recycle and Roll (from Left-Hand Waves)',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',group:' ',difficulty: 2,
      paths:[
          RunLeft.changeBeats(4).skew(1.0,3.0) +
          QuarterLeft,

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,1.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0) +
          QuarterLeft,

          RunLeft.changeBeats(2).scale(0.5,0.5).skew(-0.5,1.0) +
          RunLeft.changeBeats(2).scale(0.5,0.5).skew(0.5,0.0) +
          QuarterLeft,

          RunLeft.changeBeats(4).skew(1.0,3.0) +
          QuarterLeft
      ]),

    AnimatedCall('Reverse Flutterwheel and Roll',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(0.5,-0.25) +
          QuarterLeft,

          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.0) +
          RunLeft.changehands(Hands.LEFT).scale(1.5,2.0).skew(0.5,-1.0) +
          QuarterLeft,

          ExtendRight.changeBeats(2).scale(1.5,1.75) +
          SwingLeft.changehands(Hands.BOTH).scale(0.75,0.75) +
          UmTurnLeft.changehands(Hands.RIGHT).skew(0.5,-0.25) +
          QuarterLeft,

          Forward.changeBeats(3.5).changehands(0) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.5,1.5) +
          RunLeft.changehands(Hands.LEFT).scale(1.5,2.0).skew(0.5,-0.5) +
          QuarterLeft
      ]),

    AnimatedCall('Right and Left Thru and Roll',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',difficulty: 2,
      paths:[
          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0) +
          QuarterLeft,

          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0) +
          QuarterLeft,

          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0) +
          QuarterLeft,

          PullLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0) +
          QuarterLeft
      ]),

    AnimatedCall('Centers Run and Roll',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',group:' ',difficulty: 2,
      paths:[
          DodgeRight.skew(1.0,0.0),

          RunRight.skew(-1.0,0.0) +
          QuarterRight,

          RunRight.skew(1.0,0.0) +
          QuarterRight,

          DodgeRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Scoot Back and Roll',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',group:' ',difficulty: 2,notForSequencer: true,
      taminator: '''Note that the scooters do not roll as they are moving
    straight ahead at the end of the call.
    ''',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.0,0.25),

          FlipRight.changeBeats(4) +
          QuarterRight.skew(1.0,0.0),

          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.0,0.25),

          FlipRight.changeBeats(4) +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Slide Thru and Roll',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',group:' ',difficulty: 1,
      isGenderSpecific: true,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5) +
          QuarterRight,

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          QuarterLeft,

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5) +
          QuarterRight,

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5) +
          QuarterLeft
      ]),

    AnimatedCall('Spin the Top and Roll',
      formation:Formation('Wave RH GBBG'),
      group:' ',difficulty: 2,notForSequencer: true,
      paths:[
          SwingRight +
          HingeLeft +
          HingeLeft +
          HingeLeft +
          QuarterLeft,

          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0) +
          QuarterRight
      ]),

    AnimatedCall('Swing Thru and Roll',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',difficulty: 2,
      paths:[
          SwingRight +
          SwingLeft +
          QuarterLeft.skew(1.0,0.0),

          SwingRight +
          QuarterRight.skew(1.0,0.0),

          SwingRight +
          QuarterRight.skew(-1.0,0.0),

          SwingRight +
          SwingLeft +
          QuarterLeft.skew(-1.0,0.0)
      ]),

    AnimatedCall('Touch a Quarter and Roll',
      formation:Formation('Facing Couples Compact'),
      group:' ',difficulty: 1,
      paths:[
          ExtendLeft.scale(1.5,0.5) +
          HingeRight.changeBeats(1).scale(1.0,0.5) +
          QuarterRight.skew(0.0,0.5),

          ExtendLeft.scale(1.5,0.5) +
          HingeRight.changeBeats(1).scale(1.0,0.5) +
          QuarterRight.skew(0.0,0.5)
      ]),

    AnimatedCall('Trade and Roll',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Ocean Waves',group:' ',difficulty: 1,notForSequencer: true,
      paths:[
          SwingRight +
          QuarterRight.skew(-1.0,0.0),

          SwingRight +
          QuarterRight.skew(1.0,0.0),

          SwingRight +
          QuarterRight.skew(-1.0,0.0),

          SwingRight +
          QuarterRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Trade By and Roll',
      formation:Formation('Trade By'),
      from:'Trade By',group:' ',difficulty: 2,
      paths:[
          FlipLeft +
          QuarterLeft,

          RunRight +
          QuarterRight,

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Touch a Quarter and Roll',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',difficulty: 1,
      paths:[
          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).scale(1.0,0.5) +
          QuarterRight,

          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).scale(1.0,0.5) +
          QuarterRight,

          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).scale(1.0,0.5) +
          QuarterRight,

          ExtendLeft.scale(2.0,0.5) +
          HingeRight.changeBeats(1).scale(1.0,0.5) +
          QuarterRight
      ]),

    AnimatedCall('U-Turn Back and Roll (from Lines)',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',difficulty: 2,notForSequencer: true,
      paths:[
          UmTurnRight.skew(1.0,0.0) +
          QuarterRight,

          UmTurnLeft.skew(1.0,0.0) +
          QuarterLeft,

          UmTurnRight.skew(1.0,0.0) +
          QuarterRight,

          UmTurnLeft.skew(1.0,0.0) +
          QuarterLeft
      ]),

    AnimatedCall('U-Turn Back and Roll (from Waves)',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Waves',group:' ',difficulty: 2,notForSequencer: true,
      paths:[
          UmTurnRight.skew(1.0,0.0) +
          QuarterRight,

          UmTurnRight.skew(-1.0,0.0) +
          QuarterRight,

          UmTurnRight.skew(1.0,0.0) +
          QuarterRight,

          UmTurnRight.skew(-1.0,0.0) +
          QuarterRight
      ]),

    AnimatedCall('Wheel and Deal and Roll',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',group:' ',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0) +
          QuarterLeft,

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          QuarterLeft,

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0) +
          QuarterRight,

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(1.0,0.0) +
          QuarterRight
      ]),

    AnimatedCall('Wheel Around and Roll',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',difficulty: 2,notForSequencer: true,
      paths:[
          BeauWheel.skew(1.0,0.0) +
          QuarterLeft,

          BelleWheel.skew(1.0,0.0) +
          QuarterLeft,

          BeauWheel.skew(1.0,0.0) +
          QuarterLeft,

          BelleWheel.skew(1.0,0.0) +
          QuarterLeft
      ]),
  ];

