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

  final List<AnimatedCall> StepAndSlide = [

    AnimatedCall('Step and Slide',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:90),
  ]),
      from:'Right-Hand Two-Faced Line',
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
  ]),
      from:'Lines Facing Out',
      paths:[
          DodgeLeft.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(2).changehands(1),

          Forward.changeBeats(2).changehands(2),

          DodgeRight.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.NormalLines,
      from:'Lines Facing In',
      paths:[
          DodgeRight.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(2).changehands(2),

          Forward.changeBeats(2).changehands(1),

          DodgeLeft.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines, Ends Facing In',
      paths:[
          ExtendRight.changeBeats(4).scale(1.0,2.0),

          Forward.changeBeats(2).changehands(1),

          Forward.changeBeats(2).changehands(2),

          ExtendLeft.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines, Ends Facing Out',
      paths:[
          ExtendLeft.changeBeats(4).scale(1.0,2.0),

          Forward.changeBeats(2).changehands(1),

          Forward.changeBeats(2).changehands(2),

          ExtendRight.changeBeats(4).scale(1.0,2.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          Forward_2.changeBeats(4).scale(0.67,1.0),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.n3and_1lines1,
      from:'3 and 1 Lines #1',noDisplay: true,
      paths:[
          DodgeLeft.changeBeats(4).skew(1.0,0.0),

          Forward.changeBeats(4).changehands(2),

          Forward.changeBeats(4).changehands(1),

          DodgeLeft.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.n3and_1lines2,
      from:'3 and 1 Lines #2',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.n3and_1lines3,
      from:'3 and 1 Lines #3',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeLeft.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.n3and_1lines4,
      from:'3 and 1 Lines #4',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(4).changehands(2),

          Forward.changeBeats(4).changehands(1),

          DodgeRight.changeBeats(4).skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',noDisplay: true,
      paths:[
          DodgeRight.changeBeats(4).skew(1.0,0.0),

          Forward.changeBeats(4).changehands(1),

          Forward.changeBeats(4).changehands(2),

          DodgeRight.changeBeats(4).skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.n3and_1lines6,
      from:'3 and 1 Lines #6',noDisplay: true,
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.n3and_1lines7,
      from:'3 and 1 Lines #7',noDisplay: true,
      paths:[
          DodgeLeft.changeBeats(4),

          Forward_2.changeBeats(4),

          Forward_2.changeBeats(4),

          DodgeRight.changeBeats(4)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',noDisplay: true,
      paths:[
          DodgeLeft.changeBeats(4).skew(-1.0,0.0),

          Forward.changeBeats(4).changehands(1),

          Forward.changeBeats(4).changehands(2),

          DodgeLeft.changeBeats(4).skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.TidalLineRH,
      from:'Tidal Line',
      paths:[
          DodgeRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,0.5),

          ExtendRight.changeBeats(3).changehands(1).scale(3.0,0.5),

          DodgeLeft.skew(0.0,-1.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.TidalLineLH,
      from:'Tidal Line LH',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(3).changehands(1).scale(3.0,0.5),

          DodgeLeft.skew(0.0,-1.5),

          DodgeRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,0.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Tidal Two-Faced Line',
      paths:[
          DodgeRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5),

          DodgeRight.skew(0.0,1.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Tidal Two-Faced Line',noDisplay: true,
      paths:[
          DodgeLeft.skew(0.0,-1.5),

          ExtendRight.changeBeats(3).scale(3.0,0.5),

          ExtendRight.changeBeats(3).scale(3.0,0.5),

          DodgeLeft.skew(0.0,-1.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.TidalInvertedLineRH,
      from:'Tidal Inverted Line',
      paths:[
          DodgeRight.skew(0.0,1.5),

          ExtendRight.changeBeats(3).changehands(1).scale(3.0,0.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,0.5),

          DodgeLeft.skew(0.0,-1.5)
      ]),

    AnimatedCall('Step and Slide',
      formation:Formations.TidalInvertedLineLH,
      from:'Tidal Inverted Line LH',noDisplay: true,
      paths:[
          DodgeLeft.skew(0.0,-1.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,0.5),

          ExtendRight.changeBeats(3).changehands(1).scale(3.0,0.5),

          DodgeRight.skew(0.0,1.5)
      ]),
  ];

