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

  final List<AnimatedCall> RelayTheShadow = [

    AnimatedCall('Relay the Shadow',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',parts:'3;4.5',
      paths:[
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          LeadRight +
          LeadRight +
          LeadRight,

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,3.5) +
          HingeRight.changeBeats(4).scale(3.0,1.0),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          Forward.changehands(Hands.GRIPRIGHT).changeBeats(0.5).scale(0.5,1.0) +
          LeadRight.changeBeats(3.5).scale(2.5, 1.0),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5) +
          Forward_2 +
          HingeLeft +
          Forward_2
      ]),

    AnimatedCall('Relay the Shadow',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Left-Hand Tidal Wave',parts:'3;4.5',
      paths:[
          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          LeadLeft +
          LeadLeft +
          LeadLeft,

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.5) +
              Forward.changehands(Hands.GRIPLEFT).changeBeats(0.5).scale(0.5,1.0) +
              LeadLeft.changeBeats(3.5).scale(2.5, 1.0),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          HingeLeft.changeBeats(4).scale(3.0,1.0),

          SwingLeft.changehands(Hands.GRIPLEFT).scale(0.5,0.5) +
          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
          HingeRight.scale(1.0,0.5) +
          Forward_2 +
          HingeRight +
          Forward_2
      ]),

    //  These two are for the sequencer
    AnimatedCall('Finish Relay the Shadow',
        formation:Formation('Tidal Wave RH BGGB'),
        from:'Right-Hand Tidal Wave',parts:'3;4.5',
        noDisplay: true,
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
              Forward.changehands(Hands.GRIPRIGHT).changeBeats(0.5).scale(0.5,1.0) +
              LeadRight.changeBeats(3.5).scale(2.5, 1.0),
        ]),

    AnimatedCall('Finish Relay the Shadow',
        formation:Formation('Tidal Wave LH BGGB'),
        from:'Left-Hand Tidal Wave',parts:'3;4.5',
        noDisplay: true,
        paths:[
          LeadLeft.changeBeats(4.5).scale(3.0,3.5) +
              Forward.changehands(Hands.GRIPLEFT).changeBeats(0.5).scale(0.5,1.0) +
              LeadLeft.changeBeats(3.5).scale(2.5, 1.0),

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
              HingeRight.scale(1.0,0.5) +
              LeadLeft +
              LeadLeft +
              LeadLeft,

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
              HingeRight.scale(1.0,0.5) +
              Forward_2 +
              HingeRight +
              Forward_2,

          SwingRight.changehands(Hands.GRIPRIGHT).scale(0.5,0.5) +
              HingeRight.scale(1.0,0.5) +
              HingeLeft.changeBeats(4).scale(3.0,1.0),
        ]),

  ];

