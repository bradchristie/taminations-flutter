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

  final List<AnimatedCall> GrandSquare = [ 

    AnimatedCall('Sides Face, Grand Square',
      formation:Formations.StaticSquare,
      from:'Static Square, Sides Face',group:' ',parts:'4;4;4;4;4;4;4',difficulty: 1,
      paths:[
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(2),

          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(1),

          QuarterRight.changeBeats(1).skew(0.0,0.5) +
          Back.changeBeats(2) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(2) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0),

          QuarterLeft.changeBeats(1).skew(0.0,-0.5) +
          Back.changeBeats(2) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(1) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0)
      ]),

    AnimatedCall('Heads Face, Grand Square',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',parts:'4;4;4;4;4;4;4',difficulty: 1,
      paths:[
          QuarterRight.changeBeats(1).skew(0.0,0.5) +
          Back.changeBeats(2) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(2) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0),

          QuarterLeft.changeBeats(1).skew(0.0,-0.5) +
          Back.changeBeats(2) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(1) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0),

          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(2),

          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(1)
      ]),

    AnimatedCall('Heads Star Thru, Sides Face, Grand Square',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',parts:'4;4;4;4;4;4;4',difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(1).scale(1.0,0.5) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(2) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(2),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          QuarterLeft.changeBeats(1).skew(1.0,-0.5) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(2) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(2),

          QuarterRight.changeBeats(4).skew(0.0,0.5) +
          Back.changeBeats(3) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(2) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0),

          QuarterLeft.changeBeats(4).skew(0.0,-0.5) +
          Back.changeBeats(3) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(1) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0)
      ]),

    AnimatedCall('Boys Face your Partner, Grand Square',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',isGenderSpecific:true,parts:'4;4;4;4;4;4;4',difficulty: 3,
      paths:[
          QuarterRight.changeBeats(1).skew(0.0,0.5) +
          Back.changeBeats(2) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(2) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0),

          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(1),

          QuarterRight.changeBeats(1).skew(0.0,0.5) +
          Back.changeBeats(2) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(2) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0),

          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(1)
      ]),

    AnimatedCall('Girls Face your Partner, Grand Square',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',isGenderSpecific:true,parts:'4;4;4;4;4;4;4',difficulty: 3,
      paths:[
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(2),

          QuarterLeft.changeBeats(1).skew(0.0,-0.5) +
          Back.changeBeats(2) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(1) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0),

          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(2),

          QuarterLeft.changeBeats(1).skew(0.0,-0.5) +
          Back.changeBeats(2) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(1) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0)
      ]),

    AnimatedCall('Grand Square',
      formation:Formations.ButterflyIn,
      from:'Butterfly',parts:'4;4;4;4;4;4;4',difficulty: 2,
      paths:[
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4),

          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4),

          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(2),

          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(1)
      ]),

    AnimatedCall('Grand Square',
      formation:Formations.FacingBlocksLeft,
      from:'Blocks',parts:'4;4;4;4;4;4;4',difficulty: 3,
      paths:[
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4),

          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4),

          Back.changeBeats(3).changehands(2).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4).changehands(2),

          Back.changeBeats(3).changehands(1).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(1)
      ]),
  ];

