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

  final List<AnimatedCall> Trade = [

    AnimatedCall('Boys Trade',
      formation:Formations.WaveRHBoysCenter,
      from:'Right-Hand Wave, Boys Center',difficulty: 1,notForSequencer: true,
      paths:[
          SwingLeft.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave, Boys End',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.WaveLHBoysCenter,
      from:'Left-Hand Wave, Boys Center',difficulty: 1,notForSequencer: true,
      paths:[
          SwingRight.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave, Boys End',difficulty: 1,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          SwingLeft.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          RunRight.scale(2.0,2.0),

          Path(),

          RunLeft.scale(1.0,2.0),

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.scale(1.0,2.0),

          Path(),

          RunRight.scale(2.0,2.0)
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path(),

          Path(),

          RunRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.OceanWavesRHGBBG,
      from:'Waves, Boys in Center',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Boys Trade',
      formation:Formations.OceanWavesRHGBGB,
      from:'Waves, Boys Facing Out',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.scale(1.0,2.0),

          Path(),

          RunRight.scale(2.0,2.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave, Girls Center',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft.changeBeats(4)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.WaveRHBoysCenter,
      from:'Right-Hand Wave, Girls End',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave, Girls Center',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.WaveLHBoysCenter,
      from:'Left-Hand Wave, Girls End',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight.changeBeats(4)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          Path(),

          RunRight.scale(2.0,2.0),

          Path(),

          RunLeft.scale(1.0,2.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,notForSequencer: true,
      paths:[
          RunLeft.scale(1.0,2.0),

          Path(),

          RunRight.scale(2.0,2.0),

          Path()
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight,

          SwingRight,

          Path()
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 1,notForSequencer: true,
      paths:[
          RunLeft.changeBeats(4).scale(1.5,3.0),

          Path(),

          Path(),

          RunLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Girls Trade',
      formation:Formations.OceanWavesRHBGBG,
      from:'Waves, Girls Facing Out',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          RunLeft.scale(1.0,2.0),

          Path(),

          RunRight.scale(2.0,2.0)
      ]),

    AnimatedCall('Centers Trade',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft
      ]),

    AnimatedCall('Centers Trade',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight
      ]),

    AnimatedCall('Centers Trade',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingRight.changeBeats(4)
      ]),

    AnimatedCall('Centers Trade',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 1,notForSequencer: true,
      paths:[
          SwingLeft.changeBeats(4),

          Path()
      ]),

    AnimatedCall('Centers Trade',
      formation:Formations.NormalLines,
      from:'Lines',difficulty: 2,notForSequencer: true,
      paths:[
          Path(),

          RunRight,

          FlipLeft,

          Path()
      ]),

    AnimatedCall('Centers Trade',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:180),
  ]),
      from:'Lines Facing Out',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          FlipLeft,

          RunRight,

          Path()
      ]),

    AnimatedCall('Centers Trade',
      formation:Formations.OceanWavesRHBGBG,
      from:'Waves',difficulty: 1,notForSequencer: true,
      paths:[
          Path(),

          SwingLeft,

          SwingLeft,

          Path()
      ]),

    AnimatedCall('Centers Trade',
      formation:Formations.EightChainThru,
      from:'Eight Chain Thru',difficulty: 2,notForSequencer: true,
      paths:[
          Path(),

          Path(),

          RunRight,

          FlipLeft
      ]),

    AnimatedCall('Trade',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          SwingRight,

          SwingRight,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Trade',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',difficulty: 1,notForSequencer: true,
      paths:[
          SwingLeft,

          SwingLeft,

          SwingLeft,

          SwingLeft
      ]),

    AnimatedCall('Trade',
      formation:Formations.InvertedLinesEndsFacingOut,
      from:'Inverted Lines',difficulty: 2,notForSequencer: true,
      paths:[
          SwingLeft,

          SwingLeft,

          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Partner Trade',
      formation:Formations.FacingCouplesCompact,
      from:'Facing Couples',difficulty: 2,notForSequencer: true,
      paths:[
          RunRight,

          FlipLeft
      ]),

    AnimatedCall('Partner Trade',
      formation:Formations.CouplesFacingOut,
      from:'Couples Facing Out',difficulty: 1,notForSequencer: true,
      paths:[
          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Partner Trade',
      formation:Formations.BoxRH,
      from:'Right-Hand Box',difficulty: 2,notForSequencer: true,
      paths:[
          SwingRight,

          SwingRight
      ]),

    AnimatedCall('Partner Trade',
      formation:Formations.BoxLH,
      from:'Left-Hand Box',difficulty: 2,notForSequencer: true,
      paths:[
          SwingLeft,

          SwingLeft
      ]),

    AnimatedCall('Partner Trade',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          FlipLeft,

          RunRight,

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Partner Trade',
      formation:Formations.CompletedDoublePassThru,
      from:'Completed Double Pass Thru',difficulty: 1,
      paths:[
          FlipLeft,

          RunRight,

          FlipLeft,

          RunRight
      ]),

    AnimatedCall('Ends Trade',
      formation:Formations.WaveRH,
      from:'Right-Hand Wave',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Ends Trade',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Ends Trade',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).scale(1.5,3.0),

          Path()
      ]),

    AnimatedCall('Ends Trade',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          Path(),

          RunLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Ends Trade',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 1,
      paths:[
          RunLeft.scale(1.0,3.0),

          Path(),

          Path(),

          RunRight.scale(2.0,3.0)
      ]),

    AnimatedCall('Ends Trade',
      formation:Formations.OceanWavesRHBGBG,
      from:'Waves',difficulty: 1,notForSequencer: true,
      paths:[
          RunRight.scale(1.0,3.0),

          Path(),

          Path(),

          RunRight.scale(1.0,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunRight.changeBeats(6).changehands(6).scale(1.5,3.0),

          RunRight.changeBeats(6).changehands(7).scale(0.5,1.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.CompactTwomFacedLineRH,
      from:'Compact Right-Hand Two-Faced Line',difficulty: 1,noDisplay: true,
      paths:[
          RunRight.changeBeats(6).changehands(6).scale(1.5,1.5),

          RunRight.changeBeats(6).changehands(7).scale(0.5,0.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',difficulty: 1,
      paths:[
          RunLeft.changeBeats(6).changehands(7).scale(0.5,1.0),

          RunLeft.changeBeats(6).changehands(5).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.CompactTwomFacedLineLH,
      from:'Compact Left-Hand Two-Faced Line',difficulty: 1,noDisplay: true,
      paths:[
          RunLeft.changeBeats(6).changehands(7).scale(0.5,0.5),

          RunLeft.changeBeats(6).changehands(5).scale(1.5,1.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.LinesFacingOut,
      from:'Lines Facing Out',difficulty: 2,
      paths:[
          RunLeft.changeBeats(6).changehands(5).scale(1.0,3.0),

          FlipLeft.changeBeats(6).changehands(6),

          RunRight.changeBeats(6).changehands(5).scale(2.0,1.0),

          RunRight.changeBeats(6).changehands(6).scale(3.0,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.NormalLines,
      from:'Lines Facing In',difficulty: 3,
      paths:[
          RunRight.changeBeats(6).changehands(6).scale(1.5,3.0),

          RunRight.changeBeats(6).changehands(5).scale(1.0,1.0),

          FlipLeft.changeBeats(6).changehands(6),

          RunLeft.changeBeats(6).changehands(5).scale(0.5,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          RunRight.changeBeats(6).changehands(6).scale(1.5,3.0),

          RunRight.changeBeats(6).changehands(7).scale(0.5,1.0),

          RunRight.changeBeats(6).changehands(7).scale(0.5,1.0),

          RunRight.changeBeats(6).changehands(6).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',difficulty: 1,
      paths:[
          RunLeft.changeBeats(6).changehands(5).scale(1.5,3.0),

          RunLeft.changeBeats(6).changehands(7).scale(0.5,1.0),

          RunLeft.changeBeats(6).changehands(7).scale(0.5,1.0),

          RunLeft.changeBeats(6).changehands(5).scale(1.5,3.0)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Right-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          RunRight.changeBeats(6).changehands(6).scale(1.5,1.5),

          RunRight.changeBeats(6).changehands(7).scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(7).scale(0.5,0.5),

          RunRight.changeBeats(6).changehands(6).scale(1.5,1.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Two-Faced Tidal Line',difficulty: 2,
      paths:[
          RunLeft.changeBeats(6).changehands(5).scale(1.5,1.5),

          RunLeft.changeBeats(6).changehands(7).scale(0.5,0.5),

          RunLeft.changeBeats(6).changehands(7).scale(0.5,0.5),

          RunLeft.changeBeats(6).changehands(5).scale(1.5,1.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.TidalLineRH,
      from:'Right-Hand Tidal Line',difficulty: 3,
      paths:[
          RunRight.changeBeats(6).changehands(6).scale(3.0,1.5),

          RunRight.changeBeats(6).changehands(5).scale(2.0,0.5),

          FlipLeft.changeBeats(6).changehands(6).scale(1.0,0.5),

          RunLeft.changeBeats(6).changehands(5).scale(1.0,1.5)
      ]),

    AnimatedCall('Couples Trade',
      formation:Formations.TidalLineLH,
      from:'Left-Hand Tidal Line',difficulty: 3,
      paths:[
          FlipLeft.changeBeats(6).changehands(6).scale(1.0,0.5),

          RunLeft.changeBeats(6).changehands(5).scale(1.0,1.5),

          RunRight.changeBeats(6).changehands(6).scale(3.0,1.5),

          RunRight.changeBeats(6).changehands(5).scale(2.0,0.5)
      ]),
  ];

