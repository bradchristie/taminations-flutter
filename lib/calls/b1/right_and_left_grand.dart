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

  final List<AnimatedCall> RightAndLeftGrand = [

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:270),
  ]),
      from:'Grand Circle',isGenderSpecific:true,
      paths:[
          PullLeft.scale(1.0,0.75) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(-0.1,0.3),

          PullLeft.scale(1.0,0.75) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(-0.1,1.2),

          PullLeft.scale(1.0,0.75) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(-0.1,0.3),

          PullLeft.scale(1.0,0.75) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(-0.1,1.2)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1.1,angle:315),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1.1,angle:225),
  ]),
      from:'Grand Circle 2',isGenderSpecific:true,noDisplay: true,
      paths:[
          EighthLeft.changeBeats(1).skew(0.636,0.786) +
          Forward.changeBeats(.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(1.5,2.75) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          LeadRight.changeBeats(3).changehands(1).scale(0.25,2.0) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          LeadLeft.changeBeats(3).changehands(1).scale(1.75,1.0) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          EighthRight.changeBeats(1).skew(1.4,-0.1) +
          ExtendLeft.changeBeats(3).changehands(1).scale(2.0,0.25) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:0),
  ]),
      from:'Eight Chain Thru',isGenderSpecific:true,
      paths:[
          Forward +
          Forward.changeBeats(.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(1.5,2.75) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          ExtendLeft +
          LeadRight.changeBeats(3).changehands(1).scale(0.25,2.0) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5),

          Forward +
          LeadLeft.changeBeats(3).changehands(1).scale(1.75,1.0) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          ExtendLeft +
          ExtendLeft.changeBeats(3).changehands(1).scale(2.0,0.25) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('Ocean Waves RH GBBG'),
      from:'Right-Hand Waves',isGenderSpecific:true,
      paths:[
          ExtendRight.changeBeats(3).changehands(1).scale(2.0,0.75) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(3).changehands(1).scale(1.75,1.0) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          Forward.changeBeats(.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(1.5,2.75) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          LeadRight.changeBeats(3).changehands(1).scale(0.25,3.0) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ]),
      from:'Trade By',isGenderSpecific:true,
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          Forward.changeBeats(1.5).skew(0.0,-0.1) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-2.45) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          ExtendLeft.changeBeats(1.5).skew(0.0,0.1) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-0.02) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ]),
      from:'T-Bones',isGenderSpecific:true,noDisplay: true,
      paths:[
          Forward.changeBeats(1.5) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          ExtendLeft.changeBeats(1.5) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          Forward.changeBeats(1.5).skew(0.0,-0.1) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-2.45) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          ExtendLeft.changeBeats(1.5).skew(0.0,0.1) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-0.02) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]),
      from:'1/4 Tag',isGenderSpecific:true,
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          QuarterLeft.skew(-1.0,1.0) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]),
      from:'3/4 Tag',isGenderSpecific:true,
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('Thar LH Boys'),
      from:'Thar',isGenderSpecific:true,
      paths:[
          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3.5,y:-1.5,angle:45),
        DancerModel.fromData(gender:Gender.GIRL,x:3.5,y:1.5,angle:315),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1.5,angle:0),
  ]),
      from:'after Allemande Left',isGenderSpecific:true,noDisplay: true,
      paths:[
          LeadLeft_12.changeBeats(1.5).skew(0.0,1.1) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          QuarterLeft.changeBeats(2).skew(0.8,-0.1),

          LeadRight_12.changeBeats(1.5).skew(0.75,-0.45) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          QuarterRight.changeBeats(1).skew(0.1,0.0),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          QuarterLeft.changeBeats(2).skew(0.8,-0.1),

          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,0.08) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          QuarterRight.changeBeats(1).skew(0.1,0.0)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:270),
  ]),
      from:'Static Back-to-Back',isGenderSpecific:true,noDisplay: true,
      paths:[
          EighthLeft.changeBeats(0.2) +
          ExtendLeft.changeBeats(1.5).scale(1.414,0.5) +
          EighthLeft.changeBeats(1.5).skew(1.414,-0.5) +
          ExtendRight.skew(0.0,0.5) +
          EighthLeft.skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.414,0.5) +
          EighthLeft.changeBeats(1.5).skew(1.414,-0.5) +
          ExtendRight.skew(0.0,0.5) +
          EighthLeft.skew(1.0,0.5),

          EighthRight.changeBeats(0.2) +
          ExtendLeft.changeBeats(1.5).scale(1.414,0.5) +
          EighthRight.changeBeats(1.5).skew(1.414,-0.5) +
          ExtendRight.skew(0.0,0.5) +
          EighthRight.skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.414,0.5) +
          EighthRight.changeBeats(1.5).skew(1.414,-0.5) +
          ExtendRight.skew(0.0,0.5) +
          EighthRight.skew(1.0,0.5),

          EighthLeft.changeBeats(0.2) +
          ExtendLeft.changeBeats(1.5).scale(1.414,0.5) +
          EighthLeft.changeBeats(1.5).skew(1.414,-0.5) +
          ExtendRight.skew(0.0,0.5) +
          EighthLeft.skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.414,0.5) +
          EighthLeft.changeBeats(1.5).skew(1.414,-0.5) +
          ExtendRight.skew(0.0,0.5) +
          EighthLeft.skew(1.0,0.5),

          EighthRight.changeBeats(0.2) +
          ExtendLeft.changeBeats(1.5).scale(1.414,0.5) +
          EighthRight.changeBeats(1.5).skew(1.414,-0.5) +
          ExtendRight.skew(0.0,0.5) +
          EighthRight.skew(1.0,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.414,0.5) +
          EighthRight.changeBeats(1.5).skew(1.414,-0.5) +
          ExtendRight.skew(0.0,0.5) +
          EighthRight.skew(1.0,0.5)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3,angle:0),
  ]),
      from:'Quarter Tag Facing',noDisplay: true,
      paths:[
          Forward.changeBeats(1.5) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          ExtendLeft.changeBeats(1.5) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Right and Left Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:2.5,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3.5,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
  ]),
      from:'Outrigger',noDisplay: true,
      paths:[
          LeadLeft_12.changeBeats(4).changehands(1).scale(3.0,3.0).skew(0.52,-1.05) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4).changehands(1).scale(2.0,2.0).skew(0.16,-1.42) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          Forward.changeBeats(1.5).skew(0.0,-0.1) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-2.45) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          ExtendLeft.changeBeats(1.5).skew(0.0,0.1) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-0.02) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Weave the Ring',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:90),
  ]),
      group:' ',isGenderSpecific:true,
      paths:[
          ExtendLeft.scale(1.0,0.75) +
          LeadLeft_12.changeBeats(3).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).scale(2.0,2.0).skew(-0.1,0.3),

          ExtendLeft.scale(1.0,0.75) +
          LeadRight_12.changeBeats(3).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).scale(2.0,2.0).skew(-0.1,1.2),

          ExtendLeft.scale(1.0,0.75) +
          LeadLeft_12.changeBeats(3).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).scale(2.0,2.0).skew(-0.1,0.3),

          ExtendLeft.scale(1.0,0.75) +
          LeadRight_12.changeBeats(3).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).scale(2.0,2.0).skew(-0.1,1.2)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:270),
  ]),
      from:'Grand Circle',isGenderSpecific:true,
      paths:[
          PullLeft.scale(1.0,0.75) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58),

          PullLeft.scale(1.0,0.75) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3),

          PullLeft.scale(1.0,0.75) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58),

          PullLeft.scale(1.0,0.75) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1.1,angle:315),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1.5,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:-1.1,angle:225),
  ]),
      from:'Grand Circle 2',isGenderSpecific:true,noDisplay: true,
      paths:[
          EighthLeft.changeBeats(1).skew(0.636,0.786) +
          Forward.changeBeats(.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(1.5,2.75) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          LeadRight.changeBeats(3).changehands(1).scale(0.25,2.0) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5),

          ExtendLeft.changeBeats(1).scale(1.0,0.5) +
          LeadLeft.changeBeats(3).changehands(1).scale(1.75,1.0) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          EighthRight.changeBeats(1).skew(1.4,-0.1) +
          ExtendLeft.changeBeats(3).changehands(1).scale(2.0,0.25) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
  ]),
      from:'Eight Chain Thru',isGenderSpecific:true,
      paths:[
          Forward +
          Forward.changeBeats(.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(1.5,2.75) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          ExtendLeft +
          LeadRight.changeBeats(3).changehands(1).scale(0.25,2.0) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5),

          Forward +
          LeadLeft.changeBeats(3).changehands(1).scale(1.75,1.0) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          ExtendLeft +
          ExtendLeft.changeBeats(3).changehands(1).scale(2.0,0.25) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',isGenderSpecific:true,
      paths:[
          ExtendRight.changeBeats(3).changehands(1).scale(2.0,0.75) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5),

          LeadLeft.changeBeats(3).changehands(1).scale(1.75,1.0) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          Forward.changeBeats(.5).scale(0.5,1.0) +
          ExtendRight.changeBeats(2.5).changehands(1).scale(1.5,2.75) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(2),

          LeadRight.changeBeats(3).changehands(1).scale(0.25,3.0) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).skew(1.0,0.5)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
  ]),
      from:'Trade By',isGenderSpecific:true,
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          Forward.changeBeats(1.5).skew(0.0,-0.1) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-2.45) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          ExtendLeft.changeBeats(1.5).skew(0.0,0.1) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-0.02) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1,angle:0),
  ]),
      from:'T-Bones',isGenderSpecific:true,noDisplay: true,
      paths:[
          Forward.changeBeats(1.5) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          ExtendLeft.changeBeats(1.5) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          Forward.changeBeats(1.5).skew(0.0,-0.1) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-2.45) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          ExtendLeft.changeBeats(1.5).skew(0.0,0.1) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-0.02) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
  ]),
      from:'1/4 Tag',isGenderSpecific:true,
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          QuarterLeft.skew(-1.0,1.0) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
  ]),
      from:'3/4 Tag',isGenderSpecific:true,
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('Thar LH Girls'),
      from:'Thar',isGenderSpecific:true,
      paths:[
          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),

    AnimatedCall('Wrong Way Grand',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
  ]),
      from:'Quarter Tag Facing',noDisplay: true,
      paths:[
          Forward.changeBeats(1.5) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-0.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          ExtendLeft.changeBeats(1.5) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0),

          LeadLeft_12.changeBeats(4.5).changehands(1).scale(3.0,3.0).skew(0.52,-2.55) +
          LeadLeft_12.changeBeats(3).changehands(2).scale(2.0,2.0).skew(0.16,1.58) +
          LeadLeft_12.changeBeats(3).changehands(1).scale(3.0,3.0).skew(0.52,-1.2) +
          LeadLeft_12.changeBeats(1).changehands(2) +
          Forward.changeBeats(2).skew(-0.2,-0.1),

          LeadRight_12.changeBeats(4.5).changehands(1).scale(2.0,2.0).skew(0.16,-0.92) +
          LeadRight_12.changeBeats(3).changehands(2).scale(3.0,3.0).skew(0.52,1.3) +
          LeadRight_12.changeBeats(3).changehands(1).scale(2.0,2.0).skew(0.16,-1.67) +
          LeadRight_12.changeBeats(2).changehands(2).skew(0.5,1.0) +
          Forward.scale(0.1,1.0)
      ]),
  ];

