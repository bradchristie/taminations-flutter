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

  final List<AnimatedCall> InterlockedScootBack = [

    AnimatedCall('Interlocked Scoot Back',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]),
      from:'Right-Hand Quarter Line',
      numbers: ['1','8','2','7','4','5','3','6'],
      taminator: '''
      Some dance this instead as Couples Twosome Scoot Back
    ''',
      paths:[
          Forward.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,1.0),

          Forward.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,1.0),

          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,2.0),

          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,2.0)
      ]),

    AnimatedCall('Interlocked Scoot Back',
      formation:Formation('Quarter Lines LH'),
      from:'Left-Hand Quarter Line',
      paths:[
          Forward.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,1.0),

          Forward.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(3).scale(1.5,1.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,2.0),

          ExtendLeft.changeBeats(2).scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(3).scale(1.5,2.0)
      ]),
  ];
