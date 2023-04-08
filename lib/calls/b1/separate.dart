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

  final List<AnimatedCall> Separate = [ 

    AnimatedCall('Heads Separate',
      formation:Formations.StaticSquare,
      group:' ',actives:'Heads',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0),

          Forward_2.changeBeats(3).changehands(2),

          Forward_2.changeBeats(3).changehands(1)
      ]),

    AnimatedCall('Sides Separate',
      formation:Formations.StaticSquare,
      group:' ',actives:'Sides',
      paths:[
          Forward_2.changeBeats(3).changehands(2),

          Forward_2.changeBeats(3).changehands(1),

          ExtendLeft.changeBeats(3).scale(2.0,2.0),

          ExtendRight.changeBeats(3).scale(2.0,2.0)
      ]),

    AnimatedCall('Heads Separate And Star Thru',
      formation:Formations.StaticSquare,
      group:' ',isGenderSpecific:true,actives:'Heads',
      paths:[
          ExtendLeft.changeBeats(3).scale(2.0,2.5) +
          Forward +
          QuarterRight.changehands(6).skew(1.0,-0.5),

          ExtendRight.changeBeats(3).scale(2.0,1.5) +
          Forward +
          QuarterLeft.changehands(6).skew(1.0,-0.5),

          Forward_2.changeBeats(3).changehands(2),

          Forward_2.changeBeats(3).changehands(1)
      ]),

    AnimatedCall('Heads Pass Thru, Separate Around 1 to a Line',
      formation:Formations.StaticSquare,
      group:'Heads Pass Thru, Separate',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunLeft.changeBeats(4).scale(1.0,1.5) +
          LeadLeft.changeBeats(3).scale(2.0,2.0),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,1.5) +
          LeadRight.changeBeats(3).scale(2.0,2.0),

          Stand.changeBeats(9).changehands(2) +
          ExtendLeft.changeBeats(4).scale(1.0,2.0),

          Stand.changeBeats(9).changehands(1) +
          ExtendRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Heads Pass Thru, Separate Around 1 and Come Into the Middle',
      formation:Formations.StaticSquare,
      group:'Heads Pass Thru, Separate',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunLeft.changeBeats(4).scale(1.0,1.5) +
          LeadLeft.changeBeats(3).scale(2.0,2.0) +
          Forward,

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,1.5) +
          LeadRight.changeBeats(3).scale(2.0,2.0) +
          Forward,

          Stand.changeBeats(8).changehands(2) +
          DodgeLeft.changeBeats(2).scale(1.0,0.75) +
          Stand.changeBeats(2) +
          DodgeRight.changeBeats(2).scale(1.0,0.75),

          Stand.changeBeats(8).changehands(1) +
          DodgeRight.changeBeats(2).scale(1.0,0.75) +
          Stand.changeBeats(2) +
          DodgeLeft.changeBeats(2).scale(1.0,0.75)
      ]),

    AnimatedCall('Heads Pass Thru, Separate Around 2 and Come Into the Middle',
      formation:Formations.StaticSquare,
      group:'Heads Pass Thru, Separate',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.5) +
          LeadLeft.changeBeats(2).scale(1.0,2.0),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,2.5) +
          LeadRight.changeBeats(2).scale(1.0,2.0),

          Stand.changeBeats(6) +
          Forward.changeBeats(3).changehands(2) +
          Stand.changeBeats(6) +
          Back.changeBeats(2).changehands(2),

          Stand.changeBeats(6) +
          Forward.changeBeats(3).changehands(1) +
          Stand.changeBeats(6) +
          Back.changeBeats(2).changehands(1)
      ]),

    AnimatedCall('Heads Pass Thru, Separate Around 2 to a Line',
      formation:Formations.StaticSquare,
      group:'Heads Pass Thru, Separate',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,2.5),

          Stand.changeBeats(6) +
          Forward.changeBeats(3).changehands(2),

          Stand.changeBeats(6) +
          Forward.changeBeats(3).changehands(1)
      ]),

    AnimatedCall('Heads Pass Thru, Separate Around 2; Meet Your Partner and Dosado',
      formation:Formations.StaticSquare,
      group:'Heads Pass Thru, Separate',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunLeft.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.5) +
          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RetreatRight.scale(1.0,0.5) +
          RetreatLeft.scale(2.0,0.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          RunRight.changeBeats(4).scale(1.0,1.5).skew(-1.0,0.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,2.5) +
          ExtendLeft.scale(2.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RetreatRight.scale(1.0,0.5) +
          RetreatLeft.scale(2.0,0.5),

          Stand.changeBeats(6) +
          Forward.changeBeats(3).changehands(2),

          Stand.changeBeats(6) +
          Forward.changeBeats(3).changehands(1)
      ]),

    AnimatedCall('Outside Couples Separate And Touch a Quarter',
      formation:Formations.TradeBy,
      group:'Outside Couples Separate',
      paths:[
          RunRight.changeBeats(5).skew(-3.0,-0.5) +
          HingeRight.scale(1.0,0.5),

          RunLeft.changeBeats(5).skew(-3.0,-0.5) +
          HingeRight.scale(1.0,0.5),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Pass the Ocean and Swing Thru, Others Separate and Everybody Right and Left Thru',
      formation:Formations.StaticSquare,
      group:'  ',
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadRight.changeBeats(2).scale(1.5,1.5) +
          SwingRight.changeBeats(2).scale(0.5,0.5) +
          SwingLeft.changeBeats(2).scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(0.5,0.5) +
          SwingRight.changeBeats(2).scale(0.5,0.5) +
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          QuarterLeft.changeBeats(3).skew(0.0,1.0) +
          LeadRight.changeBeats(5).scale(1.5,3.0) +
          Stand +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          QuarterRight.changeBeats(3).skew(0.0,-1.0) +
          LeadLeft.changeBeats(5).scale(0.5,3.0) +
          Stand +
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Around One to a Line',
      formation:Formations.TmBoneURLU,
      group:'   ',
      paths:[
          QuarterRight.changeBeats(2).skew(0.0,-1.5),

          DodgeLeft.changeBeats(2).skew(-0.5,0.0),

          DodgeRight.changeBeats(2).skew(-0.5,0.0),

          QuarterLeft.changeBeats(2).skew(0.0,1.5)
      ]),

    AnimatedCall('Around Two to a Line',
      formation:Formations.TmBoneURLU,
      group:'   ',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(3).scale(3.0,2.0),

          Back.changeBeats(3).changehands(2).scale(0.5,1.0),

          Back.changeBeats(3).changehands(1).scale(0.5,1.0),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,1.0)
      ]),

    AnimatedCall('Around One and Come Into the Middle',
      formation:Formations.TmBoneURLU,
      group:'   ',
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-2.0),

          DodgeLeft.changeBeats(2).scale(1.0,0.5).skew(-1.0,0.0) +
          DodgeRight.changeBeats(2).scale(1.0,0.5).skew(-1.0,0.0),

          DodgeRight.changeBeats(2).scale(1.0,0.5).skew(-1.0,0.0) +
          DodgeLeft.changeBeats(2).scale(1.0,0.5).skew(-1.0,0.0),

          QuarterLeft.changeBeats(3).skew(0.0,2.0)
      ]),

    AnimatedCall('Around Two and Come Into the Middle',
      formation:Formations.TmBoneURLU,
      group:'   ',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          LeadRight.changeBeats(2).scale(2.5,1.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5),

          Back.changeBeats(3).changehands(2).scale(2.0,1.0),

          Back.changeBeats(3).changehands(1).scale(2.0,1.0),

          ExtendLeft.scale(1.0,0.5) +
          LeadLeft.changeBeats(2).scale(2.5,0.5) +
          LeadLeft.changeBeats(2).scale(1.0,1.5)
      ]),
  ];

