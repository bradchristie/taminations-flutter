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
import '../../dancer_model.dart';
import '../../formation.dart';
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> ScootAndWeave = [

    AnimatedCall('Scoot and Weave',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',parts:'5.5',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(3.0,0.75),

          FlipRight +
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          HingeLeft
      ]),

    AnimatedCall('Scoot and Weave',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',parts:'5',
      paths:[
          FlipLeft +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          HingeRight,

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,0.75)
      ]),

    AnimatedCall('Scoot and Weave',
      formation:Formations.SingleQuarterTag,
      from:'Single Quarter Tag',parts:'5',
      paths:[
          ExtendLeft.changeBeats(2) +
          SwingRight +
          LeadRight,

          Forward_2 +
          SwingRight +
          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          HingeLeft
      ]),

    AnimatedCall('Scoot and Weave',
      formation:Formations.SingleLeftQuarterTag,
      from:'Single Left Quarter Tag',parts:'5',
      paths:[
          ExtendRight.changeBeats(2) +
          SwingLeft +
          LeadLeft,

          Forward_2 +
          SwingLeft +
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          HingeRight
      ]),

    AnimatedCall('Scoot and Weave',
      formation:Formations.OceanWavesRHBGBG,
      from:'Right-Hand Waves',parts:'5',
      paths:[
          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(3.0,0.75),

          FlipRight +
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          HingeLeft,

          ExtendRight.changeBeats(1.5).scale(2.0,0.25) +
          SwingRight.scale(0.75,0.75) +
          LeadRight.changeBeats(3).scale(3.0,0.75),

          FlipRight +
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(3).scale(2.0,2.0) +
          HingeLeft
      ]),

    AnimatedCall('Scoot and Weave',
      formation:Formations.OceanWavesLHBGBG,
      from:'Left-Hand Waves',parts:'5',
      paths:[
          FlipLeft +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          HingeRight,

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,0.75),

          FlipLeft +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(3).scale(2.0,2.0) +
          HingeRight,

          ExtendLeft.changeBeats(1.5).scale(2.0,0.25) +
          SwingLeft.scale(0.75,0.75) +
          LeadLeft.changeBeats(3).scale(3.0,0.75)
      ]),

    AnimatedCall('Scoot and Weave',
      formation:Formations.ColumnRHGBGB,
      from:'Right-Hand Columns',parts:'5',
      paths:[
          RunRight.scale(0.5,1.0) +
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(3).scale(1.0,1.5) +
          HingeLeft.scale(0.5,0.5),

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5),

          RunRight.scale(0.5,1.0) +
          Stand.changeBeats(2) +
          ExtendRight.changeBeats(3).scale(1.0,1.5) +
          HingeLeft.scale(0.5,0.5),

          ExtendRight.scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(2).scale(1.5,0.5)
      ]),

    AnimatedCall('Scoot and Weave',
      formation:Formations.ColumnLHGBGB,
      from:'Left-Hand Columns',parts:'5',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5),

          RunLeft.scale(0.5,1.0) +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(3).scale(1.0,1.5) +
          HingeRight.scale(0.5,0.5),

          ExtendLeft.scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(2).scale(1.5,0.5),

          RunLeft.scale(0.5,1.0) +
          Stand.changeBeats(2) +
          ExtendLeft.changeBeats(3).scale(1.0,1.5) +
          HingeRight.scale(0.5,0.5)
      ]),

    AnimatedCall('Scoot and Weave',
      formation:Formations.QuarterTag,
      from:'Quarter Tag',parts:'5',
      paths:[
          ExtendLeft.changeBeats(2).scale(1.0,2.0) +
          SwingRight +
          LeadRight,

          Forward.changeBeats(2) +
          SwingRight +
          LeadRight,

          Forward_2 +
          SwingRight +
          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75),

          Forward_2 +
          SwingRight +
          ExtendRight.changeBeats(2).scale(2.0,1.75) +
          HingeLeft.scale(1.0,0.75)
      ]),

    AnimatedCall('Scoot and Weave',
      formation:Formations.QuarterTagLH,
      from:'Left-Hand Quarter Tag',parts:'5',
      paths:[
          Forward.changeBeats(2) +
          SwingLeft +
          LeadLeft,

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          SwingLeft +
          LeadLeft,

          Forward_2 +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          HingeRight.scale(1.0,0.75),

          Forward_2 +
          SwingLeft +
          ExtendLeft.changeBeats(2).scale(2.0,1.75) +
          HingeRight.scale(1.0,0.75)
      ]),

    AnimatedCall('Scoot and Weave',
        from: 'Point-to-Point 1/4 Tag',
        formation: Formation('', [
          DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:90),
          DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:5,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:90),
        ]),
        paths: [
          ExtendLeft.changeBeats(1.5).scale(1,0.75) +
              SwingRight.scale(0.5,0.75) +
              LeadRight.changeBeats(1.5).scale(1.25,0.75),

          Forward.changeBeats(1.5).scale(1,1.0).skew(0.0,-0.25) +
              SwingRight.scale(0.5,0.75) +
              ExtendRight.scale(1, 1.25) +
              HingeLeft.scale(.7, .5),

          ExtendLeft.changeBeats(1.5).scale(1,0.75) +
              SwingRight.scale(0.5,0.75) +
              LeadRight.changeBeats(1.5).scale(1,0.75),

          Forward.changeBeats(1.5).scale(1,1.0).skew(0.0,-0.25) +
              SwingRight.scale(0.5,0.75) +
              ExtendRight.scale(1, 1.25) +
              HingeLeft.scale(.7, .5)
        ]),

    AnimatedCall('Scoot and Weave',
        from: 'Point-to-Point Left-Hand 1/4 Tag',
        formation: Formation('', [
          DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:90),
          DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:90),
          DancerModel.fromData(gender:Gender.BOY,x:0,y:5,angle:270),
          DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        ]),
        paths: [
          ExtendRight.changeBeats(1.5).scale(1,0.75) +
              SwingLeft.scale(0.5,0.75) +
              LeadLeft.changeBeats(1.5).scale(1.25,0.75),

          Forward.changeBeats(1.5).scale(1,1.0).skew(0.0,0.25) +
              SwingLeft.scale(0.5,0.75) +
              ExtendLeft.scale(1, 1.25) +
              HingeRight.scale(.7, .5),

          ExtendRight.changeBeats(1.5).scale(1,0.75) +
              SwingLeft.scale(0.5,0.75) +
              LeadLeft.changeBeats(1.5).scale(1,0.75),

          Forward.changeBeats(1.5).scale(1,1.0).skew(0.0,0.25) +
              SwingLeft.scale(0.5,0.75) +
              ExtendLeft.scale(1, 1.25) +
              HingeRight.scale(.7, .5)
        ]),


    AnimatedCall('As Couples Scoot and Weave',
      formation:Formations.TwomFacedLinesRH,
      from:'Two-Faced Lines',parts:'6',
      paths:[
          ExtendRight.changeBeats(2).changehands(2).scale(2.0,1.5) +
          SwingRight.scale(1.5,1.5) +
          Forward_2 +
          HingeRight.scale(1.5,1.5),

          ExtendRight.changeBeats(2).changehands(1).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          Forward_2 +
          HingeRight.scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(1).scale(0.75,0.75) +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          HingeLeft.scale(1.5,1.5),

          RunRight.changeBeats(6).changehands(2).scale(2.25,2.25) +
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          HingeLeft.scale(0.5,0.5)
      ]),

    AnimatedCall('All 8 Scoot and Weave',
      formation:Formations.StaticMiniWavesRH,
      from:'Squared Mini-Waves',parts:'7',
      paths:[
          Forward_3 +
          SwingRight +
          Forward_2 +
          LeadRight,

          RunRight.changeBeats(6) +
          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          HingeLeft,

          Forward_3 +
          SwingRight +
          Forward_2 +
          LeadRight,

          RunRight.changeBeats(6) +
          ExtendRight.changeBeats(4).scale(3.0,2.0) +
          HingeLeft
      ]),
  ];

