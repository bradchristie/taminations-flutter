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

  final List<AnimatedCall> ScootAndRamble = [

    AnimatedCall('Ramble',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',isGenderSpecific:true,parts:'3',
      paths:[
          ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          LeadRight,

          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          QuarterLeft.skew(1.0,0.0),

          FlipRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          UmTurnRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag, Girls in Center',isGenderSpecific:true,parts:'3',
      paths:[
        ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          LeadRight,

        FlipRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

        ExtendRight.changeBeats(4).scale(3.0,2.0) +
            QuarterRight.skew(1.0,0.0),

        UmTurnRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag, Boys in Center',isGenderSpecific:true,parts:'3',
      paths:[
        ExtendLeft.changeBeats(4).scale(3.0,3.0) +
          QuarterLeft.skew(1.0,-1.0),

        FlipRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

        ExtendRight.changeBeats(4).scale(3.0,2.0) +
            QuarterLeft.skew(1.0,0.0),

        UmTurnRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5)
      ]),

    AnimatedCall('Ramble',
      formation:Formation('3/4 Tag'),
      from:'Three Quarter Tag',isGenderSpecific:true,parts:'3',
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(3.5).scale(1.0,3.0) +
          QuarterLeft.skew(1.0,0.0),

          UmTurnLeft.skew(-1.0,1.0) +
          Forward_2 +
          LeadRight,

          FlipRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          UmTurnRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Three Quarter Tag, Girls in Center',isGenderSpecific:true,parts:'3',
      paths:[
        QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(3.5).scale(1.0,3.0) +
          QuarterRight.skew(1.0,0.0),

        FlipRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

        UmTurnLeft.skew(-1.0,1.0) +
            Forward_2 +
            LeadRight,

        UmTurnRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
  ]),
      from:'Three Quarter Tag, Boys in Center',isGenderSpecific:true,parts:'3',
      paths:[
        QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(3.5).scale(1.0,3.0) +
          QuarterLeft.skew(1.0,0.0),

        FlipRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

        UmTurnLeft.skew(-1.0,1.0) +
            Forward_2 +
            QuarterLeft.skew(1.0,-1.0),

        UmTurnRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5)
      ]),

    AnimatedCall('Ramble',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',isGenderSpecific:true,
      paths:[
          UmTurnLeft.skew(-1.0,2.0) +
          Forward_2 +
          QuarterLeft.skew(1.0,0.0),

          FlipRight.scale(1.0,0.5).skew(1.5,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,0.5),

          FlipRight.scale(1.0,0.5).skew(0.5,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.5,-0.5),

          ExtendLeft.changeBeats(5).scale(3.0,3.0) +
          LeadRight
      ]),

    AnimatedCall('Scoot and Ramble',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',isGenderSpecific:true,parts:'6;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(2.5).scale(1.5,3.0) +
          QuarterRight.skew(1.0,-0.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          UmTurnLeft.skew(-1.0,1.5) +
          Forward_2.changeBeats(1.5) +
          QuarterLeft.changeBeats(1).skew(1.0,-0.5),

          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          UmTurnRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          FlipRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Scoot and Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag, Boys in center',isGenderSpecific:true,fractions:'6;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(2.5).scale(1.5,3.0) +
          QuarterLeft.skew(1.0,-0.5),

          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          UmTurnRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          UmTurnLeft.skew(-1.0,1.5) +
          Forward_2.changeBeats(1.5) +
          QuarterLeft.changeBeats(1).skew(1.0,-0.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          FlipRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5)
      ]),

    AnimatedCall('Scoot and Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag, Girls in center',isGenderSpecific:true,parts:'6;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          QuarterRight.skew(0.0,-1.0) +
          LeadRight.changeBeats(2.5).scale(1.5,3.0) +
          QuarterRight.skew(1.0,-0.5),

          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          UmTurnRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.changeBeats(1.5).scale(1.5,1.5) +
          UmTurnLeft.skew(-1.0,1.5) +
          Forward_2.changeBeats(1.5) +
          QuarterRight.changeBeats(1).skew(1.0,-0.5),

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          FlipRight.skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),
  ];

