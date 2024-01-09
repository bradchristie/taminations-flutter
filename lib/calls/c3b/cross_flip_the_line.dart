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

  final List<AnimatedCall> CrossFlipTheLine = [

    AnimatedCall('Cross Flip the Line 1/4',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Face Line',
      paths:[
          LeadRight +
          Forward_2.changeBeats(3),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.scale(1.0,0.5).skew(2.0,0.0)
      ]),

    AnimatedCall('Cross Flip the Line 1/4',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Face Line',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.scale(1.0,0.5).skew(2.0,0.0),

          LeadLeft +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Cross Flip the Line 1/4',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Face Lines',
      paths:[
          LeadRight +
          Forward_2.changeBeats(3),

          RunRight.scale(1.0,2.0).skew(1.0,0.0) +
          QuarterRight,

          RunRight.scale(1.0,2.0).skew(-1.0,0.0) +
          QuarterRight,

          LeadRight +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Cross Flip the Line 1/4',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Face Lines',
      paths:[
          LeadLeft +
          Forward_2.changeBeats(3),

          RunLeft.scale(1.0,2.0).skew(-1.0,0.0) +
          QuarterLeft,

          RunLeft.scale(1.0,2.0).skew(1.0,0.0) +
          QuarterLeft,

          LeadLeft +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Cross Flip the Line 1/4',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Face Tidal Line',
      paths:[
          LeadRight,

          RunRight +
          QuarterRight,

          RunRight.scale(1.0,1.5) +
          QuarterRight,

          LeadRight +
          Forward
      ]),

    AnimatedCall('Cross Flip the Line 1/4',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Face Tidal Line',
      paths:[
          LeadLeft,

          RunLeft +
          QuarterLeft,

          RunLeft.scale(1.0,1.5) +
          QuarterLeft,

          LeadLeft +
          Forward
      ]),

    AnimatedCall('Cross Flip the Line 1/2',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Face Line',
      paths:[
          LeadRight +
          Forward_3.skew(0.5,0.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0)
      ]),

    AnimatedCall('Cross Flip the Line 1/2',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Face Line',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0),

          LeadLeft +
          Forward_3.skew(0.5,0.0)
      ]),

    AnimatedCall('Cross Flip the Line 1/2',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Face Lines',
      paths:[
          LeadRight +
          Forward_3.skew(0.5,0.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0),

          LeadRight +
          Forward_3.skew(0.5,0.0)
      ]),

    AnimatedCall('Cross Flip the Line 1/2',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Face Lines',
      paths:[
          LeadLeft +
          Forward_3.skew(0.5,0.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0),

          LeadLeft +
          Forward_3.skew(0.5,0.0)
      ]),

    AnimatedCall('Cross Flip the Line 1/2',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Face Tidal Line',
      paths:[
          LeadRight +
          Forward.changeBeats(2).skew(0.5,0.0),

          RunRight +
          LeadRight.scale(1.0,0.5),

          RunRight +
          LeadRight.scale(1.0,0.5),

          LeadRight +
          Forward.changeBeats(2).skew(0.5,0.0)
      ]),

    AnimatedCall('Cross Flip the Line 1/2',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Face Tidal Line',
      paths:[
          LeadLeft +
          Forward.changeBeats(2).skew(0.5,0.0),

          RunLeft +
          LeadLeft.scale(1.0,0.5),

          RunLeft +
          LeadLeft.scale(1.0,0.5),

          LeadLeft +
          Forward.changeBeats(2).skew(0.5,0.0)
      ]),

    AnimatedCall('Cross Flip the Line 3/4',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Face Line',
      paths:[
          LeadRight +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight +
          Forward
      ]),

    AnimatedCall('Cross Flip the Line 3/4',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Face Line',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft +
          Forward,

          LeadLeft +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Cross Flip the Line 3/4',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Face Lines',
      paths:[
          LeadRight +
          Forward_5,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight +
          Forward,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight +
          Forward,

          LeadRight +
          Forward_3 +
          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Flip the Line 3/4',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Face Lines',
      paths:[
          LeadLeft +
          Forward_3 +
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft +
          Forward,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft +
          Forward,

          LeadLeft +
          Forward_5
      ]),

    AnimatedCall('Cross Flip the Line 3/4',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Face Tidal Line',
      paths:[
          LeadRight +
          ExtendRight.changeBeats(4).scale(1.5,1.0),

          LeadRight +
          RunRight +
          Forward,

          LeadRight.changeBeats(1.5).scale(1.0,2.0) +
          RunRight +
          Forward,

          LeadRight +
          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Cross Flip the Line 3/4',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Face Tidal Line',
      paths:[
          LeadLeft +
          ExtendLeft.changeBeats(4).scale(1.5,1.0),

          LeadLeft +
          RunLeft +
          Forward,

          LeadLeft.changeBeats(1.5).scale(1.0,2.0) +
          RunLeft +
          Forward,

          LeadLeft +
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Cross Flip the Line',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',
      paths:[
          LeadRight +
          Forward_3.changeBeats(4) +
          ExtendRight.changeBeats(2).scale(2.0,1.0),

          LeadRight +
          Forward +
          RunRight +
          Forward +
          ExtendRight
      ]),

    AnimatedCall('Cross Flip the Line',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Faced Line',
      paths:[
          LeadLeft +
          Forward +
          RunLeft +
          Forward +
          ExtendLeft,

          LeadLeft +
          Forward_3.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Cross Flip the Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',
      paths:[
          LeadRight +
          Forward_3.changeBeats(4) +
          Forward_2,

          LeadRight +
          Forward +
          RunRight +
          Forward +
          ExtendRight.scale(1.0,2.0),

          LeadRight +
          Forward +
          RunRight +
          Forward_2,

          LeadRight +
          Forward_3.changeBeats(4) +
          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Flip the Line',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft +
          Forward_3.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          LeadLeft +
          Forward +
          RunLeft +
          Forward_2,

          LeadLeft +
          Forward +
          RunLeft +
          Forward +
          ExtendLeft.scale(1.0,2.0),

          LeadLeft +
          Forward_3.changeBeats(4) +
          Forward_2
      ]),

    AnimatedCall('Cross Flip the Line',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
          LeadRight +
          ExtendRight.changeBeats(5).scale(1.5,1.0),

          LeadRight +
          RunRight +
          Forward +
          ExtendRight.scale(1.5,1.0),

          LeadRight +
          Forward +
          RunRight +
          ExtendRight,

          LeadRight +
          Forward_2.changeBeats(3) +
          ExtendRight.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Cross Flip the Line',
      formation:Formation('Two-Faced Tidal Line LH'),
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          LeadLeft +
          ExtendLeft.changeBeats(5).scale(1.5,1.0),

          LeadLeft +
          RunLeft +
          Forward +
          ExtendLeft.scale(1.5,1.0),

          LeadLeft +
          Forward +
          RunLeft +
          ExtendLeft,

          LeadLeft +
          Forward_2.changeBeats(3) +
          ExtendLeft.changeBeats(2).scale(2.0,1.0)
      ]),

    AnimatedCall('Cross Flip and Scatter',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Face Lines',parts:'5',
      paths:[
          LeadRight +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunLeft.changeBeats(4),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0) +
          Forward.skew(0.5,0.0) +
          SwingRight +
          Forward.skew(0.5,0.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0) +
          Forward.skew(0.5,0.0) +
          SwingRight +
          Forward.skew(0.5,0.0),

          LeadRight +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunRight.changeBeats(5).scale(2.0,3.0)
      ]),

    AnimatedCall('Cross Flip and Scatter',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Face Lines',parts:'5',
      paths:[
          LeadLeft +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunLeft.changeBeats(5).scale(2.0,3.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0) +
          Forward.skew(0.5,0.0) +
          SwingLeft +
          Forward.skew(0.5,0.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0) +
          Forward.skew(0.5,0.0) +
          SwingLeft +
          Forward.skew(0.5,0.0),

          LeadLeft +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunRight.changeBeats(4)
      ]),

    AnimatedCall('Cross Flip Back',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Face Line',parts:'5',
      paths:[
          LeadRight +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunRight.changeBeats(4),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0) +
          Forward.skew(0.5,0.0) +
          SwingRight +
          Forward.skew(0.5,0.0)
      ]),

    AnimatedCall('Cross Flip Back',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Face Line',parts:'5',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0) +
          Forward.skew(0.5,0.0) +
          SwingLeft +
          Forward.skew(0.5,0.0),

          LeadLeft +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Cross Flip Chain Thru',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Face Lines',parts:'5',
      paths:[
          LeadRight +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunRight.changeBeats(6),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight +
          SwingLeft +
          SwingRight +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight +
          Stand.changeBeats(3) +
          SwingRight +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          LeadRight +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunRight.changeBeats(6)
      ]),

    AnimatedCall('Cross Flip Chain Thru',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Face Lines',parts:'5',
      paths:[
          LeadLeft +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunLeft.changeBeats(6),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft +
          Stand.changeBeats(3) +
          SwingLeft +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft +
          SwingRight +
          SwingLeft +
          Forward.changeBeats(1.5).scale(1.5,1.0),

          LeadLeft +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          RunLeft.changeBeats(6)
      ]),

    AnimatedCall('Cross Flip Your Leader',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Face Lines',
      paths:[
          LeadRight +
          Forward_3.skew(0.5,0.0) +
          LeadRight.scale(1.5,1.0) +
          Forward +
          RunRight.changeBeats(5).scale(2.0,2.0) +
          Forward_2,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0) +
          Forward_2.changeBeats(1.5).skew(-0.5,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25) +
          Forward,

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0) +
          Forward_2.changeBeats(1.5).skew(-0.5,-0.25) +
          SwingRight.scale(0.75,0.75) +
          HingeRight.skew(0.0,0.25) +
          Forward_3,

          LeadRight +
          Forward_3.skew(0.5,0.0) +
          LeadRight.scale(1.5,1.0) +
          Forward_5.changeBeats(3) +
          RunRight.changeBeats(5).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Flip Your Leader',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Face Lines',
      paths:[
          LeadLeft +
          Forward_3.skew(0.5,0.0) +
          LeadLeft.scale(1.5,1.0) +
          Forward_5.changeBeats(3) +
          RunLeft.changeBeats(5).scale(2.0,2.0),

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0) +
          Forward_2.changeBeats(1.5).skew(-0.5,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25) +
          Forward_3,

          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0) +
          Forward_2.changeBeats(1.5).skew(-0.5,0.25) +
          SwingLeft.scale(0.75,0.75) +
          HingeLeft.skew(0.0,-0.25) +
          Forward,

          LeadLeft +
          Forward_3.skew(0.5,0.0) +
          LeadLeft.scale(1.5,1.0) +
          Forward +
          RunLeft.changeBeats(5).scale(2.0,2.0) +
          Forward_2
      ]),

    AnimatedCall('Cross Flip Your Neighbor',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Face Line',parts:'5',
      paths:[
          LeadRight +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          Forward +
          RunRight.skew(1.0,0.0) +
          LeadRight.scale(0.5,1.0),

          LeadRight.changeBeats(2).scale(1.0,2.0) +
          RunRight.skew(0.5,0.0) +
          Forward.skew(0.5,0.0) +
          CastRight
      ]),

    AnimatedCall('Cross Flip Your Neighbor',
      formation:Formation('Two-Faced Line LH'),
      from:'Left-Hand Two-Face Line',parts:'5',
      paths:[
          LeadLeft.changeBeats(2).scale(1.0,2.0) +
          RunLeft.skew(0.5,0.0) +
          Forward.skew(0.5,0.0) +
          CastLeft,

          LeadLeft +
          Forward_3.changeBeats(3.5).skew(0.5,0.0) +
          Forward +
          RunLeft.skew(1.0,0.0) +
          LeadLeft.scale(0.5,1.0)
      ]),
  ];

