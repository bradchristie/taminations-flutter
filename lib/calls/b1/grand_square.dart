/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  final List<AnimatedCall> GrandSquare = [

    AnimatedCall('Sides Face, Grand Square',
      formation:Formation('Static Square'),
      from:'Static Square, Sides Face',group:' ',parts:'4;4;4;4;4;4;4',difficulty: 1,
      paths:[
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT),

          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.LEFT),

          QuarterRight.changeBeats(1).skew(0.0,0.5) +
          Back.changeBeats(2) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
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
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.LEFT) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0)
      ]),

    //  This is for the sequence to calculate Grand Square <nn> Steps
    AnimatedCall('Grand Square',
        formation:Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:180),
        ]),
        from:'Static Square, Sides Face',group:' ',
        parts:'4;4;4;4;4;4;4',difficulty: 1, noDisplay: true,
        paths:[
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(0.5,0.0) +
              Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
              Back.changeBeats(3).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(-0.5,0.0) +
              Forward_2.changeBeats(4) +
              Back.changeBeats(3).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
              Forward.changeBeats(3).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(0.5,0.0) +
              Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(0.5,0.0) +
              Back_2.changeBeats(4).changehands(Hands.RIGHT),

          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(0.5,0.0) +
              Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(-0.5,0.0) +
              Back.changeBeats(3).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
              Forward_2.changeBeats(4) +
              Back.changeBeats(3).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(-0.5,0.0) +
              Forward.changeBeats(3).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(0.5,0.0) +
              Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(0.5,0.0) +
              Back_2.changeBeats(4).changehands(Hands.LEFT),

          Back.changeBeats(3).scale(1.5, 1.5) +
              QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
              Forward.changeBeats(3).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(0.5,0.0) +
              Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(0.5,0.0) +
              Back_2.changeBeats(4).changehands(Hands.RIGHT) +
              Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(0.5,0.0) +
              Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
              Back.changeBeats(3).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(-0.5,0.0) +
              Forward.changeBeats(3).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(0.5,0.0),

          Back.changeBeats(3).scale(1.5, 1.5) +
              QuarterRight.changeBeats(1).skew(-0.5,0.0) +
              Forward.changeBeats(3).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(0.5,0.0) +
              Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(0.5,0.0) +
              Back_2.changeBeats(4).changehands(Hands.LEFT) +
              Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(0.5,0.0) +
              Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(-0.5,0.0) +
              Back.changeBeats(3).scale(1.5,1.5) +
              QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
              Forward.changeBeats(3).scale(1.5,1.5) +
              QuarterRight.changeBeats(1).skew(0.5,0.0)
        ]),

    AnimatedCall('Heads Face, Grand Square',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'4;4;4;4;4;4;4',difficulty: 1,
      paths:[
          QuarterRight.changeBeats(1).skew(0.0,0.5) +
          Back.changeBeats(2) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
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
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.LEFT) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0),

          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT),

          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Heads Star Thru, Sides Face, Grand Square',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',parts:'4;4;4;4;4;4;4',difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(1).scale(1.0,0.5) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(Hands.RIGHT) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(Hands.RIGHT),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          QuarterLeft.changeBeats(1).skew(1.0,-0.5) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(Hands.RIGHT) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward_2.changeBeats(4).changehands(Hands.RIGHT),

          QuarterRight.changeBeats(4).skew(0.0,0.5) +
          Back.changeBeats(3) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
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
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.LEFT) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0)
      ]),

    AnimatedCall('Boys Face your Partner, Grand Square',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',isGenderSpecific:true,parts:'4;4;4;4;4;4;4',difficulty: 3,
      paths:[
          QuarterRight.changeBeats(1).skew(0.0,0.5) +
          Back.changeBeats(2) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0),

          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.LEFT),

          QuarterRight.changeBeats(1).skew(0.0,0.5) +
          Back.changeBeats(2) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0),

          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Girls Face your Partner, Grand Square',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',isGenderSpecific:true,parts:'4;4;4;4;4;4;4',difficulty: 3,
      paths:[
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT),

          QuarterLeft.changeBeats(1).skew(0.0,-0.5) +
          Back.changeBeats(2) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.LEFT) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0),

          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward_2.changeBeats(4) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.RIGHT),

          QuarterLeft.changeBeats(1).skew(0.0,-0.5) +
          Back.changeBeats(2) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back_2.changeBeats(4).changehands(Hands.LEFT) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0)
      ]),

    AnimatedCall('Grand Square',
      formation:Formation('Butterfly In'),
      from:'Butterfly',parts:'4;4;4;4;4;4;4',difficulty: 2,
      paths:[
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4),

          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4),

          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
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
          Forward_2.changeBeats(4).changehands(Hands.RIGHT),

          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
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
          Forward_2.changeBeats(4).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Grand Square',
      formation:Formation('Facing Blocks Left'),
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
          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4) +
          Forward.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(0.5,0.0) +
          Forward.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
          QuarterLeft.changeBeats(1).skew(0.5,0.0) +
          Back.changeBeats(3).scale(1.5,1.5) +
          QuarterRight.changeBeats(1).skew(-0.5,0.0) +
          Back_2.changeBeats(4),

          Back.changeBeats(3).changehands(Hands.RIGHT).scale(1.5,1.5) +
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
          Forward_2.changeBeats(4).changehands(Hands.RIGHT),

          Back.changeBeats(3).changehands(Hands.LEFT).scale(1.5,1.5) +
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
          Forward_2.changeBeats(4).changehands(Hands.LEFT)
      ]),
  ];

