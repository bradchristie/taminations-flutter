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

  final List<AnimatedCall> PeelChainThru = [

    AnimatedCall('Peel Chain Thru',
      formation:Formation('Trade By'),
      from:'Trade By',fractions:'4;4',
      paths:[
          RunRight.changeBeats(4).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(4) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5)
      ]),

    AnimatedCall('Peel Chain Thru',
      formation:Formation('3/4 Tag'),
      from:'Three Quarter Tag',fractions:'4;4',
      paths:[
          RunRight.changeBeats(4).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          SwingRight.changeBeats(4).scale(0.5,0.5).skew(0.0,-1.5) +
          SwingLeft.changeBeats(4).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          SwingRight.changeBeats(4).scale(0.5,0.5).skew(0.0,0.5) +
          Stand.changeBeats(4) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Peel Chain Thru',
      formation:Formation('3/4 Tag LH'),
      from:'Left-Hand Three Quarter Tag',fractions:'4;4',
      paths:[
          RunRight.changeBeats(4).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          BelleReverseWheel.scale(0.5,0.5) +
          BackHingeLeft.scale(1.0,0.5),

          RunLeft.changeBeats(4).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(5.0,1.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5).skew(0.0,1.5) +
          SwingRight.changeBeats(4).scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,1.5),

          SwingLeft.changeBeats(4).scale(0.5,0.5).skew(0.0,-0.5) +
          Stand.changeBeats(4) +
          BeauReverseWheel.scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5)
      ]),
  ];

