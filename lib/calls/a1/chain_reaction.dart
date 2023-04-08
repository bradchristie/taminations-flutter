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

  final List<AnimatedCall> ChainReaction = [

    AnimatedCall('Chain Reaction',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',fractions:'3;1.5;2',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeRight.changeBeats(2) +
          CastLeft,

          Stand.changeBeats(3) +
          HingeLeft.skew(1.0,0.0) +
          HingeRight.changeBeats(2) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          SwingRight.changeBeats(2) +
          CastLeft,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(1).skew(0.0,1.0) +
          SwingRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Chain Reaction',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:-1,angle:180),
  ]),
      from:'Left-Hand Quarter Tag',fractions:'3;1.5;2',
      paths:[
          Stand.changeBeats(3) +
          HingeRight.skew(1.0,0.0) +
          HingeLeft.changeBeats(2) +
          ExtendRight.changeBeats(4.5).scale(2.0,2.0),

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          HingeLeft.changeBeats(2) +
          CastRight,

          LeadLeft.changeBeats(4.5).scale(5.0,3.0) +
          SwingLeft.changeBeats(2) +
          CastRight,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterRight.changehands(2).skew(0.0,-1.0) +
          SwingLeft.changeBeats(2) +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Chain Reaction, Turn the Star 1/2',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',group:' ',fractions:'3;1.5;3',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          SwingRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          Stand.changeBeats(3) +
          HingeLeft.skew(1.0,0.0) +
          SwingRight +
          CastLeft,

          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          SwingRight +
          CastLeft,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(1).skew(0.0,1.0) +
          SwingRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Chain Reaction, Turn the Star 3/4',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',group:' ',fractions:'3;1.5;4.5',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(1.5) +
          CastRight +
          CastLeft,

          Stand.changeBeats(3) +
          HingeLeft.skew(1.0,0.0) +
          CastRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          SwingRight.changeBeats(4.5) +
          CastLeft,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(1).skew(0.0,1.0) +
          SwingRight.changeBeats(4.5) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),

    AnimatedCall('Chain Reaction, Do Not Turn the Star',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',group:' ',fractions:'3;1;2',
      paths:[
          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          Stand.changeBeats(3.5) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          Stand.changeBeats(3) +
          HingeLeft.skew(1.0,0.0) +
          Stand.changeBeats(2) +
          CastLeft,

          LeadRight.changeBeats(4.5).scale(5.0,3.0) +
          SwingRight.changeBeats(2) +
          CastLeft,

          ExtendLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          QuarterLeft.changehands(1).skew(0.0,1.0) +
          SwingRight.changeBeats(2) +
          LeadRight.changeBeats(4.5).scale(3.0,3.0)
      ]),
  ];

