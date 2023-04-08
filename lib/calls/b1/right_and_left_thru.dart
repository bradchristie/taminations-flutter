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

  final List<AnimatedCall> RightAndLeftThru = [ 

    AnimatedCall('Right and Left Thru',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',parts:'3',difficulty: 1,notForSequencer: true,
      paths:[
          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          BeauWheel.scale(0.67,1.0),

          PullLeft.changeBeats(1.5).scale(1.5,0.5) +
          ExtendRight.changeBeats(1.5).scale(1.5,0.5) +
          BelleWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Right and Left Thru',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',isGenderSpecific:true,parts:'2',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,2.0) +
          BeauWheel.scale(0.67,1.0),

          Forward_2 +
          BelleWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Right and Left Thru',
      formation:Formations.NormalLines,
      from:'Lines',isGenderSpecific:true,parts:'3',difficulty: 1,
      paths:[
          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Right and Left Thru',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',isGenderSpecific:true,parts:'2',difficulty: 1,
      paths:[
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Right and Left Thru',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',isGenderSpecific:true,parts:'2',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.scale(0.5,1.0),

          Forward.changeBeats(2) +
          BelleWheel.scale(0.67,1.0),

          Forward.changeBeats(2) +
          BelleWheel.scale(0.5,1.0),

          ExtendRight.changeBeats(2).scale(1.0,2.0) +
          BeauWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Right and Left Thru',
      formation:Formations.TidalWaveRHBGGB,
      from:'Tidal Wave',isGenderSpecific:true,parts:'2',difficulty: 1,
      paths:[
          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0),

          ExtendRight.changeBeats(2).scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0)
      ]),

    AnimatedCall('Heads Right and Left Thru and Back Away',
      formation:Formations.StaticSquare,
      isGenderSpecific:true,noDisplay: true,
      paths:[
          Forward +
          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0).skew(1.0,0.0),

          Forward +
          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0).skew(1.0,0.0),

          Path(),

          Path()
      ]),

    AnimatedCall('Sides Right and Left Thru and Back Away',
      formation:Formations.StaticSquare,
      isGenderSpecific:true,noDisplay: true,
      paths:[
          Path(),

          Path(),

          Forward +
          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0).skew(1.0,0.0),

          Forward +
          PullLeft.changeBeats(1.5).scale(2.0,0.5) +
          ExtendRight.changeBeats(1.5).scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0).skew(1.0,0.0)
      ]),

    AnimatedCall('Right and Left Thru and a Quarter More',
      formation:Formations.NormalLines,
      group:' ',isGenderSpecific:true,parts:'3',difficulty: 2,
      paths:[
          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0) +
          BackHingeRight,

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0) +
          HingeLeft,

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BeauWheel.scale(0.67,1.0) +
          BackHingeRight,

          PullLeft.scale(2.0,0.5) +
          ExtendRight.scale(2.0,0.5) +
          BelleWheel.scale(0.67,1.0) +
          HingeLeft
      ]),

    AnimatedCall('Right and Left Thru and a Quarter More',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',group:' ',isGenderSpecific:true,parts:'2',difficulty: 1,noDisplay: true,
      paths:[
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0) +
          BackHingeRight.scale(0.5,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0) +
          HingeLeft.scale(0.5,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.67,1.0) +
          BackHingeRight.scale(0.5,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.67,1.0) +
          HingeLeft.scale(0.5,1.0)
      ]),

    AnimatedCall('Centers Right and Left Thru, Full Turn',
      formation:Formations.DoublePassThru,
      group:' ',isGenderSpecific:true,parts:'3',difficulty: 2,
      paths:[
          Path(),

          Path(),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BackHingeRight.scale(0.5,1.0) +
          BeauWheel.scale(0.5,0.5) +
          BackHingeRight.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          HingeLeft.scale(0.5,1.0) +
          BelleWheel.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),
  ];

