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

import '../../common_dart.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';
import '../../animated_call.dart';

  final List<AnimatedCall> ChiselThru = [ 

    AnimatedCall('Chisel Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:270),
  ]),
      from:'Normal Lines',parts:'5;2.5',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5) +
          ExtendLeft +
          QuarterRight.skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5) +
          Forward +
          QuarterLeft.skew(1.0,-1.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          QuarterLeft.changeBeats(3).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5) +
          ExtendLeft +
          QuarterRight.skew(1.0,0.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5) +
          Forward +
          QuarterLeft.skew(1.0,-1.0)
      ]),

    AnimatedCall('Chisel Thru',
      formation:Formations.TidalWaveRHBGGB,
      from:'Tidal Wave',parts:'3;2.5',
      paths:[
          LeadRight.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5) +
          ExtendLeft +
          QuarterRight.skew(1.0,0.0),

          LeadLeft.changeBeats(3).scale(3.0,1.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5) +
          Forward +
          QuarterLeft.skew(1.0,-1.0),

          LeadRight.changeBeats(3).scale(1.0,0.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,-0.5) +
          Forward +
          QuarterLeft.skew(1.0,-1.0),

          QuarterLeft.changeBeats(3).skew(1.0,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.scale(1.0,0.5) +
          ExtendLeft +
          QuarterRight.skew(1.0,0.0)
      ]),
  ];

