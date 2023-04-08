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
import '../a2/all_4_all_8.dart' as a2;

  final List<AnimatedCall> LockIt = [

    AnimatedCall('Lockit',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:0,angle:270),
  ]),
      from:'Right-Hand Wave',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.WaveLH,
      from:'Left-Hand Wave',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.TwomFacedLineRH,
      from:'Right-Hand Two-Faced Line',
      paths:[
          LeadRight.changeBeats(4).changehands(2).scale(3.0,3.0),

          HingeRight.changeBeats(4).changehands(3)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.TwomFacedLineLH,
      from:'Left-Hand Two-Faced Line',
      paths:[
          HingeLeft.changeBeats(4).changehands(3),

          LeadLeft.changeBeats(4).changehands(2).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondRH,
      from:'Right-Hand Diamond',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondLH,
      from:'Left-Hand Diamond',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondFacingRH,
      from:'Facing Diamond, Right-Hand Centers',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,3.0),

          HingeRight.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondFacing,
      from:'Facing Diamond, Left-Hand Centers',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,3.0),

          HingeLeft.changeBeats(4)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.OceanWavesRHBGGB,
      from:'Right-Hand Waves',
      paths:[
          LeadRight.changeBeats(4).scale(1.5,3.0),

          HingeLeft.changeBeats(4).scale(0.5,1.0),

          HingeLeft.changeBeats(4).scale(0.5,1.0),

          LeadRight.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.OceanWavesLHBGGB,
      from:'Left-Hand Waves',
      paths:[
          LeadLeft.changeBeats(4).scale(1.5,3.0),

          HingeRight.changeBeats(4).scale(0.5,1.0),

          HingeRight.changeBeats(4).scale(0.5,1.0),

          LeadLeft.changeBeats(4).scale(1.5,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.TwomFacedLinesRH,
      from:'Right-Hand Two-Faced Lines',
      paths:[
          LeadRight.changeBeats(4).changehands(6).scale(1.5,3.0),

          HingeRight.changeBeats(4).changehands(7).scale(0.5,1.0),

          HingeRight.changeBeats(4).changehands(7).scale(0.5,1.0),

          LeadRight.changeBeats(4).changehands(6).scale(1.5,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.TwomFacedLinesLH,
      from:'Left-Hand Two-Faced Lines',
      paths:[
          LeadLeft.changeBeats(4).changehands(5).scale(1.5,3.0),

          HingeLeft.changeBeats(4).changehands(7).scale(0.5,1.0),

          HingeLeft.changeBeats(4).changehands(7).scale(0.5,1.0),

          LeadLeft.changeBeats(4).changehands(5).scale(1.5,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.TidalWaveRHBGGB,
      from:'Right-Hand Tidal Wave',
      paths:[
          LeadRight.changeBeats(4).scale(3.0,1.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5),

          HingeLeft.changeBeats(4).scale(1.0,0.5),

          LeadRight.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.TidalWaveLHBGGB,
      from:'Left-Hand Tidal Wave',
      paths:[
          LeadLeft.changeBeats(4).scale(3.0,1.5),

          HingeRight.changeBeats(4).scale(1.0,0.5),

          HingeRight.changeBeats(4).scale(1.0,0.5),

          LeadLeft.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Right-Hand Two-Faced Tidal Line',
      paths:[
          LeadRight.changeBeats(4).changehands(6).scale(3.0,1.5),

          HingeRight.changeBeats(4).changehands(7).scale(1.0,0.5),

          HingeRight.changeBeats(4).changehands(7).scale(1.0,0.5),

          LeadRight.changeBeats(4).changehands(6).scale(3.0,1.5)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.TwomFacedTidalLineLH,
      from:'Left-Hand Two-Faced Tidal Line',
      paths:[
          LeadLeft.changeBeats(4).changehands(5).scale(3.0,1.5),

          HingeLeft.changeBeats(4).changehands(7).scale(1.0,0.5),

          HingeLeft.changeBeats(4).changehands(7).scale(1.0,0.5),

          LeadLeft.changeBeats(4).changehands(5).scale(3.0,1.5)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondsRHGirlPoints,
      from:'Right-Hand Twin Diamonds',
      paths:[
          QuarterRight.changeBeats(4).changehands(2).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(1.0,3.0),

          QuarterRight.changeBeats(4).changehands(2).skew(1.0,-2.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondsLHGirlPoints,
      from:'Left-Hand Twin Diamonds',
      paths:[
          QuarterLeft.changeBeats(4).changehands(1).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          QuarterLeft.changeBeats(4).changehands(1).skew(1.0,2.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondsFacingGirlPoints,
      from:'Facing Diamonds, Right-Hand Centers',
      paths:[
          QuarterRight.changeBeats(4).changehands(2).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0),

          QuarterRight.changeBeats(4).changehands(2).skew(1.0,-2.0),

          LeadLeft.changeBeats(4).scale(1.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondsFacingLHGirlPoints,
      from:'Facing Diamonds, Left-Hand Centers',
      paths:[
          QuarterLeft.changeBeats(4).changehands(1).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(1.0,3.0),

          QuarterLeft.changeBeats(4).changehands(1).skew(1.0,2.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondsRHPTPGirlPoints,
      from:'Right-Hand Point-to-Point Diamonds',
      paths:[
          HingeRight.changeBeats(4).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          HingeRight.changeBeats(4).skew(-1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondsLHPTPGirlPoints,
      from:'Left-Hand Point-to-Point Diamonds',
      paths:[
          HingeLeft.changeBeats(4).skew(-1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0),

          HingeLeft.changeBeats(4).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondsFacingPTP,
      from:'Facing PTP Diamonds, Right-Hand Centers',
      paths:[
          HingeRight.changeBeats(4).skew(1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,1.0),

          HingeRight.changeBeats(4).skew(-1.0,0.0),

          LeadLeft.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('Lockit',
      formation:Formations.DiamondsFacingLHPTP,
      from:'Facing PTP Diamonds, Left-Hand Centers',
      paths:[
          HingeLeft.changeBeats(4).skew(-1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,1.0),

          HingeLeft.changeBeats(4).skew(1.0,0.0),

          LeadRight.changeBeats(4).scale(3.0,3.0)
      ]),

    AnimatedCall('As Couples Lockit',
      formation:Formations.TwomFacedTidalLineRH,
      from:'Two-Faced Tidal Line',group:' ',
      paths:[
          HingeRight.changeBeats(4).scale(3.5,3.5),

          HingeRight.changeBeats(4).scale(2.5,2.5),

          HingeLeft.changeBeats(4).scale(1.5,1.5),

          HingeLeft.changeBeats(4).scale(0.5,0.5)
      ]),
    a2.All4All8.where((tam) =>
      tam.title == 'All 8 Lockit').first.xref(title: 'All 8 Lockit').xref(group: ' '),
  ];

