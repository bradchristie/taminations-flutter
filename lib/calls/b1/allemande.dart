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

  final List<AnimatedCall> Allemande = [

    AnimatedCall('Allemande Left',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',isGenderSpecific:true,
      paths:[
          Forward.scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(2).skew(1.5,0.5),

          ExtendRight.scale(1.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          EighthRight.changeBeats(2).skew(1.5,0.5)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
  ]),
      from:'Eight Chain Thru',isGenderSpecific:true,
      paths:[
          Forward +
          SwingLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(2).skew(1.5,0.5),

          ExtendRight +
          SwingLeft.scale(0.5,0.5) +
          EighthRight.changeBeats(2).skew(1.5,0.5),

          Forward +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          ExtendRight +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2,angle:0),
  ]),
      from:'after Dixie Grand',isGenderSpecific:true,noDisplay: true,
      paths:[
          Forward +
          SwingLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(2).skew(1.5,0.5),

          ExtendRight +
          SwingLeft.scale(0.5,0.5) +
          EighthRight.changeBeats(2).skew(1.5,0.5),

          ExtendRight +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5),

          Forward +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,0.5)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
  ]),
      from:'Trade By',isGenderSpecific:true,
      paths:[
          QuarterRight.skew(0.0,-1.0) +
          SwingLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(1.5).skew(1.1,1.0),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          Forward.changeBeats(1.5),

          LeadLeft.changeBeats(1.5) +
          SwingLeft.scale(0.5,0.5) +
          EighthRight.changeBeats(1.5).skew(1.1,0.0)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',isGenderSpecific:true,
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(1.5).skew(1.1,0.5),

          QuarterRight.changeBeats(2).skew(-0.5,-1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          LeadLeft.changeBeats(2).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          EighthRight.changeBeats(1.5).skew(1.1,0.5)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-3,angle:0),
  ]),
      from:'Lines Facing Out',isGenderSpecific:true,
      paths:[
          QuarterRight.changeBeats(1).skew(-0.5,-1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          QuarterRight.changeBeats(1).skew(-0.5,-1.0) +
          SwingLeft.scale(0.5,0.5) +
          EighthLeft.changeBeats(1.5).skew(1.0,1.5),

          LeadLeft.changeBeats(1).scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          EighthRight.changeBeats(1.5).skew(1.0,-0.5)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-3,angle:0),
  ]),
      from:'Left-Hand Waves',isGenderSpecific:true,
      paths:[
          HingeLeft.scale(0.75,1.0) +
          HingeLeft.scale(0.75,0.75) +
          EighthLeft.changeBeats(1.5).skew(1.0,1.75),

          HingeLeft.scale(0.75,1.0) +
          HingeLeft.scale(0.75,0.75) +
          EighthRight.changeBeats(1.5).skew(1.0,-0.25),

          HingeLeft.scale(0.75,1.0) +
          HingeLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.75),

          HingeLeft.scale(0.75,1.0) +
          HingeLeft.scale(0.75,0.75) +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.75)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-3,angle:270),
  ]),
      from:'Left-Hand 3/4 Tag',isGenderSpecific:true,
      paths:[
          QuarterRight.skew(-0.5,-1.0) +
          SwingLeft.scale(0.5,0.5) +
          EighthLeft.skew(1.0,0.5),

          SwingLeft +
          ExtendLeft,

          SwingLeft +
          ExtendLeft,

          QuarterLeft.skew(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          EighthRight.skew(1.0,0.5)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('Static Square'),
      from:'Static Square',isGenderSpecific:true,
      paths:[
          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).skew(0.0,0.5),

          LeadRight.changeBeats(1.5).skew(-0.5,0.0) +
          HingeLeft.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(2).skew(0.0,0.5),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).skew(0.0,0.5),

          LeadRight.changeBeats(1.5).skew(-0.5,0.0) +
          HingeLeft.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight.changeBeats(2).skew(0.0,0.5)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2.45,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2.45,y:-1,angle:45),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-2.45,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-2.45,angle:135),
  ]),
      from:'Circle Left',isGenderSpecific:true,
      paths:[
          EighthLeft.changeBeats(1.5).skew(1.1,0.4) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft_12.changeBeats(2.25).skew(0.75,-0.2),

          QuarterRight.skew(-0.5,-1.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft_12 +
          QuarterRight.skew(0.9,-0.1),

          EighthLeft.changeBeats(1.5).skew(1.1,0.4) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft_12.changeBeats(2.25).skew(0.75,-0.2),

          QuarterRight.skew(-0.5,-1.0) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft_12 +
          QuarterRight.skew(0.9,-0.1)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
  ]),
      from:'Thar',isGenderSpecific:true,
      paths:[
          SwingLeft +
          Forward.changeBeats(2),

          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          SwingLeft +
          Forward.changeBeats(2),

          SwingLeft +
          ExtendLeft.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Allemande Left',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:1,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:1.5,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:1,angle:270),
  ]),
      from:'Grand Circle',isGenderSpecific:true,noDisplay: true,
      paths:[
          ExtendRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft_12,

          ExtendRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight_12.skew(1.1,1.5),

          ExtendRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft_12.skew(0.2,-0.6),

          ExtendRight.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadRight_12.skew(0.2,0.0)
      ]),
  ];

