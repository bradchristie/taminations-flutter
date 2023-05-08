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
import '../c2/file_to_a_line.dart' as c2;
import '../c2/invert_the_column.dart' as c2;

  final List<AnimatedCall> MagicColumnFormation = [

    AnimatedCall('Magic Column Circulate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-1,angle:0),
  ]),
      group:'(Right-Hand Centers)',fractions:'2',
      paths:[
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2),

          Forward_2.changeBeats(4),

          FlipLeft.changeBeats(4)
      ]),

    AnimatedCall('Magic Column Circulate (6 dancers)',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:0),
  ]),
      group:'(Right-Hand Centers)',fractions:'2',
      paths:[
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Magic Column Coordinate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:90),
  ]),
      group:'(Right-Hand Centers)',fractions:'6;3',
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          LeadLeft.changeBeats(2) +
          LeadLeft.changeBeats(3).scale(3.0,2.0),

          FlipLeft.changeBeats(4) +
          Forward.changeBeats(2) +
          SwingLeft.scale(0.5,1.0),

          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          SwingRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(3).scale(2.0,4.0),

          Forward_2.changeBeats(4) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Magic Column Split Circulate',
      formation:Formation('Magic Column RH'),
      group:'(Right-Hand Centers)',fractions:'2',
      paths:[
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2),

          RunRight.changeBeats(4).scale(0.5,1.0),

          RunLeft.changeBeats(4)
      ]),

    AnimatedCall('Magic Column Transfer the Column',
      formation:Formation('Magic Column RH'),
      group:'(Right-Hand Centers)',
      paths:[
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,1.5),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          RunLeft.changeBeats(3.5).scale(1.0,2.0) +
          QuarterLeft.changeBeats(3).skew(0.0,1.0),

          Forward_2.changeBeats(4) +
          SwingRight.scale(0.5,1.0) +
          HingeRight.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          RunLeft.changeBeats(4).scale(1.0,2.0) +
          Forward_2.changeBeats(3) +
          LeadLeft.changeBeats(3.5).scale(2.0,1.0)
      ]),

    AnimatedCall('Magic Column Transfer and',
      formation:Formation('Magic Column RH'),
      group:'(Right-Hand Centers)',noDisplay: true,
      paths:[
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward +
          RunLeft.changeBeats(4.5).scale(1.0,2.5).skew(-1.0,0.0) +
          LeadLeft.changeBeats(3),

          Forward_2.changeBeats(4),

          RunLeft.changeBeats(4).scale(1.0,2.5) +
          Forward_2.changeBeats(3) +
          LeadLeft.changeBeats(3.5).scale(2.0,1.0)
      ]),

    AnimatedCall('Magic Column Walk and Dodge',
      formation:Formation('Magic Column RH'),
      group:'(Right-Hand Centers)',
      paths:[
          Forward.changeBeats(2) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2),

          DodgeRight.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Magic Column Circulate',
      formation:Formation('Magic Column LH'),
      group:'(Left-Hand Centers)',fractions:'2',
      paths:[
          FlipRight.changeBeats(4),

          Forward_2.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2),

          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Magic Column Circulate (6 dancers)',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:2,y:-1,angle:180),
  ]),
      group:'(Left-Hand Centers)',fractions:'2',
      paths:[
          RunRight.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2),

          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Magic Column Coordinate',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:-1,angle:270),
  ]),
      group:'(Left-Hand Centers)',fractions:'6;3',
      paths:[
          Forward_2.changeBeats(4) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight.scale(0.5,1.0),

          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          SwingLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,2.0),

          FlipRight.changeBeats(4) +
          Forward.changeBeats(2) +
          SwingRight.scale(0.5,1.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          LeadRight.changeBeats(2) +
          LeadRight.changeBeats(5).scale(5.0,2.0)
      ]),

    AnimatedCall('Magic Column Split Circulate',
      formation:Formation('Magic Column LH'),
      group:'(Left-Hand Centers)',fractions:'2',
      paths:[
          RunRight.changeBeats(4),

          RunLeft.changeBeats(4).scale(0.5,1.0),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2),

          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Magic Column Transfer the Column',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
  ]),
      group:'(Left-Hand Centers)',
      paths:[
          Forward_2.changeBeats(4) +
          SwingLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.5,1.0) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2) +
          RunRight.changeBeats(3.5).scale(1.0,2.0) +
          QuarterRight.changeBeats(3).skew(0.0,-1.0),

          RunRight.changeBeats(4).scale(1.0,2.0) +
          Forward_2.changeBeats(3) +
          LeadRight.changeBeats(3.5).scale(2.0,1.0),

          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft.scale(0.5,1.0) +
          HingeLeft.scale(0.5,1.0) +
          ExtendRight.changeBeats(2).scale(2.0,1.5)
      ]),

    AnimatedCall('Magic Column Transfer and',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
  ]),
      group:'(Left-Hand Centers)',noDisplay: true,
      paths:[
          Forward_2.changeBeats(4),

          ExtendLeft.scale(1.0,2.0) +
          Forward.changeBeats(.5) +
          RunRight.changeBeats(5).scale(1.0,2.5).skew(-1.0,0.0) +
          LeadRight.changeBeats(3),

          RunRight.changeBeats(4).scale(1.0,2.5) +
          Forward_2 +
          LeadRight.changeBeats(3.5).scale(2.0,1.0),

          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),

    AnimatedCall('Magic Column Walk and Dodge',
      formation:Formation('Magic Column LH'),
      group:'(Left-Hand Centers)',
      paths:[
          DodgeRight.changeBeats(4),

          DodgeLeft.changeBeats(4),

          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          Forward.changeBeats(2),

          Forward.changeBeats(2) +
          ExtendRight.changeBeats(2).scale(1.0,2.0)
      ]),
    c2.FileToALine.where((tam) =>
      tam.title == 'Magic Column File to a Line').first.xref(title: 'Magic Column File to a Line').xref(group: 'Magic Column (C-2)'),
    c2.InvertTheColumn.where((tam) =>
      tam.title == 'Magic Column Invert the Column').first.xref(title: 'Magic Column Invert the Column').xref(group: 'Magic Column (C-2)'),
  ];

