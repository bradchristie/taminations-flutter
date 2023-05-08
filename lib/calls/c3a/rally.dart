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

  final List<AnimatedCall> Rally = [

    AnimatedCall('Rally',
      formation:Formation('Quarter Tag'),
      from:'1/4 Tag',parts:'3',
      paths:[
          ExtendRight.changeBeats(4).scale(1.0,4.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward_2 +
          RunLeft.changeBeats(3).scale(0.5,0.25),

          RunRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          Forward.changeBeats(3) +
          UmTurnRight.changeBeats(4).skew(-1.0,-0.5)
      ]),

    AnimatedCall('Rally',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',parts:'3',
      paths:[
          QuarterRight.skew(-0.5,-1.0) +
          LeadRight.changeBeats(3).scale(1.5,2.5) +
          RunRight.changeBeats(2.5).scale(0.5,0.5),

          QuarterRight.skew(-0.5,-1.0) +
          Forward_2 +
          LeadRight.changeBeats(3.5).scale(1.5,2.5),

          RunRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5),

          Forward.changeBeats(3) +
          UmTurnRight.changeBeats(4).skew(-1.0,-0.5)
      ]),

    AnimatedCall('Rally',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand 1/4 Tag',parts:'3',
      paths:[
          ExtendRight.changeBeats(4).scale(1.0,4.0) +
          ExtendRight.changeBeats(3).scale(2.0,0.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward_2 +
          RunLeft.changeBeats(3).scale(0.5,0.25),

          RunLeft.skew(1.0,0.0) +
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          Forward.changeBeats(3) +
          UmTurnLeft.changeBeats(4).skew(-1.0,0.5)
      ]),

    AnimatedCall('Rally',
      formation:Formation('3/4 Tag LH'),
      from:'Left-Hand 3/4 Tag',parts:'3',
      paths:[
          QuarterRight.skew(-0.5,-1.0) +
          LeadRight.changeBeats(3).scale(1.5,2.5) +
          RunRight.changeBeats(2.5).scale(0.5,0.5),

          QuarterRight.skew(-0.5,-1.0) +
          Forward_2 +
          LeadRight.changeBeats(3.5).scale(1.5,2.5),

          RunLeft.skew(1.0,0.0) +
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5),

          Forward.changeBeats(3) +
          UmTurnLeft.changeBeats(4).skew(-1.0,0.5)
      ]),

    AnimatedCall('Scoot and Rally',
      formation:Formation('Quarter Tag'),
      from:'1/4 Tag',parts:'5;3',
      paths:[
          ExtendLeft.scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          QuarterRight.skew(-0.5,-1.0) +
          LeadRight.changeBeats(3).scale(1.5,2.5) +
          RunRight.changeBeats(2.5).scale(0.5,0.5),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.scale(1.5,1.5) +
          QuarterRight.skew(-0.5,-1.0) +
          Forward_2 +
          LeadRight.changeBeats(3.5).scale(1.5,2.5),

          ExtendRight.scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          Forward.changeBeats(3) +
          UmTurnRight.changeBeats(4).skew(-1.0,-0.5),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.5,0.5) +
          RunRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('Scoot and Rally',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand 1/4 Tag',parts:'5;3',
      taminator: '''
      For Scoot and Rally, the outsides quarter to the direction of the handhold
      after the Scoot Back.
    ''',
      paths:[
          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendLeft.scale(1.5,1.5) +
          QuarterLeft.skew(-0.5,1.0) +
          Forward_2 +
          LeadLeft.changeBeats(3.5).scale(1.5,2.5),

          ExtendRight.scale(1.5,1.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          QuarterLeft.skew(-0.5,1.0) +
          LeadLeft.changeBeats(3).scale(1.5,2.5) +
          RunLeft.changeBeats(2.5).scale(0.5,0.5),

          ExtendLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          Forward.changeBeats(3) +
          UmTurnLeft.changeBeats(4).skew(-1.0,0.5),

          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.75,0.75) +
          ExtendRight.scale(1.5,0.5) +
          RunLeft.skew(1.0,0.0) +
          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5)
      ]),
  ];

