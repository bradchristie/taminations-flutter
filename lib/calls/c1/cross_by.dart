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

  final List<AnimatedCall> CrossBy = [

    AnimatedCall('Cross By',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          LeadLeft.changeBeats(3).scale(2.5,1.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0),

          LeadRight.changeBeats(3).scale(0.5,3.0)
      ]),

    AnimatedCall('Cross By',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(3).scale(0.5,3.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          LeadRight.changeBeats(3).scale(2.5,1.0),

          ExtendLeft.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross By',
      formation:Formation('Thar RH Boys'),
      from:'Thar',
      paths:[
          EighthRight.changeBeats(3).skew(2.121,1.121),

          EighthLeft.changeBeats(3).skew(0.707,2.293),

          EighthRight.changeBeats(3).skew(2.121,1.121),

          EighthLeft.changeBeats(3).skew(0.707,2.293)
      ]),

    AnimatedCall('Cross By',
        formation:Formation('Thar LH Boys'),
        from:'Wrong Way Thar',
        paths:[
          EighthLeft.changeBeats(3).skew(2.121,-1.121),

          EighthRight.changeBeats(3).skew(0.707,-2.293),

          EighthLeft.changeBeats(3).skew(2.121,-1.121),

          EighthRight.changeBeats(3).skew(0.707,-2.293)
        ]),

  ];

