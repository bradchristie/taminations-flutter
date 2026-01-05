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

  final List<AnimatedCall> StepAndSlide = [

    AnimatedCall('Step and Slide',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:90),
  ]),
      from:'Right-Hand Two-Faced Line',
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Wave RH'),
      from:'Right-Hand Wave',
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
  ]),
      from:'Lines Facing Out',
      paths:[
          DodgeLeft.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(2).changehands(Hands.LEFT),

          Forward.changeBeats(2).changehands(Hands.RIGHT),

          DodgeRight.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',
      paths:[
          DodgeRight.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(2).changehands(Hands.RIGHT),

          Forward.changeBeats(2).changehands(Hands.LEFT),

          DodgeLeft.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',
      paths:[
          ExtendRight.changeBeats(4).scale(1.0,2.0),

          Forward.changeBeats(2).changehands(Hands.LEFT),

          Forward.changeBeats(2).changehands(Hands.RIGHT),

          ExtendLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          ExtendLeft.changeBeats(4).scale(1.0,2.0),

          Forward.changeBeats(2).changehands(Hands.LEFT),

          Forward.changeBeats(2).changehands(Hands.RIGHT),

          ExtendRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',noDisplay: true,
      paths:[
          DodgeLeft.changeBeats(4).skew(1.0,0.0),

          Forward.changeBeats(4).changehands(Hands.RIGHT),

          Forward.changeBeats(4).changehands(Hands.LEFT),

          DodgeLeft.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(4).changehands(Hands.RIGHT),

          Forward.changeBeats(4).changehands(Hands.LEFT),

          DodgeRight.changeBeats(4).skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4).skew(1.0,0.0),

          Forward.changeBeats(4).changehands(Hands.LEFT),

          Forward.changeBeats(4).changehands(Hands.RIGHT),

          DodgeRight.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',noDisplay: true,
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',noDisplay: true,
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',noDisplay: true,
      paths:[
          DodgeLeft.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(4).changehands(Hands.LEFT),

          Forward.changeBeats(4).changehands(Hands.RIGHT),

          DodgeLeft.changeBeats(4).skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Tidal Line RH'),
      from:'Tidal Line',
      paths:[
          DodgeRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

          DodgeLeft.skew(0.0,-1.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Tidal Line LH'),
      from:'Tidal Line LH',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

          DodgeLeft.skew(0.0,-1.5),

          DodgeRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Tidal Two-Faced Line',
      paths:[
          DodgeRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          DodgeRight.skew(0.0,1.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Tidal Two-Faced Line',noDisplay: true,
      paths:[
          DodgeLeft.skew(0.0,-1.5),

          ExtendRight.changeBeats(3).scale(3.0,0.5),

          ExtendRight.changeBeats(3).scale(3.0,0.5),

          DodgeLeft.skew(0.0,-1.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line',
      paths:[
          DodgeRight.skew(0.0,1.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5),

          DodgeLeft.skew(0.0,-1.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Tidal Inverted Line LH',noDisplay: true,
      paths:[
          DodgeLeft.skew(0.0,-1.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

          DodgeRight.skew(0.0,1.5)
      ]),
  ];

