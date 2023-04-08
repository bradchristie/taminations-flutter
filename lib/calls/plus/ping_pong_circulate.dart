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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> PingPongCirculate = [

    AnimatedCall('Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:90),
  ]),
      from:'Center 4 Dancers',noDisplay: true,
      paths:[
          Forward.changeBeats(3).scale(3.0,3.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
  ]),
      from:'Center 4 Dancers LH',noDisplay: true,
      paths:[
          Forward.changeBeats(3).scale(3.0,3.0),

          LeadRight.changeBeats(4).scale(3.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
  ]),
      from:'Outer 4 Dancers',isPerimeter:true,noDisplay: true,
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward,

          LeadRight.changeBeats(4).scale(4.0,3.0) +
          LeadRight
      ]),

    AnimatedCall('Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
  ]),
      from:'Outer 4 Dancers LH',isPerimeter:true,noDisplay: true,
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward,

          LeadLeft.changeBeats(4).scale(4.0,3.0) +
          LeadLeft
      ]),

    AnimatedCall('Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:90),
  ]),
      from:'Quarter Tag',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward,

          Forward.changeBeats(3).scale(3.0,3.0),

          LeadRight.changeBeats(4).scale(4.0,3.0) +
          LeadRight,

          LeadLeft.changeBeats(4).scale(3.0,1.0) +
          QuarterLeft.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
  ]),
      from:'Left-Handed Quarter Tag',difficulty: 2,
      paths:[
          Forward.changeBeats(3).scale(3.0,3.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward,

          LeadLeft.changeBeats(4).scale(4.0,3.0) +
          LeadLeft,

          LeadRight.changeBeats(4).scale(3.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Boys Ping Pong Circulate',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',isGenderSpecific:true,difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward,

          Path(),

          LeadRight.changeBeats(4).scale(4.0,2.0) +
          LeadRight.changeBeats(2).scale(2.0,1.0),

          Path()
      ]),

    AnimatedCall('Boys Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
  ]),
      from:'Left-Handed Quarter Tag',isGenderSpecific:true,difficulty: 2,
      paths:[
          Forward.changeBeats(3).scale(3.0,3.0),

          Path(),

          Path(),

          LeadRight.changeBeats(4).scale(3.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Girls Ping Pong Circulate',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',isGenderSpecific:true,difficulty: 2,
      paths:[
          Path(),

          Forward.changeBeats(6).scale(3.0,3.0),

          Path(),

          LeadLeft.changeBeats(3.5).scale(2.0,1.0) +
          QuarterLeft.changeBeats(2.5).skew(1.0,-1.0)
      ]),

    AnimatedCall('Girls Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:270),
  ]),
      from:'Left-Handed Quarter Tag',isGenderSpecific:true,difficulty: 2,
      paths:[
          Path(),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward,

          LeadLeft.changeBeats(4).scale(4.0,3.0) +
          LeadLeft,

          Path()
      ]),

    AnimatedCall('Inside Path Ping Pong Circulate',
      formation:Formation('Quarter Tag', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag',difficulty: 2,
      paths:[
          Path(),

          Path(),

          Forward.changeBeats(6).scale(3.0,3.0),

          LeadLeft.changeBeats(3.5).scale(2.0,1.0) +
          QuarterLeft.changeBeats(2.5).skew(1.0,-1.0)
      ]),

    AnimatedCall('Inside Path Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
  ]),
      from:'Left-Handed Quarter Tag',difficulty: 2,
      paths:[
          Forward.changeBeats(3).scale(3.0,3.0),

          Path(),

          Path(),

          LeadRight.changeBeats(4).scale(3.0,1.0) +
          QuarterRight.changeBeats(2).skew(1.0,0.0)
      ]),

    AnimatedCall('Outside Path Ping Pong Circulate',
      formation:Formation('Quarter Tag', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:0),
  ]),
      from:'Quarter Tag',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          Forward,

          LeadRight.changeBeats(4).scale(4.0,2.0) +
          LeadRight.changeBeats(2).scale(2.0,1.0),

          Path(),

          Path()
      ]),

    AnimatedCall('Outside Path Ping Pong Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
  ]),
      from:'Left-Handed Quarter Tag',difficulty: 2,
      paths:[
          Path(),

          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          Forward,

          LeadLeft.changeBeats(4).scale(4.0,3.0) +
          LeadLeft,

          Path()
      ]),
  ];

