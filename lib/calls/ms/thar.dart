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

  final List<AnimatedCall> Thar = [

    AnimatedCall('Allemande Thar',
      formation:Formation('Thar RH Boys'),
      from:'Thar Star',group:' ',
      paths:[
          BackHingeRight.changeBeats(3).changehands(Hands.BOTH),

          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.0,3.0),

          BackHingeRight.changeBeats(3).changehands(Hands.BOTH),

          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.0,3.0)
      ]),

    AnimatedCall('Wrong Way Thar',
      formation:Formation('Thar LH Boys'),
      from:'Left Hand Thar Star',group:' ',
      paths:[
          BackHingeLeft.changeBeats(3).changehands(Hands.BOTH),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.0),

          BackHingeLeft.changeBeats(3).changehands(Hands.BOTH),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.0)
      ]),

    AnimatedCall('Allemande Left to an Allemande Thar',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',notForSequencer: true,
      paths:[
          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_2 +
          LeadLeft_12.changeBeats(3).skew(1.414,0.086) +
          SwingLeft.scale(0.5,1.0),

          LeadRight.changeBeats(1.5).skew(-0.5,0.0) +
          HingeLeft.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight_12.changeBeats(3).skew(0.707,-1.793) +
          SwingLeft.scale(0.5,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_2 +
          LeadLeft_12.changeBeats(3).skew(1.414,0.086) +
          SwingLeft.scale(0.5,1.0),

          LeadRight.changeBeats(1.5).skew(-0.5,0.0) +
          HingeLeft.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight_12.changeBeats(3).skew(0.707,-1.793) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Allemande Left to an Allemande Thar',
      formation:Formation('Static Square'),
      from:'Static Square',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_2 +
          LeadLeft_12.changeBeats(3).skew(1.414,0.086) +
          SwingLeft.scale(0.5,1.0) +
          HalfBackHingeRight.changeBeats(2).changehands(Hands.BOTH),

          LeadRight.changeBeats(1.5).skew(-0.5,0.0) +
          HingeLeft.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight_12.changeBeats(3).skew(0.707,-1.793) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).scale(3.0,3.0),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          SwingLeft.scale(0.5,0.5) +
          Forward_2 +
          LeadLeft_12.changeBeats(3).skew(1.414,0.086) +
          SwingLeft.scale(0.5,1.0) +
          HalfBackHingeRight.changeBeats(2).changehands(Hands.BOTH),

          LeadRight.changeBeats(1.5).skew(-0.5,0.0) +
          HingeLeft.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          LeadRight_12.changeBeats(3).skew(0.707,-1.793) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.changeBeats(2).scale(3.0,3.0)
      ]),
  ];

