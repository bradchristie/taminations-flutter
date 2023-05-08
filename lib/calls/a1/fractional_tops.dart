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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> FractionalTops = [

    AnimatedCall('Quarter the Top',
      formation:Formation('Thar RH Boys'),
      from:'Thar',parts:'3',
      paths:[
          SwingLeft +
          LeadLeft_14.changeBeats(1.125).scale(3.0,3.0),

          SwingLeft +
          LeadRight_12.changehands(2) +
          HingeRight_14,

          SwingLeft +
          LeadLeft_14.changeBeats(1.125).scale(3.0,3.0),

          SwingLeft +
          LeadRight_12.changehands(2) +
          HingeRight_14
      ]),

    AnimatedCall('Quarter the Top',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',parts:'3',
      paths:[
          SwingRight +
          LeadRight_14.changeBeats(1.125).scale(3.0,3.0),

          SwingRight +
          LeadLeft_12.changehands(1) +
          HingeLeft_14,

          SwingRight +
          LeadRight_14.changeBeats(1.125).scale(3.0,3.0),

          SwingRight +
          LeadLeft_12.changehands(1) +
          HingeLeft_14
      ]),

    AnimatedCall('Half the Top',
      formation:Formation('Thar RH Boys'),
      from:'Thar',parts:'3',
      paths:[
          SwingLeft +
          LeadLeft_12.changeBeats(2.25).scale(3.0,3.0),

          SwingLeft +
          HingeRight +
          LeadRight_12.changehands(2),

          SwingLeft +
          LeadLeft_12.changeBeats(2.25).scale(3.0,3.0),

          SwingLeft +
          HingeRight +
          LeadRight_12.changehands(2)
      ]),

    AnimatedCall('Half the Top',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',parts:'3',
      paths:[
          SwingRight +
          LeadRight_12.changeBeats(2.25).scale(3.0,3.0),

          SwingRight +
          HingeLeft +
          LeadLeft_12.changehands(1),

          SwingRight +
          LeadRight_12.changeBeats(2.25).scale(3.0,3.0),

          SwingRight +
          HingeLeft +
          LeadLeft_12.changehands(1)
      ]),

    AnimatedCall('3/4 the Top',
      formation:Formation('Thar RH Boys'),
      from:'Thar',parts:'3',
      paths:[
          SwingLeft +
          LeadLeft_12.changeBeats(2.25).scale(3.0,3.0) +
          LeadLeft_14.changeBeats(1.125).scale(3.0,3.0),

          SwingLeft +
          SwingRight +
          HingeRight_14,

          SwingLeft +
          LeadLeft_12.changeBeats(2.25).scale(3.0,3.0) +
          LeadLeft_14.changeBeats(1.125).scale(3.0,3.0),

          SwingLeft +
          SwingRight +
          HingeRight_14
      ]),

    AnimatedCall('3/4 the Top',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',parts:'3',
      paths:[
          SwingRight +
          LeadRight_12.changeBeats(2.25).scale(3.0,3.0) +
          LeadRight_14.changeBeats(1.125).scale(3.0,3.0),

          SwingRight +
          SwingLeft +
          HingeLeft_14,

          SwingRight +
          LeadRight_12.changeBeats(2.25).scale(3.0,3.0) +
          LeadRight_14.changeBeats(1.125).scale(3.0,3.0),

          SwingRight +
          SwingLeft +
          HingeLeft_14
      ]),
  ];

