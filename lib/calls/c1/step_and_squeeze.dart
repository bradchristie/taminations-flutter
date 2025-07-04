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

final List<AnimatedCall> StepAndSqueeze = [

  AnimatedCall('Step and Squeeze',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',
      paths:[
        DodgeLeft.skew(-1.0,0.0)+FlipLeft,

        Forward.changehands(Hands.LEFT),

        Forward.changehands(Hands.RIGHT),

        DodgeRight.skew(-1.0,0.0)+RunRight
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines Ends Facing In',
      paths:[
        DodgeRight+RunRight.skew(1.0,0.0),

        Forward.changehands(Hands.LEFT),

        Forward.changehands(Hands.RIGHT),

        DodgeLeft+FlipLeft.skew(1.0,0.0)
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines Ends Facing Out',
      paths:[
        DodgeLeft.skew(1.0,0.0)+FlipLeft,

        Forward.changehands(Hands.LEFT),

        Forward.changehands(Hands.RIGHT),

        DodgeRight.skew(1.0,0.0)+RunRight
      ]),


  AnimatedCall('Step and Squeeze',
      formation:Formation('Normal Lines'),
      from:'Lines Facing In',
      paths:[
        DodgeRight.skew(-1.0,0.0)+RunRight,

        Forward.changehands(Hands.LEFT),

        Forward.changehands(Hands.RIGHT),

        DodgeLeft.skew(-1.0,0.0)+FlipLeft,
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('3 and 1 Lines #1'),
      from:'3 and 1 Lines #1',
      paths:[
        DodgeLeft.skew(1.0,0.0)+SwingLeft,

        Forward.changehands(Hands.RIGHT),

        Forward.changehands(Hands.LEFT),

        DodgeLeft.skew(-1.0,0.0)+SwingLeft
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('3 and 1 Lines #2'),
      from:'3 and 1 Lines #2',
      paths:[
        DodgeRight+RunRight,

        Forward_2.scale(0.67, 1),

        Forward_2.scale(0.67, 1),

        DodgeLeft+FlipLeft
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('3 and 1 Lines #3'),
      from:'3 and 1 Lines #3',
      paths:[
        DodgeRight+RunRight,

        Forward_2.scale(0.67, 1),

        Forward_2.scale(0.67, 1),

        DodgeLeft+FlipLeft
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('3 and 1 Lines #4'),
      from:'3 and 1 Lines #4',
      paths:[
        DodgeRight.skew(-1.0,0.0)+SwingRight,

        Forward.changehands(Hands.RIGHT),

        Forward.changehands(Hands.LEFT),

        DodgeRight.skew(1.0,0.0)+SwingRight
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('3 and 1 Lines #5'),
      from:'3 and 1 Lines #5',
      paths:[
        DodgeRight.skew(1.0,0.0)+SwingRight.scale(.5,1),

        Forward.changehands(Hands.LEFT),

        Forward.changehands(Hands.RIGHT),

        DodgeRight.skew(-1.0,0.0)+SwingRight.scale(.5,1)
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('3 and 1 Lines #6'),
      from:'3 and 1 Lines #6',
      paths:[
        DodgeLeft+FlipLeft,

        Forward_2.scale(0.67, 1),

        Forward_2.scale(0.67, 1),

        DodgeRight+RunRight
      ]),

  AnimatedCall('Step and Squeeze',
      formation: Formation('3 and 1 Lines #7'),
      from:'3 and 1 Lines #7',
      paths:[
        DodgeLeft+FlipLeft,

        Forward.changeBeats(3).scale(1.5,1.0),

        Forward.changeBeats(3).scale(1.5,1.0),

        DodgeRight+RunRight
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('3 and 1 Lines #8'),
      from:'3 and 1 Lines #8',
      paths:[
        DodgeLeft.skew(-1.0,0.0)+SwingLeft.scale(.5,1),

        Forward.changehands(Hands.LEFT),

        Forward.changehands(Hands.RIGHT),

        DodgeLeft.skew(1.0,0.0)+SwingLeft.scale(.5,1)
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:0),
      ]),
      from:'Tidal Line',
      paths:[
        DodgeRight.skew(0.0,1.5)+RunRight,

        ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5),

        DodgeLeft.skew(0.0,-1.5)+FlipLeft,

        ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5)
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Tidal Line LH'),
      from:'Tidal Line LH',noDisplay: true,
      paths:[
        ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

        DodgeLeft.skew(0.0,-1.5)+FlipLeft,

        DodgeRight.skew(0.0,1.5)+RunRight,

        ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5)
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Tidal Inverted Line RH'),
      from:'Tidal Inverted Line',
      paths:[
        DodgeRight.skew(0.0,1.5)+RunRight,

        ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

        ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5),

        DodgeLeft.skew(0.0,-1.5)+FlipLeft
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Tidal Inverted Line LH'),
      from:'Tidal Inverted Line LH',noDisplay: true,
      paths:[
        DodgeLeft.skew(0.0,-1.5)+FlipLeft,

        ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,0.5),

        ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(3.0,0.5),

        DodgeRight.skew(0.0,1.5)+RunRight
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
        DodgeRight+SwingRight,

        Forward_2
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
        Forward_2,

        DodgeLeft+SwingLeft
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
        DodgeRight+SwingRight,

        Forward_2.scale(0.67,1.0),

        Forward_2.scale(0.67,1.0),

        DodgeRight+SwingRight
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
        DodgeLeft+SwingLeft,

        Forward_2.scale(0.67,1.0),

        Forward_2.scale(0.67,1.0),

        DodgeLeft+SwingLeft
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
        DodgeRight.scale(1.0,0.25)+SwingRight,

        Forward_2.skew(0.0,0.5),

        Forward_2.skew(0.0,0.5),

        DodgeRight.scale(1.0,0.25)+SwingRight
      ]),

  AnimatedCall('Step and Squeeze',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
        DodgeLeft.scale(1.0,0.25)+SwingLeft,

        Forward_2.skew(0.0,-0.5),

        Forward_2.skew(0.0,-0.5),

        DodgeLeft.scale(1.0,0.25)+SwingLeft
      ]),

  AnimatedCall('Step and Squeeze',
      formation: Formation('Wave RH'),
      from: 'Right-Hand Wave',
      noDisplay: true,
      paths: [
        DodgeRight+SwingRight,

        Forward_2
      ]),

  AnimatedCall('Step and Squeeze',
      formation: Formation('Wave LH'),
      from: 'Left-Hand Wave',
      noDisplay: true,
      paths: [
        DodgeLeft+SwingLeft,

        Forward_2,
      ]),

  AnimatedCall('Step and Squeeze',
      formation: Formation('Ocean Waves RH BGGB'),
      from: 'Right-Hand Waves',
      paths: [
        DodgeRight+SwingRight,

        Forward_2.scale(0.67,1.0),

        Forward_2.scale(0.67,1.0),

        DodgeRight+SwingRight
      ]),

  AnimatedCall('Step and Squeeze',
      formation: Formation('Ocean Waves LH BGGB'),
      from: 'Left-Hand Waves',
      paths: [
        DodgeLeft+SwingLeft,

        Forward_2.scale(0.67,1.0),

        Forward_2.scale(0.67,1.0),

        DodgeLeft+SwingLeft
      ]),

];

