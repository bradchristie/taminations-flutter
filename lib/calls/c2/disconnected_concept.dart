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

  final List<AnimatedCall> DisconnectedConcept = [

    AnimatedCall('Boys Disconnected Crossfire',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.6,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1.8,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:4.2,angle:0),
  ]),
      group:'Boys Disconnected',isGenderSpecific:true,
      paths:[
          LeadRight.changeBeats(2).scale(1.6,1.8) +
          Forward +
          LeadRight.changeBeats(2).scale(2.6,0.4),

          Path(),

          LeadRight.changeBeats(2).scale(1.5,2.3) +
          LeadRight.changeBeats(2).scale(1.9,1.7) +
          Forward,

          Path()
      ]),

    AnimatedCall('Girls Disconnected Cross Roll to a Wave',
      formation:Formations.TidalLineGirlsDisconnected,
      group:'Girls Disconnected',isGenderSpecific:true,
      paths:[
          RunLeft.changeBeats(5),

          Stand.changeBeats(5).changehands(0),

          RunLeft.changeBeats(5).scale(1.0,1.5),

          Stand.changeBeats(5).changehands(0)
      ]),

    AnimatedCall('Girls Disconnected Crossfire',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1.5,angle:0),
  ]),
      group:'Girls Disconnected',isGenderSpecific:true,
      paths:[
          RunLeft.changeBeats(5).scale(1.0,1.75).skew(2.0,0.0),

          Stand.changeBeats(5).changehands(0),

          SwingLeft.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          DodgeRight.changeBeats(5).scale(1.0,0.25)
      ]),

    AnimatedCall('Girls Disconnected Mix',
      formation:Formations.TidalWaveLHBGGB,
      group:'Girls Disconnected',isGenderSpecific:true,
      paths:[
          Stand.changeBeats(7).changehands(0),

          DodgeRight.scale(1.0,0.5) +
          RunRight.changeBeats(4).scale(1.5,1.5),

          RunLeft.changeBeats(6).scale(2.0,2.0) +
          Stand,

          Stand.changeBeats(7).changehands(2)
      ]),

    AnimatedCall('Girls Disconnected Swing Thru',
      formation:Formations.TidalWaveLHBGGB,
      group:'Girls Disconnected',isGenderSpecific:true,
      paths:[
          Stand.changeBeats(7).changehands(0),

          SwingRight.scale(0.5,0.5) +
          RunLeft.changeBeats(4).scale(1.5,1.5),

          SwingRight.scale(0.5,0.5) +
          Stand.changeBeats(4).changehands(0),

          Stand.changeBeats(7).changehands(2)
      ]),

    AnimatedCall('Girls Disconnected Switch the Wave',
      formation:Formations.TidalWaveLHBGGB,
      group:'Girls Disconnected',isGenderSpecific:true,
      paths:[
          Stand.changeBeats(6).changehands(0),

          RunRight.changeBeats(6).scale(2.0,2.0),

          RunRight.scale(0.5,0.5) +
          Stand.changeBeats(3).changehands(0),

          Stand.changeBeats(6).changehands(2)
      ]),

    AnimatedCall('Ends Disconnected Chase Right',
      formation:Formations.LinesFacingOut,
      group:'Ends Disconnected',
      paths:[
          UmTurnRight.skew(-2.0,0.0) +
          Forward_2 +
          RunRight.changeBeats(6).scale(2.0,3.0),

          Stand.changeBeats(11).changehands(1),

          Stand.changeBeats(11).changehands(2),

          RunRight.changeBeats(6).scale(2.0,3.0) +
          Forward_4.changeBeats(5)
      ]),

    AnimatedCall('Ends Disconnected Scoot Back',
      formation:Formations.OceanWavesRHBGGB,
      group:'Ends Disconnected',
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.25) +
          SwingRight.scale(0.75,0.75) +
          ExtendLeft.changeBeats(2).scale(2.0,2.25),

          Stand.changeBeats(7).changehands(1),

          Stand.changeBeats(7).changehands(1),

          RunRight.changeBeats(7).scale(2.0,3.0)
      ]),

    AnimatedCall('Ends Disconnected Swap Around',
      formation:Formations.NormalLines,
      group:'Ends Disconnected',
      paths:[
          RunRight.changeBeats(6).scale(1.5,3.0),

          Stand.changeBeats(6).changehands(2),

          Stand.changeBeats(6).changehands(1),

          Forward_4.changeBeats(6)
      ]),

    AnimatedCall('Same Sex Disconnected Crossfire',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:2.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
  ]),
      group:' ',isGenderSpecific:true,
      paths:[
          LeadRight.scale(2.0,1.0) +
          Forward_2 +
          QuarterRight.skew(1.5,0.0),

          LeadRight.scale(2.0,1.5) +
          Forward_2 +
          QuarterRight.skew(2.0,0.0),

          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          RunRight.scale(1.5,1.5) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Disconnected Columns of 3 Circulate',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:4,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:0,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:-4,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2,angle:270),
  ]),
      group:' ',
      paths:[
          Forward_4,

          Forward_4,

          RunRight.changeBeats(4),

          Path()
      ]),
  ];

