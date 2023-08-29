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
import '../../moves.dart';

  final List<AnimatedCall> CrossCounter = [

    AnimatedCall('Cross Counter',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',parts:'4;4.5',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          FlipRight.skew(2.0,1.5),

          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          RunRight.changeBeats(4).scale(1.5,1.75) +
          CastLeft.scale(0.5,0.5) +
          QuarterLeft.changeBeats(3).changehands(Hands.GRIPLEFT).skew(2.0,-1.5),

          RunLeft.changeBeats(4).scale(0.5,1.25) +
          CastLeft.scale(0.5,0.5) +
          QuarterLeft.changeBeats(3).changehands(Hands.GRIPLEFT).skew(0.0,2.5)
      ]),

    AnimatedCall('Cross Counter',
      formation:Formation('3/4 Tag LH'),
      from:'Left-Hand 3/4 Tag',parts:'4;4.5',
      paths:[
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          FlipRight.skew(2.0,1.5),

          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          RunLeft.changeBeats(4).scale(1.5,1.75) +
          CastRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(2.0,1.5),

          RunRight.changeBeats(4).scale(0.5,1.25) +
          CastRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(0.0,-2.5)
      ]),

    AnimatedCall('Scoot and Cross Counter',
      formation:Formation('Quarter Tag'),
      group:' ',parts:'6;4;4.5',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          FlipRight.skew(2.0,1.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          RunLeft.changeBeats(4).scale(0.5,1.25) +
          CastLeft.scale(0.5,0.5) +
          QuarterLeft.changeBeats(3).changehands(Hands.GRIPLEFT).skew(0.0,2.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          RunRight.changeBeats(4).scale(1.5,1.75) +
          CastLeft.scale(0.5,0.5) +
          QuarterLeft.changeBeats(3).changehands(Hands.GRIPLEFT).skew(2.0,-1.5)
      ]),

    AnimatedCall('Left Scoot and Cross Counter',
      formation:Formation('Quarter Tag LH'),
      group:' ',parts:'6;4;4.5',
      paths:[
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          RunLeft.changeBeats(4).scale(2.0,2.0).skew(-2.0,0.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          FlipLeft.skew(2.0,-1.5),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          RunRight.changeBeats(4).scale(0.5,1.25) +
          CastRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(0.0,-2.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          RunLeft.changeBeats(4).scale(1.5,1.75) +
          CastRight.scale(0.5,0.5) +
          QuarterRight.changeBeats(3).changehands(Hands.GRIPRIGHT).skew(2.0,1.5)
      ]),
  ];

