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

  final List<AnimatedCall> CrossExtend = [

    AnimatedCall('Cross Extend',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2)
      ]),

    AnimatedCall('Cross Extend',
      formation:Formation('Box LH Girls Lead'),
      from:'Left-Hand Box',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          ExtendLeft.changeBeats(2)
      ]),

    AnimatedCall('Cross Extend',
        formation:Formation('Single Quarter Tag'),
        from:'Single 1/4 Tag',
        paths:[
          ExtendRight.changeBeats(2).scale(1.5,1.0),

          ExtendRight.changeBeats(2).scale(1.5, 2)
        ]),

    AnimatedCall('Cross Extend',
        formation:Formation('Single Left Quarter Tag'),
        from:'Single Left-Hand 1/4 Tag',
        paths:[
          ExtendLeft.changeBeats(2).scale(1.5,1.0),

          ExtendLeft.changeBeats(2).scale(1.5, 2)
        ]),

    AnimatedCall('Cross Extend',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Right-Hand Waves',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Cross Extend',
      formation:Formation('Ocean Waves LH BGBG'),
      from:'Left-Hand Waves',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Extend',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',
      paths:[
          Forward.changeBeats(2),

          ExtendRight.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0),

          ExtendRight.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Extend',
      formation:Formation('Quarter Tag LH'),
      from:'Left-Hand Quarter Tag',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          Forward.changeBeats(2),

          ExtendLeft.changeBeats(2).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,2.0)
      ]),

    AnimatedCall('Cross Extend',
        from: 'Point-to-Point 1/4 Tag',
        formation: Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:90),
          DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:5,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        ]),
        paths: [
          ExtendRight.changeBeats(2).skew(-1, 0),

          ExtendRight.changeBeats(2).scale(1, 2).skew(1, 0),

          ExtendRight.changeBeats(2).skew(1,0),

          ExtendRight.changeBeats(2).scale(1, 2).skew(-1, 0)
        ]),

    AnimatedCall('Cross Extend',
        from: 'Point-to-Point Left-Hand 1/4 Tag',
        formation: Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:90),
          DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:5,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        ]),
        paths: [
          ExtendLeft.changeBeats(2).skew(-1, 0),

          ExtendLeft.changeBeats(2).scale(1, 2).skew(-1, 0),

          ExtendLeft.changeBeats(2).skew(1,0),

          ExtendLeft.changeBeats(2).scale(1, 2).skew(1, 0)
        ]),


    AnimatedCall('As Couples Cross Extend',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',
      paths:[
          DodgeRight.changeBeats(5).changehands(Hands.RIGHT).scale(1.0,2.0).skew(2.0,0.0),

          DodgeRight.changeBeats(5).changehands(Hands.LEFT).scale(1.0,2.0).skew(2.0,0.0),

          DodgeRight.changehands(Hands.LEFT).skew(1.0,0.0),

          DodgeRight.changehands(Hands.RIGHT).skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Cross Extend',
      formation:Formation('Column RH GBGB'),
      group:' ',
      paths:[
          Forward +
          ExtendRight,

          Forward +
          ExtendRight,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward,

          Forward +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),
  ];

