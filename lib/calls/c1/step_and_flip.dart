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

  final List<AnimatedCall> StepAndFlip = [ 

    AnimatedCall('Step and Flip',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',
      paths:[
          FlipLeft.skew(-1.0,0.0),

          Forward.changehands(1),

          Forward.changehands(2),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.InvertedLinesEndsFacingIn,
      from:'Inverted Lines Ends Facing In',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward.changehands(1),

          Forward.changehands(2),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines Ends Facing Out',
      paths:[
          FlipLeft.skew(1.0,0.0),

          Forward.changehands(1),

          Forward.changehands(2),

          FlipRight.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.n3and_1lines5,
      from:'3 and 1 Lines #5',
      paths:[
          FlipRight.skew(1.0,0.0),

          Forward.changehands(1),

          Forward.changehands(2),

          FlipRight.skew(-1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:1,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:2,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:2,angle:270),
  ]),
      from:'3 and 1 Lines #7',
      paths:[
          Forward.changeBeats(3).scale(1.5,1.0),

          FlipLeft,

          FlipRight,

          Forward.changeBeats(3).scale(1.5,1.0)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.n3and_1lines8,
      from:'3 and 1 Lines #8',
      paths:[
          FlipLeft.skew(-1.0,0.0),

          Forward.changehands(1),

          Forward.changehands(2),

          FlipLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formation('Tidal Line RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:0),
  ]),
      from:'Tidal Line',
      paths:[
          FlipRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,0.5),

          FlipLeft.skew(0.0,-1.5),

          ExtendRight.changeBeats(3).changehands(1).scale(3.0,0.5)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.TidalLineLH,
      from:'Tidal Line LH',noDisplay: true,
      paths:[
          ExtendRight.changeBeats(3).changehands(1).scale(3.0,0.5),

          FlipLeft.skew(0.0,-1.5),

          FlipRight.skew(0.0,1.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,0.5)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.TidalInvertedLineRH,
      from:'Tidal Inverted Line',
      paths:[
          FlipRight.skew(0.0,1.5),

          ExtendRight.changeBeats(3).changehands(1).scale(3.0,0.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,0.5),

          FlipLeft.skew(0.0,-1.5)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.TidalInvertedLineLH,
      from:'Tidal Inverted Line LH',noDisplay: true,
      paths:[
          FlipLeft.skew(0.0,-1.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,0.5),

          ExtendRight.changeBeats(3).changehands(1).scale(3.0,0.5),

          FlipRight.skew(0.0,1.5)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          FlipRight,

          Forward_2
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          Forward_2,

          FlipLeft
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          FlipRight,

          Forward_2.scale(0.67,1.0),

          Forward_2.scale(0.67,1.0),

          FlipRight
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          FlipLeft,

          Forward_2.scale(0.67,1.0),

          Forward_2.scale(0.67,1.0),

          FlipLeft
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
          FlipRight.scale(1.0,0.25),

          Forward_2.skew(0.0,0.5),

          Forward_2.skew(0.0,0.5),

          FlipRight.scale(1.0,0.25)
      ]),

    AnimatedCall('Step and Flip',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          FlipLeft.scale(1.0,0.25),

          Forward_2.skew(0.0,-0.5),

          Forward_2.skew(0.0,-0.5),

          FlipLeft.scale(1.0,0.25)
      ]),

    AnimatedCall('Step and Flip and Roll',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',group:' ',
      paths:[
          FlipLeft.skew(-1.0,0.0) +
          QuarterLeft,

          Forward.changehands(1),

          Forward.changehands(2),

          FlipRight.skew(-1.0,0.0) +
          QuarterRight
      ]),

    AnimatedCall('As Couples Step and Flip',
      formation:Formation('Tidal Line RH', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:3.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:2.5,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:1.5,angle:0),
  ]),
      group:' ',
      paths:[
          SwingRight.scale(1.0,1.25),

          UmTurnRight.changehands(1).skew(0.0,0.5),

          ExtendLeft.changeBeats(3).changehands(1).scale(3.0,0.5),

          ExtendLeft.changeBeats(3).changehands(2).scale(3.0,1.5)
      ]),

    AnimatedCall('Stretch Step and Flip',
      formation:Formations.InvertedLinesEndsFacingIn,
      group:' ',
      paths:[
          Forward_2 +
          RunRight.skew(1.0,0.0),

          Forward.changehands(1),

          Forward.changehands(2),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          FlipLeft.scale(1.0,0.5).skew(1.0,0.0)
      ]),

    AnimatedCall('Tandem Step and Flip',
      formation:Formations.OceanWavesRHBGGB,
      group:' ',
      paths:[
          Forward_3 +
          RunRight,

          Forward_3,

          Forward_5,

          RunRight +
          Forward_3
      ]),
  ];

