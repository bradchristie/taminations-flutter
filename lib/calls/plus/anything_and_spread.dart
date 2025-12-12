/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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
import '../../moves.dart';
import '../plus/follow_your_neighbor.dart' as plus;

final Path pathForAll8 =
Path([
  Movement.fromData(beats: 1.5, hands: Hands.NONE, cx1: 1.8, cy1: -0.5, cx2: 2.2, cy2: -0.2, x2: 1, y2: -1, cx3: 0.55, cx4: 1, cy4: -0.45, x4: 1, y4: -1  )],'pathForAll8');

final List<AnimatedCall> AnythingAndSpread = [

    AnimatedCall('Acey Deucey and Spread',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Waves',group:' ',difficulty: 2,
      paths:[
          ExtendRight.changeBeats(4).scale(4.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunLeft.changeBeats(4).scale(1.0,2.0),

          RunRight.changeBeats(4).scale(2.0,2.0)
      ]),

    AnimatedCall('All 8 Spin the Top and Spread',
        formation:Formation('Thar LH Boys'),
        from:'Wrong Way Thar',parts:'3',difficulty: 1, group: ' ',
        paths:[
          SwingRight +
              pathForAll8.changeBeats(4.5).scale(1,3),

          SwingRight +
              SwingLeft +
              LeadLeft.scale(3,1),

          SwingRight +
              pathForAll8.changeBeats(4.5).scale(1,3),

          SwingRight +
              SwingLeft +
              LeadLeft.scale(3,1),
        ]),

  AnimatedCall('Bend the Line and Spread (from Facing Lines)',
      formation:Formation('Normal Lines'),
      from:'Facing Lines',group:' ',difficulty: 2,
      paths:[
        HingeRight +
            SashayRight,

        BackHingeLeft +
            BackSashayLeft,

        BackHingeRight +
            BackSashayRight,

        HingeLeft +
            SashayLeft
      ]),

  AnimatedCall('Bend the Line and Spread (from Lines Facing Out)',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',group:' ',difficulty: 2,
      paths:[
        HingeLeft +
            SashayLeft,

        BackHingeRight +
            BackSashayRight,

        BackHingeLeft +
            BackSashayLeft,

        HingeRight +
            SashayRight
      ]),

    AnimatedCall('Cloverleaf and Spread',
      formation:Formation('Completed Double Pass Thru'),
      from:'Completed Double Pass Thru',group:' ',difficulty: 2,
      paths:[
          LeadRight +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,1.5) +
          DodgeRight.changeBeats(3),

          LeadLeft +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          DodgeLeft.changeBeats(3),

          Forward_2 +
          LeadRight +
          LeadRight.scale(1.5,1.5) +
          LeadRight.scale(1.5,0.5) +
          Forward,

          Forward_2 +
          LeadLeft +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,0.5) +
          Forward
      ]),

    AnimatedCall('Coordinate and Spread',
      formation:Formation('Column RH GBGB'),
      from:'Right-Hand Columns',group:' ',difficulty: 3,
      paths:[
          FlipRight.changeBeats(2) +
          Forward +
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          Forward.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(2.5).scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(1.0,1.5),

          Forward.changeBeats(3).scale(3.0,1.0) +
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(3.0,0.5),

          Forward.changeBeats(3).scale(3.0,1.0) +
          HingeRight.scale(0.5,1.0) +
          LeadRight.changeBeats(3).scale(1.0,2.5)
      ]),

    AnimatedCall('Cut the Diamond and Spread',
      formation:Formation('Diamonds Facing Girl Points'),
      from:'Facing Diamonds',group:' ',difficulty: 2,
      paths:[
          Forward_2 +
              LeadRight +
              DodgeRight,

          DodgeLeft +
              HingeLeft +
              LeadLeft.changeBeats(2.5).scale(3.0,1.0),

          Forward_2 +
              LeadRight +
              DodgeRight,

          DodgeLeft +
              HingeLeft +
              LeadLeft.changeBeats(2.5).scale(3.0,1.0)
      ]),

    AnimatedCall('Fan the Top and Spread (From Tidal Wave)',
      formation:Formation('Tidal Wave RH BGGB'),
      from:'Right-Hand Tidal Wave',group:' ',difficulty: 2,
      paths:[
          LeadRight.changeBeats(6).scale(1.0,1.5),

          SwingLeft.changeBeats(2).scale(0.5,0.5) +
          LeadLeft.changeBeats(4).scale(3.0,0.5),

          SwingLeft.changeBeats(2).scale(0.5,0.5) +
          LeadLeft.changeBeats(4).scale(3.0,0.5),

          LeadRight.changeBeats(6).scale(1.0,1.5)
      ]),

  AnimatedCall('Fan the Top and Spread (From Two-Faced Lines)',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Line',group:' ',difficulty: 2,
      paths:[
        LeadRight.changeBeats(3.5).scale(.5, 1) +
            Forward_2,

        SwingRight +
            LeadRight.scale(1.5,1).changeBeats(2),

        SwingRight +
            LeadRight.scale(1.5,1).changeBeats(2),

        LeadRight.changeBeats(3.5).scale(.5, 1) +
            Forward_2,
      ]),

    AnimatedCall('Ferris Wheel and Spread',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Handed Two-Faced Lines',group:' ',difficulty: 1,
      paths:[
          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.5).skew(3.5,0.0) +
          DodgeLeft.changeBeats(1).scale(1.0,0.5).skew(-0.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(3.5,1.0) +
          DodgeRight.changeBeats(1).scale(1.0,0.5).skew(-0.5,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.GRIPLEFT).skew(1.0,0.0) +
          Forward.changehands(Hands.LEFT),

          RunRight.changeBeats(4).changehands(Hands.GRIPRIGHT).scale(2.0,2.0).skew(1.0,0.0) +
          Forward.changehands(Hands.RIGHT)
      ]),

    plus.FollowYourNeighbor.where((tam) =>
      tam.title == 'Follow Your Neighbor and Spread' && tam.from == 'Ocean Waves').first.xref(title: 'Follow Your Neighbor and Spread').xref(group: ' ').xref(difficulty: 1),

  AnimatedCall('Follow Your Neighbor and 1/2 Spread',
      formation:Formation('Box RH Compact'),
      from:'Right-Hand Box',difficulty: 1, group: ' ',
      paths:[
        Forward_1p5.changeBeats(1.5).skew(0.0,-0.25) +
            SwingRight.scale(0.75,0.75) +
            QuarterRight.changeBeats(2.5).skew(1, .75),

        LeadRight.changeBeats(3).scale(1.5, 1) +
            FlipRight.changeBeats(4).skew(1.5, 0)
      ]),

    AnimatedCall('Grand Swing Thru and Spread',
        formation:Formation('Tidal Wave RH BGGB'),
        from:'Right-Hand Tidal Wave',group:' ',difficulty: 2,
        paths:[
          SwingRight.scale(.5,.5) +
              RunLeft,

          SwingRight.scale(.5,.5) +
              DodgeRight.scale(1,.5),

          SwingRight.scale(.5,.5) +
              DodgeRight.scale(1,.5),

          SwingRight.scale(.5,.5) +
              RunLeft,
        ]),


    AnimatedCall('Heads Star Thru and Spread',
      formation:Formation('Static Square'),
      group:' ',difficulty: 1,
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          QuarterRight.changeBeats(3).skew(3.0,0.5),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          QuarterLeft.changeBeats(3).skew(3.0,-1.5),

          StandRight.changeBeats(4) +
          Forward.changeBeats(2).changehands(Hands.RIGHT),

          StandLeft.changeBeats(4) +
          Forward.changeBeats(2).changehands(Hands.LEFT)
      ]),

    AnimatedCall('Heads Touch 1/4 and Spread',
      formation:Formation('Static Square'),
      group:' ',difficulty: 2,
      paths:[
          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          Stand.changeBeats(2).skew(-1.0,2.0),

          ExtendLeft.changeBeats(3).scale(3.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(2).scale(1.0,2.0),

          StandRight.changeBeats(4.5) +
          Forward.changeBeats(2).changehands(Hands.RIGHT),

          StandLeft.changeBeats(4.5) +
          Forward.changeBeats(2).changehands(Hands.LEFT)
      ]),

  /*  Just too weird
    AnimatedCall('Hinge and Spread',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',group:' ',difficulty: 3,
      taminator: '''
      This looks like a nice call, but I've never seen it used,
      and doubt many dancers would know how to do it.
    ''',
      paths:[
          QuarterRight.changeBeats(2).skew(-1.0,-1.0),

          QuarterRight.changeBeats(2).skew(-1.0,-1.0),

          QuarterRight.changeBeats(2).skew(-1.0,-1.0),

          QuarterRight.changeBeats(2).skew(-1.0,-1.0)
      ]),
*/
    AnimatedCall('Pass the Ocean and Spread',
      formation:Formation('Normal Lines'),
      from:'Lines',group:' ',difficulty: 3,
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadRight.changeBeats(2).scale(1.0,1.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          LeadLeft.changeBeats(3).scale(3.0,0.5)
      ]),

    AnimatedCall('Pass to the Center and Spread',
      formation:Formation('Pass Thru'),
      from:'Eight Chain Thru',group:' ',difficulty: 2,
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          SashayLeft.changeBeats(4).scale(1.0,0.75),

          ExtendLeft.scale(1.0,0.5) +
          SashayRight.changeBeats(4).scale(1.0,1.25),

          PassThru +
          RunRight +
          Forward,

          PassThru +
          FlipLeft +
          Forward
      ]),

  AnimatedCall('Sides Spin the Top and Spread',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',difficulty: 2,
      paths:[
        Stand,

        Stand,

        ExtendLeft.changeBeats(3).scale(3,.5) +
            SwingRight.scale(.5,.5) +
            SwingLeft.scale(.5, .5) +
            LeadLeft.changeBeats(3).scale(3,.5),

        ExtendLeft.changeBeats(3).scale(3,.5) +
            SwingRight.scale(.5,.5) +
            LeadRight.changeBeats(5).scale(1,1.5)

      ]),

  AnimatedCall('Spin the Top and Spread and Girls Spread',
      formation:    Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180),
        DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
      ]),
      from:'BBGG Waves',group:' ',difficulty: 2,
      paths:[
        SwingRight +
            SwingLeft +
            LeadLeft.scale(.5,1),

        SwingRight +
            SwingLeft +
            LeadLeft.scale(1.5,1),

        SwingRight +
            LeadRight.changeBeats(4.5).scale(1.5,3),

        SwingRight +
            LeadRight.changeBeats(4.5).scale(.5,3),

      ]),

  AnimatedCall('Swing Thru and Spread',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',group:' ',difficulty: 2,
      paths:[
          SwingRight +
          SwingLeft.scale(1.0,2.0),

          SwingRight +
          DodgeRight,

          SwingRight +
          DodgeRight,

          SwingRight +
          SwingLeft.scale(1.0,2.0)
      ]),

    AnimatedCall('Trade the Wave and Spread',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',group:' ',difficulty: 3,
      paths:[
          RunRight.changeBeats(6).scale(1.5,3.0),

          SwingLeft.changeBeats(6).scale(0.75,1.0),

          SwingLeft.changeBeats(6).scale(0.75,1.0),

          RunRight.changeBeats(6).scale(1.5,3.0)
      ]),

    AnimatedCall('Wheel and Deal and Spread',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',group:' ',difficulty: 1,
      paths:[
          RunLeft.changeBeats(4).changehands(Hands.LEFT).scale(1.0,2.0).skew(-1.0,0.0) +
          DodgeRight.changeBeats(2).skew(-1.0,0.0),

          UmTurnLeft.changeBeats(4).changehands(Hands.RIGHT).skew(-1.0,0.0) +
          DodgeLeft.changeBeats(2).skew(-1.0,0.0),

          UmTurnRight.changeBeats(4).changehands(Hands.LEFT).skew(1.0,0.0) +
          Forward.changeBeats(2),

          RunRight.changeBeats(4).changehands(Hands.RIGHT).scale(2.0,2.0).skew(1.0,0.0) +
          Forward.changeBeats(2)
      ]),

    AnimatedCall('Zoom and Spread',
      formation:Formation('Double Pass Thru'),
      from:'Double Pass Thru',group:' ',difficulty: 2,
      paths:[
        Forward.changeBeats(3).changehands(Hands.RIGHT) +
            SashayLeft,

        Forward.changeBeats(3).changehands(Hands.LEFT) +
            SashayRight,

          FlipLeft.changeBeats(1).scale(0.5,0.5) +
          Forward +
          LeadLeft.changeBeats(1).scale(1.0,0.5) +
          QuarterLeft.changeBeats(1) +
          ExtendRight.changeBeats(2).scale(1.0,0.5),

        FlipRight.changeBeats(1).scale(0.5,0.5) +
            Forward +
            LeadRight.changeBeats(1).scale(1.0,0.5) +
            QuarterRight.changeBeats(1) +
            ExtendLeft.changeBeats(2).scale(1.0,0.5),

      ]),
  ];

