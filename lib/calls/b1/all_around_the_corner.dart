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
import '../b1/see_saw.dart' as b1;

  final List<AnimatedCall> AllAroundTheCorner = [ 

    AnimatedCall('Walk Around the Corner',
      formation:Formations.FacingCouples,
      from:'Facing Couples',
      paths:[
          ExtendLeft.changeBeats(2.5).scale(2.0,1.3) +
          RunRight.scale(0.65,0.65) +
          Forward_2.changeBeats(2.5),

          Forward_2.changeBeats(2.5) +
          RunRight.scale(0.65,0.65) +
          ExtendRight.changeBeats(2.5).scale(2.0,1.3)
      ]),

    AnimatedCall('Walk Around the Corner',
      formation:Formations.StaticSquare,
      from:'Static Square',
      paths:[
          LeadLeft.skew(-0.5,0.0) +
          HingeRight.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadLeft.changeBeats(2).skew(0.0,-0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).skew(0.0,-0.5),

          LeadLeft.skew(-0.5,0.0) +
          HingeRight.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadLeft.changeBeats(2).skew(0.0,-0.5),

          LeadRight.changeBeats(3).skew(0.5,0.0) +
          SwingRight.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).skew(0.0,-0.5)
      ]),
    b1.SeeSaw.where((tam) =>
      tam.title == 'All Around the Corner, See Saw Your Partner').first.xref(title: 'Walk Around the Corner, See Saw Your Partner').xref(group: ' '),
  ];

