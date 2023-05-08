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

  final List<AnimatedCall> CrossRamble = [

    AnimatedCall('Cross Ramble',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',isGenderSpecific:true,parts:'4',
      paths:[
          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          FlipRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Cross Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
  ]),
      from:'3/4 Tag, Boys in Center',isGenderSpecific:true,parts:'4',
      paths:[
          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          FlipRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5)
      ]),

    AnimatedCall('Cross Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'3/4 Tag, Girls in Center',isGenderSpecific:true,parts:'4',
      paths:[
          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          FlipRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('_Cross Ramble Part 1',
      formation:Formation('3/4 Tag'),
      from:'3/4 Tag',parts:'4',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.5),

          FlipRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0),

          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          FlipLeft.changeBeats(4).skew(1.0,0.0)
      ]),

    AnimatedCall('_Cross Ramble Part 1',
      formation:Formation('3/4 Tag LH'),
      from:'3/4 Tag LH',parts:'4',noDisplay: true,
      paths:[
          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.5),

          FlipRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0),

          RunLeft.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0),

          FlipRight.changeBeats(4).skew(1.0,0.0)
      ]),

    AnimatedCall('Scoot and Cross Ramble',
      formation:Formation('Quarter Tag'),
      from:'Quarter Tag',isGenderSpecific:true,parts:'5;4',
      paths:[
          ExtendLeft.scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.scale(1.5,1.5) +
          FlipRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          ExtendRight.scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.5,0.5) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),

    AnimatedCall('Scoot and Cross Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag, Boys in Center',isGenderSpecific:true,parts:'5;4',
      paths:[
          ExtendLeft.scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          ExtendRight.scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.scale(1.5,1.5) +
          FlipRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.5,0.5) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5)
      ]),

    AnimatedCall('Scoot and Cross Ramble',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag, Girls in Center',isGenderSpecific:true,parts:'5;4',
      paths:[
          ExtendLeft.scale(1.5,1.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          LeadLeft.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          ExtendRight.scale(1.5,0.5) +
          SwingRight.scale(0.75,0.75) +
          Forward.scale(1.5,1.0) +
          FlipLeft.changeBeats(4).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendRight.scale(1.5,1.5) +
          FlipRight.changeBeats(4).scale(1.0,2.0).skew(-2.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterRight.skew(1.0,-0.5),

          Forward.scale(1.5,1.0) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.scale(1.5,0.5) +
          RunRight.changeBeats(4).scale(1.0,2.0).skew(1.0,0.0) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5)
      ]),
  ];

