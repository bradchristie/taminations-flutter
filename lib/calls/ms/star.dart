/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

  final List<AnimatedCall> Star = [

    AnimatedCall('Right Hand Star',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingRight +
          SwingRight,

          LeadLeft.changeBeats(1.5).scale(0.5,1.0) +
          SwingRight +
          SwingRight
      ]),

    AnimatedCall('Right Hand Star',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          Forward.changeBeats(1.5) +
          SwingRight +
          SwingRight,

          QuarterLeft.changeBeats(1.5).skew(0.0,1.0) +
          SwingRight +
          SwingRight,

          Forward.changeBeats(1.5) +
          SwingRight +
          SwingRight,

          QuarterLeft.changeBeats(1.5).skew(0.0,1.0) +
          SwingRight +
          SwingRight
      ]),

    AnimatedCall('Left Hand Star',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',
      paths:[
          LeadRight.changeBeats(1.5).scale(0.5,1.0) +
          SwingLeft +
          SwingLeft,

          Forward.changeBeats(1.5).scale(1.5,1.0) +
          SwingLeft +
          SwingLeft
      ]),

    AnimatedCall('Left Hand Star',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',
      paths:[
          QuarterRight.changeBeats(1.5).skew(0.0,-1.0) +
          SwingLeft +
          SwingLeft,

          Forward.changeBeats(1.5) +
          SwingLeft +
          SwingLeft,

          QuarterRight.changeBeats(1.5).skew(0.0,-1.0) +
          SwingLeft +
          SwingLeft,

          Forward.changeBeats(1.5) +
          SwingLeft +
          SwingLeft
      ]),

    AnimatedCall('Turn the Star',
      formation:Formation('Star RH'),
      from:'Right-Hand Star',
      paths:[
          HingeRight,

          HingeRight
      ]),

    AnimatedCall('Turn the Star',
      formation:Formation('Star LH'),
      from:'Left-Hand Star',
      paths:[
          HingeLeft,

          HingeLeft
      ]),

    AnimatedCall('Turn the Star',
      formation:Formation('Star Facing'),
      from:'Facing Star',
      paths:[
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207),

          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793)
      ]),

    AnimatedCall('Turn the Stars',
      formation:Formation('Stars RH'),
      from:'Right-Hand Stars',
      paths:[
          HingeRight,

          HingeRight,

          HingeRight,

          HingeRight
      ]),

    AnimatedCall('Turn the Stars',
      formation:Formation('Stars LH'),
      from:'Left-Hand Stars',
      paths:[
          HingeLeft,

          HingeLeft,

          HingeLeft,

          HingeLeft
      ]),

    AnimatedCall('Turn the Stars',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:3,y:0,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:1,angle:0),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:0,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
  ]),
      from:'Facing Stars 1',noDisplay: true,
      paths:[
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207),

          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793),

          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207),

          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793)
      ]),

    AnimatedCall('Turn the Stars',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:3,y:0,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:2,y:1,angle:180),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:0,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:180),
  ]),
      from:'Facing Stars 2',noDisplay: true,
      paths:[
          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793),

          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207),

          EighthRight.changeBeats(1.5).skew(1.06,0.06) +
          EighthRight.changeBeats(1.5).skew(0.707,-0.793),

          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.353,0.647) +
          EighthLeft.changeBeats(1.5).changehands(Hands.LEFT).skew(0.707,-0.207)
      ]),

    AnimatedCall('Head Right-Hand Star All the Way Around',
      formation:Formation('Static Square'),
      group:' ',
      paths:[
          Forward_2 +
          Forward.changeBeats(1.5) +
          CastRight +
          QuarterRight.changeBeats(3).skew(1.0,2.0),

          Forward_2 +
          QuarterLeft.skew(0.0,1.0) +
          CastRight +
          UmTurnRight.changeBeats(3).skew(3.0,0.0),

          Path(),

          Path()
      ]),

    AnimatedCall('Head Left-Hand Star All the Way Around',
      formation:Formation('Static Square'),
      group:' ',
      paths:[
          Forward_2 +
          QuarterRight.skew(0.0,-1.0) +
          CastLeft +
          UmTurnLeft.changeBeats(3).skew(3.0,0.0),

          Forward_2 +
          Forward.changeBeats(1.5) +
          CastLeft +
          QuarterLeft.changeBeats(3).skew(1.0,-2.0),

          Path(),

          Path()
      ]),

    AnimatedCall('Heads Square Thru; Make A Right Hand Star With The Sides; Heads Center Left Hand Star; Back To The Same Girl With A Right and Left Thru',
      formation:Formation('Static Square'),
      group:' ',
      paths:[
          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          LeadRight.skew(0.5,0.5) +
          LeadRight.scale(0.5,1.5) +
          ExtendLeft.scale(1.0,0.5) +
          Forward.changeBeats(1.5) +
          CastRight +
          HingeLeft +
          CastLeft +
          QuarterRight.skew(1.0,0.0) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0),

          Forward_2 +
          PullLeft.scale(1.0,0.5) +
          LeadLeft.skew(0.5,-0.5) +
          LeadLeft.scale(0.5,1.5) +
          LeadLeft.skew(0.5,-0.5) +
          ExtendLeft.scale(1.0,0.5) +
          QuarterLeft.skew(0.0,1.0) +
          CastRight +
          HingeRight +
          CastLeft +
          Forward.changeBeats(1.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0),

          Stand.changeBeats(8.5) +
          Forward.changeBeats(1.5) +
          CastRight +
          QuarterRight.skew(1.0,0.0) +
          Stand.changeBeats(6) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BeauWheel.scale(0.5,1.0),

          Stand.changeBeats(8.5) +
          QuarterLeft.skew(0.0,1.0) +
          CastRight +
          UmTurnRight.skew(1.0,0.0) +
          Stand.changeBeats(4.5) +
          PullLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          BelleWheel.scale(0.5,1.0)
      ]),

    AnimatedCall('Right-Hand Star 1/4',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      taminator: '''
      This and the following animations assume ending in a Double
      Pass Thru formation, as that is commonly assumed especially for singing calls.
    ''',
      paths:[
          Forward.changehands(Hands.RIGHT) +
          Forward.changehands(Hands.RIGHT),

          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(0.0,1.0) +
          QuarterRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0),

          Forward.changehands(Hands.RIGHT) +
          UmTurnRight.changeBeats(1).skew(1.0,0.0),

          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(0.0,1.0) +
          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0)
      ]),

    AnimatedCall('Right-Hand Star 1/2',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          Forward.changehands(Hands.RIGHT) +
          HingeRight.changeBeats(2) +
          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0),

          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(0.0,1.0) +
          HingeRight.changeBeats(2) +
          Forward.changehands(Hands.RIGHT),

          Forward.changehands(Hands.RIGHT) +
          HingeRight.changeBeats(2) +
          QuarterRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0),

          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(0.0,1.0) +
          HingeRight.changeBeats(2) +
          UmTurnRight.changeBeats(1).skew(1.0,0.0)
      ]),

    AnimatedCall('Right-Hand Star 3/4',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          Forward.changehands(Hands.RIGHT) +
          SwingRight.changeBeats(4) +
          UmTurnRight.changeBeats(1).skew(1.0,0.0),

          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(0.0,1.0) +
          SwingRight.changeBeats(4) +
          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0),

          Forward.changehands(Hands.RIGHT) +
          SwingRight.changeBeats(4) +
          Forward.changehands(Hands.RIGHT),

          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(0.0,1.0) +
          SwingRight.changeBeats(4) +
          QuarterRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0)
      ]),

    AnimatedCall('Right-Hand Star a Full Turn',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          Forward.changehands(Hands.RIGHT) +
          HingeRight.changeBeats(2) +
          SwingRight.changeBeats(4) +
          QuarterRight.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0),

          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(0.0,1.0) +
          HingeRight.changeBeats(2) +
          SwingRight.changeBeats(4) +
          UmTurnRight.changeBeats(1).skew(1.0,0.0),

          Forward.changehands(Hands.RIGHT) +
          HingeRight.changeBeats(2) +
          SwingRight.changeBeats(4) +
          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(1.0,0.0),

          QuarterLeft.changeBeats(1).changehands(Hands.RIGHT).skew(0.0,1.0) +
          HingeRight.changeBeats(2) +
          SwingRight.changeBeats(4) +
          Forward.changehands(Hands.RIGHT)
      ]),

    AnimatedCall('Left-Hand Star 1/4',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(0.0,-1.0) +
          QuarterLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0),

          Forward.changehands(Hands.LEFT) +
          Forward.changehands(Hands.LEFT),

          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(0.0,-1.0) +
          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0),

          Forward.changehands(Hands.LEFT) +
          UmTurnLeft.changeBeats(1).skew(1.0,0.0)
      ]),

    AnimatedCall('Left-Hand Star 1/2',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(0.0,-1.0) +
          HingeLeft.changeBeats(2) +
          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.LEFT) +
          HingeLeft.changeBeats(2) +
          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0),

          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(0.0,-1.0) +
          HingeLeft.changeBeats(2) +
          UmTurnLeft.changeBeats(1).skew(1.0,0.0),

          Forward.changehands(Hands.LEFT) +
          HingeLeft.changeBeats(2) +
          QuarterLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0)
      ]),

    AnimatedCall('Left-Hand Star 3/4',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(0.0,-1.0) +
          SwingLeft.changeBeats(4) +
          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0),

          Forward.changehands(Hands.LEFT) +
          SwingLeft.changeBeats(4) +
          UmTurnLeft.changeBeats(1).skew(1.0,0.0),

          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(0.0,-1.0) +
          SwingLeft.changeBeats(4) +
          QuarterLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0),

          Forward.changehands(Hands.LEFT) +
          SwingLeft.changeBeats(4) +
          Forward.changehands(Hands.LEFT)
      ]),

    AnimatedCall('Left-Hand Star a Full Turn',
      formation:Formation('Eight Chain Thru'),
      group:' ',
      paths:[
          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(0.0,-1.0) +
          HingeLeft.changeBeats(2) +
          SwingLeft.changeBeats(4) +
          UmTurnLeft.changeBeats(1).skew(1.0,0.0),

          Forward.changehands(Hands.LEFT) +
          HingeLeft.changeBeats(2) +
          SwingLeft.changeBeats(4) +
          QuarterLeft.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0),

          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(0.0,-1.0) +
          HingeLeft.changeBeats(2) +
          SwingLeft.changeBeats(4) +
          Forward.changehands(Hands.LEFT),

          Forward.changehands(Hands.LEFT) +
          HingeLeft.changeBeats(2) +
          SwingLeft.changeBeats(4) +
          QuarterRight.changeBeats(1).changehands(Hands.LEFT).skew(1.0,0.0)
      ]),


    //  Stars for sequencer
    AnimatedCall('Right-Hand Star 1/4 Across',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          Forward +
              Forward,

          QuarterLeft.changeBeats(1).skew(0, 1) +
              QuarterLeft.changeBeats(1).skew(1, 0)
        ]),

    AnimatedCall('Right-Hand Star 1/2 Across',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          Forward +
              HingeRight +
              QuarterLeft.changeBeats(1).skew(1, 0),

          QuarterLeft.changeBeats(1).skew(0, 1) +
              HingeRight +
              Forward
        ]),

    AnimatedCall('Right-Hand Star 3/4 Across',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          Forward +
              SwingRight +
              Forward,

          QuarterLeft.changeBeats(1).skew(0, 1) +
              SwingRight +
              QuarterLeft.changeBeats(1).skew(1, 0)
        ]),

    AnimatedCall('Right-Hand Star Full Across',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          Forward +
              SwingRight +
              HingeRight +
              QuarterLeft.changeBeats(1).skew(1, 0),

          QuarterLeft.changeBeats(1).skew(0, 1) +
              SwingRight +
              HingeRight +
              Forward
        ]),

    AnimatedCall('Left-Hand Star 1/4 Across',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          QuarterRight.changeBeats(1).skew(0, -1) +
              QuarterRight.changeBeats(1).skew(1, 0),

          Forward +
              Forward
        ]),

    AnimatedCall('Left-Hand Star 1/2 Across',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          QuarterRight.changeBeats(1).skew(0, -1) +
              HingeLeft +
              Forward,

          Forward +
              HingeLeft +
              QuarterRight.changeBeats(1).skew(1, 0)
        ]),

    AnimatedCall('Left-Hand Star 3/4 Across',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          QuarterRight.changeBeats(1).skew(0, -1) +
              SwingLeft +
              QuarterRight.changeBeats(1).skew(1, 0),

          Forward +
              SwingLeft +
              Forward
        ]),

    AnimatedCall('Left-Hand Star Full Across',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          QuarterRight.changeBeats(1).skew(0, -1) +
              SwingLeft +
              HingeLeft +
              Forward,

          Forward +
              SwingLeft +
              HingeLeft +
              QuarterRight.changeBeats(1).skew(1, 0)
        ]),



    AnimatedCall('Right-Hand Star 1/4 Across and Roll',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          Forward +
              QuarterRight.changeBeats(1).skew(1, 0),

          QuarterLeft.changeBeats(1).skew(0, 1) +
              Forward
        ]),

    AnimatedCall('Right-Hand Star 1/2 Across and Roll',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          Forward +
              HingeRight +
              Forward,

          QuarterLeft.changeBeats(1).skew(0, 1) +
              HingeRight +
              QuarterRight.changeBeats(1).skew(1, 0)
        ]),

    AnimatedCall('Right-Hand Star 3/4 Across and Roll',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          Forward +
              SwingRight +
              QuarterRight.changeBeats(1).skew(1, 0),

          QuarterLeft.changeBeats(1).skew(0, 1) +
              SwingRight +
              Forward
        ]),

    AnimatedCall('Right-Hand Star Full Across and Roll',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          Forward +
              SwingRight +
              HingeRight +
              Forward,

          QuarterLeft.changeBeats(1).skew(0, 1) +
              SwingRight +
              HingeRight +
              QuarterRight.changeBeats(1).skew(1, 0),
        ]),

    AnimatedCall('Left-Hand Star 1/4 Across and Roll',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          QuarterRight.changeBeats(1).skew(0, -1) +
              Forward,

          Forward +
              QuarterLeft.changeBeats(1).skew(1, 0),
        ]),

    AnimatedCall('Left-Hand Star 1/2 Across and Roll',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          QuarterRight.changeBeats(1).skew(0, -1) +
              HingeLeft +
              QuarterLeft.changeBeats(1).skew(1, 0),

          Forward +
              HingeLeft +
              Forward
        ]),

    AnimatedCall('Left-Hand Star 3/4 Across and Roll',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          QuarterRight.changeBeats(1).skew(0, -1) +
              SwingLeft +
              Forward,

          Forward +
              SwingLeft +
              QuarterLeft.changeBeats(1).skew(1, 0)
        ]),

    AnimatedCall('Left-Hand Star Full Across and Roll',
        group: ' ',
        formation: Formation('Facing Couples Close'),
        noDisplay: true,
        paths: [
          QuarterRight.changeBeats(1).skew(0, -1) +
              SwingLeft +
              HingeLeft +
              QuarterLeft.changeBeats(1).skew(1, 0),

          Forward +
              SwingLeft +
              HingeLeft +
              Forward
        ]),

  ];
