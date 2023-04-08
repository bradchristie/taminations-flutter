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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> ChangeYourImage = [ 

    AnimatedCall('Change Your Image',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',fractions:'3',
      paths:[
          Forward_3 +
          RunRight,

          Forward.changeBeats(3) +
          RunLeft,

          Forward_3 +
          Forward_2.changeBeats(3),

          RunRight.skew(-1.0,0.0) +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Change Your Image',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',fractions:'3',
      paths:[
          RunLeft.skew(-1.0,0.0) +
          Forward_2.changeBeats(3),

          Forward_3 +
          Forward_2.changeBeats(3),

          Forward.changeBeats(3) +
          RunRight,

          Forward_3 +
          RunLeft
      ]),

    AnimatedCall('Change Your Image',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',fractions:'3',
      paths:[
          Forward_3 +
          RunRight,

          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5),

          Forward.changeBeats(3) +
          RunRight,

          RunRight.scale(1.0,0.75).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(3).scale(2.0,0.5)
      ]),

    AnimatedCall('Change Your Image',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',fractions:'3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunRight,

          Forward.changeBeats(3) +
          FlipLeft,

          Forward.changeBeats(3) +
          RunRight,

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunLeft
      ]),

    AnimatedCall('Change Your Image',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          Stand.changeBeats(4) +
          RunLeft.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5),

          Stand.changeBeats(4) +
          RunRight.skew(-1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Change Your Image',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',fractions:'3',
      paths:[
          RunRight +
          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3) +
          RunRight,

          Forward_4.changeBeats(6),

          Forward_2.changeBeats(3) +
          RunRight.scale(0.5,1.0)
      ]),

    AnimatedCall('Change Your Image',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',fractions:'3',
      paths:[
          Forward_2.changeBeats(3) +
          RunLeft.scale(0.5,1.0),

          Forward_4.changeBeats(6),

          Forward_2.changeBeats(3) +
          RunLeft,

          RunLeft +
          Forward_2.changeBeats(3)
      ]),

    AnimatedCall('Change Your Image',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns',fractions:'3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          Forward.changeBeats(1.5) +
          RunLeft.scale(0.5,0.75),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          Forward.changeBeats(1.5) +
          RunRight.scale(1.0,1.25),

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          Forward.changeBeats(1.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5),

          RunLeft.scale(1.0,0.75) +
          Forward.changeBeats(1.5) +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5)
      ]),

    AnimatedCall('Change Your Image',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
  ]),
      from:'T-Bones',fractions:'3',
      paths:[
          Forward_2.changeBeats(3) +
          RunRight.scale(0.5,1.0),

          Forward_2.changeBeats(3) +
          Forward_2.changeBeats(3),

          Forward_2.changeBeats(3) +
          RunLeft,

          Forward_2.changeBeats(3) +
          RunRight
      ]),
  ];

