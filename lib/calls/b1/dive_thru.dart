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

  final List<AnimatedCall> DiveThru = [

    AnimatedCall('Dive Thru',
      formation:Formation('Pass Thru'),
      group:' ',difficulty: 1, isGenderSpecific: true,
      paths:[
          ExtendRight.changehands(Hands.RIGHT).scale(1.0,0.5) +
          ExtendLeft.changehands(Hands.RIGHT).scale(1.0,0.5),

          ExtendLeft.changehands(Hands.LEFT).scale(1.0,0.5) +
          ExtendRight.changehands(Hands.LEFT).scale(1.0,0.5),

          ExtendLeft.changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
          ExtendRight.changehands(Hands.GRIPRIGHT).scale(1.0,0.5) +
          RunRight.changehands(Hands.GRIPRIGHT),

          ExtendRight.changehands(Hands.GRIPLEFT).scale(1.0,0.5) +
          ExtendLeft.changehands(Hands.GRIPLEFT).scale(1.0,0.5) +
          FlipLeft.changehands(Hands.GRIPLEFT)
      ]),

    //  Heads on left side of line
    AnimatedCall('Heads Arch, Sides Dive Thru',
      formation:Formation('Normal Lines'),
      group:' ',difficulty: 2, isGenderSpecific: true,
      paths: [
        ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
            ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
            RunRight.changehands(Hands.GRIPRIGHT),
        ExtendRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
            ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
            FlipLeft.changehands(Hands.GRIPLEFT),
        ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5) +
            ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5),
        ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5) +
            ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5)
      ]),

    //  Heads on right side of line
    AnimatedCall('Heads Arch, Sides Dive Thru',
        formation:    Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        ]),
        group:' ',difficulty: 2, isGenderSpecific: true, noDisplay: true,
        paths: [
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              RunRight.changehands(Hands.GRIPRIGHT),
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              FlipLeft.changehands(Hands.GRIPLEFT),
          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5),
          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5)
        ]),

    //  Heads on left side of line, sides sashayed
    AnimatedCall('Heads Arch, Sides Dive Thru', noDisplay: true,
        formation:    Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
        ]),
        group:' ',difficulty: 2, isGenderSpecific: true,
        paths: [
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              RunRight.changehands(Hands.GRIPRIGHT),
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              FlipLeft.changehands(Hands.GRIPLEFT),
          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5),
          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5),
        ]),

    //  Heads on right side of line, sides sashayed
    AnimatedCall('Heads Arch, Sides Dive Thru', noDisplay: true,
        formation:    Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
        ]),
        group:' ',difficulty: 2, isGenderSpecific: true,
        paths: [
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              RunRight.changehands(Hands.GRIPRIGHT),
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              FlipLeft.changehands(Hands.GRIPLEFT),
          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5),
          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5),
        ]),

    //  Now all of that again with the sides
    AnimatedCall('Sides Arch, Heads Dive Thru',
        formation:Formation('Normal Lines'),
        group:' ',difficulty: 2, isGenderSpecific: true,
        paths: [
          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5),
          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5),
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              RunRight.changehands(Hands.GRIPRIGHT),
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              FlipLeft.changehands(Hands.GRIPLEFT),
        ]),
    AnimatedCall('Sides Arch, Heads Dive Thru', noDisplay: true,
        formation:    Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        ]),
        group:' ',difficulty: 2, isGenderSpecific: true,
        paths: [
          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5),
          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5),
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              RunRight.changehands(Hands.GRIPRIGHT),
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              FlipLeft.changehands(Hands.GRIPLEFT),
        ]),
    AnimatedCall('Sides Arch, Heads Dive Thru',
        formation:    Formation('Normal Lines', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:3,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        ]),
        group:' ',difficulty: 2, isGenderSpecific: true, noDisplay: true,
        paths: [
          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5),
          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5),
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              RunRight.changehands(Hands.GRIPRIGHT),
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              FlipLeft.changehands(Hands.GRIPLEFT),
        ]),
    AnimatedCall('Sides Arch, Heads Dive Thru',
        formation:    Formation('', dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
        ]),
        group:' ',difficulty: 2, isGenderSpecific: true, noDisplay: true,
        paths: [
          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(2.0, 0.5),
          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(2.0, 0.5),
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(2.0, 0.5) +
              RunRight.changehands(Hands.GRIPRIGHT),
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(2.0, 0.5) +
              FlipLeft.changehands(Hands.GRIPLEFT),
        ]),

  AnimatedCall('Heads Wheel Around and make an Arch, Sides Dive Thru',
      formation:Formation('Promenade 2'),
      group:' ',difficulty: 2, isGenderSpecific: true,
      taminator: '''
      Wheel Around is in the Basic 2 program.
    ''',
      paths:[
          BackHingeRight.changeBeats(1.25).scale(0.5,0.5) +
          HalfBackHingeRight.scale(0.5,0.5).skew(-0.35,0.35) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(1.75,0.5) +
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPRIGHT).scale(1.75,0.5) +
          RunRight.changehands(Hands.GRIPRIGHT),

          HingeLeft.changeBeats(1.25).scale(0.5,0.5) +
          EighthLeft.changeBeats(.75).changehands(Hands.LEFT).skew(0.6,-0.1) +
          ExtendRight.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(1.75,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(1.75,0.5) +
          FlipLeft.changehands(Hands.GRIPLEFT),

          HalfBackHingeRight.changeBeats(2).scale(0.5,0.5).skew(-0.25,0.25) +
          ExtendRight.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.75,0.5) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.RIGHT).scale(1.75,0.5),

          EighthLeft.changeBeats(2).changehands(Hands.LEFT).skew(0.71,-0.2) +
          ExtendLeft.changeBeats(1.5).changehands(Hands.LEFT).scale(1.75,0.5) +
          ExtendRight.changeBeats(1.5).changehands(Hands.LEFT).scale(1.75,0.5)
      ]),
  ];

