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
import '../../formation.dart';
import '../../moves.dart';

  final List<AnimatedCall> Zoom = [

    AnimatedCall('Zoom',
      formation:Formation('Box RH'),
      from:'Right-Hand Box',fractions:'3',difficulty: 2,
      paths:[
          Forward_4.changeBeats(6),

          RunLeft.skew(-2.0,0.0) +
          RunLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Zoom',
      formation:Formation('Box LH'),
      from:'Left-Hand Box',fractions:'3',difficulty: 2,
      paths:[
          RunRight.skew(-2.0,0.0) +
          RunRight.skew(2.0,0.0),

          Forward_4.changeBeats(6)
      ]),

    AnimatedCall('Zoom',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',fractions:'2',difficulty: 2,
      taminator: '''
    One analogy of Zoom is two people on a tandem bicycle changing seats.
    ''',
      paths:[
          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4).changehands(1),

          Forward_2.changeBeats(4).changehands(2)
      ]),

    AnimatedCall('Zoom',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',fractions:'2',difficulty: 1,
      taminator: '''
    Another analogy is a driver and back-seat passenger changing places in a car.
    The driver gets out the front and gets in the back,
    while the passenger climbs over the seat.
    ''',
      paths:[
          Forward_2.changeBeats(4).changehands(2),

          Forward_2.changeBeats(4).changehands(1),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Zoom',
      formation:Formation('Column RH GBGB'),
      from:'Columns',fractions:'2',difficulty: 2,
      paths:[
          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Zoom',
      formation:Formation('Column LH GBGB'),
      from:'Left-Hand Columns',fractions:'2',difficulty: 2,
      paths:[
          Forward_2.changeBeats(4),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Zoom',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
  ]),
      from:'T-Bones',fractions:'2',difficulty: 3,
      paths:[
          Forward_2.changeBeats(4),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          RunRight.changeBeats(2).skew(-1.0,0.0) +
          RunRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Centers Zoom',
      formation:Formation('Column RH GBGB'),
      from:'Columns',fractions:'2',difficulty: 2,
      paths:[
          Path(),

          RunLeft.changeBeats(2).skew(-1.0,0.0) +
          RunLeft.changeBeats(2).skew(1.0,0.0),

          Forward_2.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Ends Zoom',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',fractions:'3',difficulty: 2,
      paths:[
          Forward_4.changeBeats(6),

          Path(),

          Path(),

          RunLeft.skew(-2.0,0.0) +
          RunLeft.skew(2.0,0.0)
      ]),

    AnimatedCall('Points Zoom',
      formation:Formation('Diamonds RH Girl Points'),
      from:'Diamonds',fractions:'3',difficulty: 2,
      paths:[
          Path(),

          Forward_4.changeBeats(6),

          Path(),

          RunLeft.skew(-2.0,0.0) +
          RunLeft.skew(2.0,0.0)
      ]),
  ];

