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

  final List<AnimatedCall> Jaywalk = [

    AnimatedCall('Boys Jaywalk',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Waves',isGenderSpecific:true,
      paths:[
          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          Path(),

          Forward +
          ExtendRight.changeBeats(3).scale(3.0,2.0),

          Path()
      ]),

    AnimatedCall('Jaywalk',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',
      paths:[
          PassThru.changeBeats(3).scale(1.5,1.0),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          PassThru.changeBeats(3).scale(1.5,1.0)
      ]),

    AnimatedCall('Jaywalk',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward,

          PassThru.changeBeats(3).scale(1.5,1.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward,

          PassThru.changeBeats(3).scale(1.5,1.0)
      ]),

    AnimatedCall('Jaywalk',
      formation:Formation('Quarter Lines RH'),
      from:'Quarter Lines',
      paths:[
          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(3).scale(3.0,2.0),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Forward +
          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Jaywalk',
      formation:Formation('Quarter Lines LH'),
      from:'Left-Hand Quarter Lines',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,2.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward,

          ExtendLeft.changeBeats(2).scale(2.0,2.0) +
          Forward,

          ExtendLeft.changeBeats(2.5).scale(2.5,2.0) +
          Forward.changeBeats(.5).scale(0.5,1.0)
      ]),

    AnimatedCall('Jaywalk',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.scale(1.0,1.5),

          LeadLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.scale(1.0,1.5),

          LeadLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),
  ];

