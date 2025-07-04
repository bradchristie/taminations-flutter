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

  final List<AnimatedCall> StepAndFlip = [

    AnimatedCall('Step and Flip',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
          FlipLeft.skew(-1.0,0.0),

          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.RIGHT),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines Ends Facing In',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.RIGHT),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines Ends Facing Out',
      paths:[
          FlipLeft.skew(1.0,0.0),

          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.RIGHT),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
        formation:Formation('Normal Lines'),
        from:'Lines Facing In',
        paths:[
          FlipRight.skew(-1.0,0.0),

          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.RIGHT),

          FlipLeft.skew(-1.0,0.0),
        ]),

    AnimatedCall('Step and Flip',
        formation:Formation('3 and 1 Lines #1'),
        from:'3 and 1 Lines #1',
        paths:[
          FlipLeft.skew(1.0,0.0),

          Forward.changehands(Hands.RIGHT),

          Forward.changehands(Hands.LEFT),

          FlipLeft.skew(-1.0,0.0)
        ]),

    AnimatedCall('Step and Flip',
        formation:Formation('3 and 1 Lines #2'),
        from:'3 and 1 Lines #2',
        paths:[
          FlipRight,

          Forward_2.scale(0.67, 1),

          Forward_2.scale(0.67, 1),

          FlipLeft
        ]),

    AnimatedCall('Step and Flip',
        formation:Formation('3 and 1 Lines #3'),
        from:'3 and 1 Lines #3',
        paths:[
          FlipRight,

          Forward_2.scale(0.67, 1),

          Forward_2.scale(0.67, 1),

          FlipLeft
        ]),

    AnimatedCall('Step and Flip',
        formation:Formation('3 and 1 Lines #4'),
        from:'3 and 1 Lines #4',
        paths:[
          FlipRight.skew(-1.0,0.0),

          Forward.changehands(Hands.RIGHT),

          Forward.changehands(Hands.LEFT),

          FlipRight.skew(1.0,0.0)
        ]),

    AnimatedCall('Step and Flip',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.RIGHT),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
        formation:Formation('3 and 1 Lines #6'),
        from:'3 and 1 Lines #6',
        paths:[
          FlipLeft,

          Forward_2.scale(0.67, 1),

          Forward_2.scale(0.67, 1),

          FlipRight
        ]),

    AnimatedCall('Step and Flip',
      formation: Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',
      paths:[
        FlipLeft,

        Forward.changeBeats(3).scale(1.5,1.0),

        Forward.changeBeats(3).scale(1.5,1.0),

        FlipRight
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',
      paths:[
          FlipLeft.skew(-1.0,0.0),

          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.RIGHT),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:0),
  ]),
      from:'Tidal Line',
      paths:[
          FlipRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5),

          FlipLeft.skew(0.0,-1.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Tidal Line LH'),
      from:'Tidal Line LH',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

          FlipLeft.skew(0.0,-1.5),

          FlipRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line',
      paths:[
          FlipRight.skew(0.0,1.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5),

          FlipLeft.skew(0.0,-1.5)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Tidal Inverted Line LH',noDisplay: true,
      paths:[
          FlipLeft.skew(0.0,-1.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

          FlipRight.skew(0.0,1.5)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
          FlipRight,

          Forward_2
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          Forward_2,

          FlipLeft
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          FlipRight,

          Forward_2.scale(0.67,1.0),

          Forward_2.scale(0.67,1.0),

          FlipRight
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          FlipLeft,

          Forward_2.scale(0.67,1.0),

          Forward_2.scale(0.67,1.0),

          FlipLeft
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
          FlipRight.scale(1.0,0.25),

          Forward_2.skew(0.0,0.5),

          Forward_2.skew(0.0,0.5),

          FlipRight.scale(1.0,0.25)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          FlipLeft.scale(1.0,0.25),

          Forward_2.skew(0.0,-0.5),

          Forward_2.skew(0.0,-0.5),

          FlipLeft.scale(1.0,0.25)
      ]),

    AnimatedCall('Step and Flip',
        formation: Formation('Wave RH'),
        from: 'Right-Hand Wave',
        noDisplay: true,
        paths: [
          FlipRight,

          Forward_2
        ]),

    AnimatedCall('Step and Flip',
        formation: Formation('Wave LH'),
        from: 'Left-Hand Wave',
        noDisplay: true,
        paths: [
          FlipLeft,

          Forward_2,
        ]),

    AnimatedCall('Step and Flip',
        formation: Formation('Ocean Waves RH BGGB'),
        from: 'Right-Hand Waves',
        paths: [
          FlipRight,

          Forward_2.scale(0.67,1.0),

          Forward_2.scale(0.67,1.0),

          FlipRight
        ]),

    AnimatedCall('Step and Flip',
        formation: Formation('Ocean Waves LH BGGB'),
        from: 'Left-Hand Waves',
        paths: [
          FlipLeft,

          Forward_2.scale(0.67,1.0),

          Forward_2.scale(0.67,1.0),

          FlipLeft
        ]),

    AnimatedCall('Step and Flip and Roll',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',group:' ',
      paths:[
          FlipLeft.skew(-1.0,0.0) +
          QuarterLeft,

          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.RIGHT),

          FlipRight.skew(-1.0,0.0) +
          QuarterRight
      ]),

    AnimatedCall('As Couples Step and Flip',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:0),
  ]),
      group:' ',
      paths:[
          SwingRight.scale(1.0,1.25),

          UmTurnRight.changehands(Hands.LEFT).skew(0.0,0.5),

          ExtendLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,1.5)
      ]),

    AnimatedCall('Stretch Step and Flip',
      formation:Formation('Inverted Lines Ends Facing In'),
      group:' ',
      paths:[
          Forward_2 +
          RunRight.skew(1.0,0.0),

          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.RIGHT),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          FlipLeft.scale(1.0,0.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Step and Flip',
      formation:Formation('Ocean Waves RH BGGB'),
      group:' ',
      paths:[
          Forward_3 +
          RunRight,

          Forward_3,

          Forward_5,

          RunRight +
          Forward_3
      ]),
  ];

