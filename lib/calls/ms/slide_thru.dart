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

  final List<AnimatedCall> SlideThru = [

    AnimatedCall('Slide Thru',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',isGenderSpecific:true,difficulty: 1,
      taminator: '''
      Slide Thru is just Star Thru with no hands.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(1.5,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('Slide Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1.5,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1.5,y:1,angle:0),
  ]),
      from:'Sashayed Couples',isGenderSpecific:true,difficulty: 2,
      paths:[
          Forward_2.changeBeats(2).scale(0.75,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(1.5,1.0) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Slide Thru',
      formation:Formation('Normal Lines'),
      from:'Lines',isGenderSpecific:true,difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('Slide Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
  ]),
      from:'Sashayed Lines',isGenderSpecific:true,difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5)
      ]),

    AnimatedCall('Slide Thru',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',isGenderSpecific:true,difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5)
      ]),

    AnimatedCall('Slide Thru',
      formation:Formation('Ocean Waves RH BGBG'),
      from:'Ocean Waves',isGenderSpecific:true,difficulty: 2,
      taminator: '''
      This is an example of the Ocean Wave Rule.
    ''',
      paths:[
          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(2).skew(1.0,-1.0),

          LeadRight.changeBeats(2),

          QuarterLeft.changeBeats(2).skew(1.0,-1.0)
      ]),

    AnimatedCall('Slide Thru',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
  ]),
      from:'Same Sex Facing',isGenderSpecific:true,difficulty: 2,
      taminator: '''
    Unlike Star Thru, Slide Thru can be done facing the same sex.
    For the boys it's a no-hands Touch a Quarter.
    The girls pass thru and face left.
    ''',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterRight.changeBeats(2).skew(1.0,-0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-0.5)
      ]),
  ];

