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

  final List<AnimatedCall> CourtesyTurn = [

    AnimatedCall('Courtesy Turn',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',notForSequencer: true,
      paths:[
          BelleWheel.scale(0.67,1.0),

          BeauWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Courtesy Turn',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',isGenderSpecific:true,
      paths:[
          BelleWheel.scale(0.67,1.0),

          BeauWheel.scale(0.67,1.0),

          BelleWheel.scale(0.67,1.0),

          BeauWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Courtesy Turn',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
  ]),
      from:'Girls facing Boys',isGenderSpecific:true,
      taminator: '''
      This is used after a call directed at the girls, such as
      Girls Pass Thru or Girls Square Thru 3.
    ''',
      paths:[
          UmTurnLeft.skew(1.0,-0.5) +
          BeauWheel.scale(0.5,1.25),

          ExtendRight.changeBeats(3).scale(1.0,0.5) +
          BelleWheel.scale(0.5,0.25),

          UmTurnLeft.skew(1.0,-0.5) +
          BeauWheel.scale(0.5,0.25),

          ExtendRight.changeBeats(3).scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.25)
      ]),

    AnimatedCall('Courtesy Turn and a Quarter More',
      formation:Formation('Couples Facing Out'),
      from:'Couples Facing Out',group:' ',isGenderSpecific:true,
      paths:[
          BelleWheel.scale(0.67,1.0) +
          HingeLeft,

          BeauWheel.scale(0.67,1.0) +
          BackHingeRight
      ]),

    AnimatedCall('Heads Pass Thru and Courtesy Turn',
      formation:Formation('Static Square'),
      group:' ',isGenderSpecific:true,fractions:'6',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          Path(),

          Path()
      ]),

    AnimatedCall('All 4 Ladies make a right-hand star, turn it once around; boys Courtesy Turn your girl',
      formation:Formation('Static Square'),
      group:' ',isGenderSpecific:true,
      taminator: '''
      This is also called 4 Ladies Chain All 4 Quarters
    ''',
      paths:[
          Stand.changeBeats(6) +
          QuarterLeft.changeBeats(3).skew(0.0,-2.0) +
          QuarterLeft.changeBeats(2) +
          BeauWheel.scale(0.67,1.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          SwingRight +
          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          BelleWheel.scale(0.67,1.0),

          Stand.changeBeats(6) +
          QuarterLeft.changeBeats(3).skew(0.0,-2.0) +
          QuarterLeft.changeBeats(2) +
          BeauWheel.scale(0.67,1.0),

          ExtendLeft.changeBeats(4).scale(3.0,2.0) +
          SwingRight +
          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          BelleWheel.scale(0.67,1.0)
      ]),
  ];

