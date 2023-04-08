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
import '../a2/remake.dart' as a2;
import '../c1/swing_the_fractions.dart' as c1;

  final List<AnimatedCall> AnyHandConcept = [

    AnimatedCall('Any Hand Swing Thru',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',parts:'3',
      paths:[
          SwingLeft +
          RunRight,

          SwingLeft,

          SwingRight,

          SwingRight +
          FlipLeft
      ]),

    AnimatedCall('Any Hand Swing Thru',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',parts:'3',
      paths:[
          SwingRight +
          FlipLeft,

          SwingRight,

          SwingLeft,

          SwingLeft +
          RunRight
      ]),

    AnimatedCall('Any Hand Swing Thru',
      formation:Formations.TidalInvertedLineRH,
      from:'Tidal Inverted Line, Right-Hand Centers',parts:'3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          FlipLeft.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          RunRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Any Hand Swing Thru',
      formation:Formations.TidalInvertedLineLH,
      from:'Tidal Inverted Line, Left-Hand Centers',parts:'3',
      paths:[
          SwingLeft.scale(0.5,0.5) +
          RunRight.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          FlipLeft.scale(0.75,0.5)
      ]),

    AnimatedCall('Any Hand Grand Swing Thru',
      formation:Formations.TidalInvertedLineRH,
      from:'Tidal Inverted Line, Right-Hand Centers',parts:'3',
      paths:[
          SwingRight.scale(0.5,0.5) +
          FlipLeft.scale(1.0,0.5),

          SwingRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5),

          SwingLeft.scale(0.5,0.5) +
          RunRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Any Hand Grand Swing Thru',
      formation:Formations.TidalInvertedLineLH,
      from:'Tidal Inverted Line, Left-Hand Centers',parts:'3',
      paths:[
          SwingLeft.scale(0.5,0.5) +
          RunRight.scale(1.0,0.5),

          SwingLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          FlipLeft.scale(0.75,0.5)
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:90),
  ]),
      from:'Inverted Lines, Ends Facing Out',parts:'1.5',
      paths:[
          HingeLeft,

          HingeLeft +
          RunRight,

          HingeRight +
          FlipLeft,

          HingeRight
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',parts:'1.5',
      paths:[
          HingeRight +
          FlipLeft,

          HingeRight,

          HingeLeft,

          HingeLeft +
          RunRight
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns, Right-Hand Centers',parts:'1.5',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(0.75,0.5),

          HingeRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns, Left-Hand Centers',parts:'1.5',
      paths:[
          HingeRight.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(0.75,0.5),

          HingeRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',parts:'1.5',
      paths:[
          Stand.changeBeats(1.5) +
          RunRight,

          HingeRight +
          FlipLeft
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formations.DiamondLHBoysCenter,
      from:'Left-Hand Diamond',parts:'1.5',
      paths:[
          HingeLeft +
          RunRight,

          Stand.changeBeats(1.5) +
          FlipLeft
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',parts:'1.5',
      paths:[
          HingeRight +
          FlipLeft,

          Stand.changeBeats(1.5) +
          RunRight,

          HingeRight +
          FlipLeft,

          Stand.changeBeats(1.5) +
          RunRight
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',parts:'1.5',
      paths:[
          HingeLeft +
          RunRight,

          Stand.changeBeats(1.5) +
          FlipLeft,

          HingeLeft +
          RunRight,

          Stand.changeBeats(1.5) +
          FlipLeft
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Diamonds 3',parts:'1.5',
      paths:[
          HingeRight +
          FlipLeft,

          Stand.changeBeats(1.5) +
          RunRight,

          HingeRight +
          SwingLeft,

          Stand.changeBeats(1.5) +
          SwingLeft
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Diamonds 4',parts:'1.5',
      paths:[
          HingeRight +
          SwingLeft,

          Stand.changeBeats(1.5) +
          SwingLeft,

          HingeRight +
          FlipLeft,

          Stand.changeBeats(1.5) +
          SwingRight
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Diamonds 5',parts:'1.5',
      paths:[
          HingeLeft +
          RunRight,

          Stand.changeBeats(1.5) +
          SwingRight,

          HingeLeft +
          SwingRight,

          Stand.changeBeats(1.5) +
          FlipLeft
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Diamonds 6',parts:'1.5',
      paths:[
          HingeLeft +
          SwingRight,

          Stand.changeBeats(1.5) +
          FlipLeft,

          HingeLeft +
          RunRight,

          Stand.changeBeats(1.5) +
          SwingRight
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Right-Hand Point-to-Point Diamonds',parts:'1.5',
      paths:[
          HingeRight.scale(0.75,1.0) +
          FlipLeft.scale(1.0,0.75),

          Stand.changeBeats(1.5).skew(0.0,0.25) +
          RunRight.scale(1.0,0.75),

          HingeRight.scale(0.75,1.0) +
          FlipLeft.scale(1.0,0.75),

          Stand.changeBeats(1.5) +
          RunRight.scale(1.0,0.75)
      ]),

    AnimatedCall('Any Hand Quarter Thru',
      formation:Formations.DiamondsLHPTPGirlPoints,
      from:'Left-Hand Point-to-Point Diamonds',parts:'1.5',
      paths:[
          HingeLeft.scale(0.75,1.0) +
          RunRight.scale(1.0,0.75),

          Stand.changeBeats(1.5).skew(0.0,-0.25) +
          FlipLeft.scale(1.0,0.75),

          HingeLeft.scale(0.75,1.0) +
          RunRight.scale(1.0,0.75),

          Stand.changeBeats(1.5) +
          FlipLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',parts:'4.5',
      paths:[
          CastLeft +
          RunRight,

          CastLeft,

          CastRight,

          CastRight +
          FlipLeft
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',parts:'4.5',
      paths:[
          CastRight,

          CastRight +
          FlipLeft,

          CastLeft +
          RunRight,

          CastLeft
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns, Right-Hand Centers',parts:'4.5',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          FlipLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          RunRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns, Left-Hand Centers',parts:'4.5',
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          FlipLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          RunRight.scale(0.75,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',parts:'4.5',
      paths:[
          Stand.changeBeats(4.5) +
          RunRight,

          CastRight +
          FlipLeft
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.DiamondLHBoysCenter,
      from:'Left-Hand Diamond',parts:'4.5',
      paths:[
          CastLeft +
          RunRight,

          Stand.changeBeats(4.5) +
          FlipLeft
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Diamonds',parts:'4.5',
      paths:[
          CastRight +
          FlipLeft,

          Stand.changeBeats(4.5) +
          RunRight,

          CastRight +
          FlipLeft,

          Stand.changeBeats(4.5) +
          RunRight
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Diamonds',parts:'4.5',
      paths:[
          CastLeft +
          RunRight,

          Stand.changeBeats(4.5) +
          FlipLeft,

          CastLeft +
          RunRight,

          Stand.changeBeats(4.5) +
          FlipLeft
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Diamonds 3',parts:'4.5',
      paths:[
          CastRight +
          SwingLeft,

          Stand.changeBeats(4.5) +
          RunRight,

          CastRight +
          FlipLeft,

          Stand.changeBeats(4.5) +
          SwingLeft
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Diamonds 4',parts:'4.5',
      paths:[
          CastRight +
          FlipLeft,

          Stand.changeBeats(4.5) +
          SwingLeft,

          CastRight +
          SwingLeft,

          Stand.changeBeats(4.5) +
          SwingRight
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:90),
  ]),
      from:'Diamonds 5',parts:'4.5',
      paths:[
          CastLeft +
          SwingRight,

          Stand.changeBeats(4.5) +
          SwingRight,

          CastLeft +
          RunRight,

          Stand.changeBeats(4.5) +
          FlipLeft
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:-2,angle:270),
  ]),
      from:'Diamonds 6',parts:'4.5',
      paths:[
          CastLeft +
          RunRight,

          Stand.changeBeats(4.5) +
          FlipLeft,

          CastLeft +
          SwingRight,

          Stand.changeBeats(4.5) +
          SwingRight
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Right-Hand Point-to-Point Diamonds',parts:'4.5',
      paths:[
          HingeRight.scale(0.75,1.0) +
          SwingRight.scale(0.75,0.75) +
          FlipLeft.scale(1.0,0.75),

          Stand.changeBeats(4.5).skew(0.0,0.25) +
          RunRight.scale(1.0,0.75),

          HingeRight.scale(0.75,1.0) +
          SwingRight.scale(0.75,0.75) +
          FlipLeft.scale(1.0,0.75),

          Stand.changeBeats(4.5) +
          RunRight.scale(1.0,0.75)
      ]),

    AnimatedCall('Any Hand 3/4 Thru',
      formation:Formations.DiamondsLHPTPGirlPoints,
      from:'Left-Hand Point-to-Point Diamonds',parts:'4.5',
      paths:[
          HingeLeft.scale(0.75,1.0) +
          SwingLeft.scale(0.75,0.75) +
          RunRight.scale(1.0,0.75),

          Stand.changeBeats(4.5).skew(0.0,-0.25) +
          FlipLeft.scale(1.0,0.75),

          HingeLeft.scale(0.75,1.0) +
          SwingLeft.scale(0.75,0.75) +
          RunRight.scale(1.0,0.75),

          Stand.changeBeats(4.5) +
          FlipLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Any Hand Grand Quarter Thru',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns Right-Hand Centers',parts:'1.5',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(0.75,0.5),

          HingeRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Any Hand Grand Quarter Thru',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns Left-Hand Centers',parts:'1.5',
      paths:[
          HingeRight.scale(0.5,1.0),

          HingeLeft.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          RunRight.scale(0.75,0.5),

          HingeRight.scale(0.5,1.0) +
          FlipLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Any Hand Grand 3/4 Thru',
      formation:Formations.MagicColumnRH,
      from:'Magic Columns, Right-Hand Centers',parts:'4.5',
      paths:[
          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          FlipLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          RunRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Any Hand Grand 3/4 Thru',
      formation:Formations.MagicColumnLH,
      from:'Magic Columns, Left-Hand Centers',parts:'4.5',
      paths:[
          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5) +
          FlipLeft.scale(0.5,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          RunRight.scale(0.75,0.5),

          HingeLeft.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5),

          HingeRight.scale(0.5,1.0) +
          SwingRight.scale(0.5,0.5)
      ]),
    a2.Remake.where((tam) =>
      tam.title == 'Any Hand Remake').first.xref(title: 'Any Hand Remake').xref(group: 'Any Hand (A-2)'),
    c1.SwingTheFractions.where((tam) =>
      tam.title == 'Any Hand Swing the Fractions' && tam.from == 'Inverted Line Ends Facing In').first.xref(title: 'Any Hand Swing the Fractions').xref(group: 'Any Hand (C-1)'),
  ];

