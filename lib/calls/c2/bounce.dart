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

  final List<AnimatedCall> Bounce = [

    AnimatedCall('Bounce the Centers',
      formation:Formation('Two-Faced Line RH'),
      from:'Right-Hand Two-Faced Line',group:' ',parts:'2',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(2.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(2.0,2.0) +
          UmTurnRight
      ]),

    AnimatedCall('Bounce the Boys',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',isGenderSpecific:true,parts:'2',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight
      ]),

    AnimatedCall('Bounce the Girls',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',isGenderSpecific:true,parts:'2',
      taminator: '''
      Note that the girls turn back in the direction of the veer.
    ''',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0)
      ]),

    AnimatedCall('Bounce the Leaders',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',parts:'2',
      taminator: '''
      The dancers who Bounce are the leaders before the veer.
    ''',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight
      ]),

    AnimatedCall('Bounce the Trailers',
      formation:Formation('Two-Faced Lines RH'),
      group:' ',parts:'2',
      paths:[
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight,

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0)
      ]),

    AnimatedCall('As Couples Bounce the Ends',
      formation:Formation('Tidal Line RH'),
      group:'  ',parts:'3',
      paths:[
          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(2.0,0.5) +
          BeauReverseWheel,

          ExtendRight.changeBeats(3).changehands(Hands.BOTH).scale(2.0,1.5) +
          BelleReverseWheel,

          ExtendRight.changeBeats(3).changehands(Hands.BOTH).scale(2.0,2.5),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(2.0,3.5)
      ]),

    AnimatedCall('Concentric Bounce the Boys',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'  ',isGenderSpecific:true,
      paths:[
          Forward.changehands(Hands.RIGHT) +
          ExtendRight.changeBeats(3).changehands(Hands.GRIPRIGHT).scale(2.0,2.5) +
          UmTurnRight,

          Forward.changehands(Hands.LEFT) +
          ExtendRight.changeBeats(3).changehands(Hands.GRIPLEFT).scale(2.0,3.5),

          ExtendLeft.changeBeats(3).changehands(Hands.LEFT).scale(1.0,0.5),

          ExtendLeft.changeBeats(3).changehands(Hands.RIGHT).scale(1.0,1.5) +
          UmTurnLeft
      ]),

    AnimatedCall('Cross Concentric Bounce the Boys',
      formation:Formation('Two-Faced Tidal Line RH'),
      group:'  ',isGenderSpecific:true,
      paths:[
          ExtendRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(1.0,2.5) +
          UmTurnRight,

          ExtendRight.changeBeats(4).changehands(Hands.GRIPLEFT).scale(1.0,3.5),

          ExtendLeft.changeBeats(4).changehands(Hands.LEFT).scale(3.0,0.5),

          ExtendLeft.changeBeats(4).changehands(Hands.RIGHT).scale(3.0,1.5) +
          UmTurnLeft
      ]),

    AnimatedCall('Stretch Bounce the Boys',
      formation:Formation('Two-Faced Lines RH'),
      group:'  ',isGenderSpecific:true,
      paths:[
          Forward_2.changehands(Hands.RIGHT) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight,

          Forward_2.changehands(Hands.LEFT) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0),

          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          UmTurnRight
      ]),

    AnimatedCall('Tandem Bounce the Centers',
      formation:Formation('Two-Faced Lines RH Compact'),
      group:'  ',parts:'3',
      paths:[
          Forward.changeBeats(1).changehands(Hands.RIGHT).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).changehands(Hands.RIGHT).scale(1.0,2.0),

          Forward.changeBeats(1).changehands(Hands.LEFT).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).changehands(Hands.LEFT).scale(1.0,2.0) +
          Pivotforwardleft.changeBeats(4),

          ExtendRight.changeBeats(3).changehands(Hands.LEFT).scale(1.5,2.0) +
          Pivotbackwardright.changeBeats(4),

          ExtendRight.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,2.0)
      ]),

    AnimatedCall('Single Bounce the Boys',
      formation:Formation('Box RH'),
      from:'Box',isGenderSpecific:true,parts:'2',
      paths:[
          ExtendRight.changeBeats(2) +
          UmTurnRight,

          ExtendRight.changeBeats(2)
      ]),
  ];

