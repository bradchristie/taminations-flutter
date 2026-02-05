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

  final List<AnimatedCall> WaveTheAnyone = [

    AnimatedCall('Wave the Beaus',
        from: 'Eight Chain Thru',
        formation:Formation('Eight Chain Thru'),
        parts:'2',
        paths:[
          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              Forward_2,

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              DodgeLeft,

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              RunRight.skew(1.0,0.0) +
              QuarterRight.skew(1.0,0.0),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              QuarterLeft.skew(0.0,1.0) +
              Forward,
        ]),

    AnimatedCall('Wave the Beaus',
      from: 'T-Bones',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
  ]),
      parts:'2',
      paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
          Forward_4,

          Forward.changeBeats(2).changehands(Hands.LEFT) +
          DodgeLeft.changeBeats(4),

          Forward_2.changehands(Hands.RIGHT) +
          RunRight.scale(1.0,1.5).skew(1.0,0.0) +
          QuarterRight.skew(1.0,0.0),

          Forward_2.changehands(Hands.LEFT) +
          QuarterLeft.changeBeats(2).skew(0.0,1.0) +
          Forward_2
      ]),

    AnimatedCall('Wave the Belles',
      from: 'Eight Chain Thru',
      formation:Formation('Eight Chain Thru'),
      parts:'2',
      paths:[
          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          DodgeRight,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          Forward_2,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          QuarterRight.skew(0.0,-1.0) +
          Forward,

          ExtendLeft.scale(1.0,0.5) +
          ExtendRight.scale(1.0,0.5) +
          RunLeft.skew(1.0,0.0) +
          QuarterLeft.skew(1.0,0.0)
      ]),

    AnimatedCall('Wave the Belles',
        from: 'T-Bones',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
          Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
          Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        ]),
        parts:'2',
        paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
              DodgeRight.changeBeats(4),

          Forward.changeBeats(2).changehands(Hands.LEFT) +
              Forward_4,

          Forward_2.changehands(Hands.RIGHT) +
              QuarterRight.changeBeats(2).skew(0.0,-1.0) +
              Forward_2,

          Forward_2.changehands(Hands.LEFT) +
              RunLeft.scale(1.0,1.5).skew(1.0,0.0) +
              QuarterLeft.skew(1.0,0.0),
        ]),

    AnimatedCall('Wave the Boys',
      from: 'Eight Chain Thru, Boys in Center',
      formation:Formation('', dancers:[
        Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
        Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
  ]),
      isGenderSpecific:true,parts:'2',
      paths:[
        ExtendLeft.scale(1.0,0.5) +
            ExtendRight.scale(1.0,0.5) +
            FlipLeft +
            QuarterLeft,

        ExtendLeft.scale(1.0,0.5) +
            ExtendRight.scale(1.0,0.5) +
            BackSashayRight.changeBeats(4),

        ExtendLeft.scale(1.0,0.5) +
            ExtendRight.scale(1.0,0.5) +
            RunRight +
            QuarterRight,

        ExtendLeft.scale(1.0,0.5) +
            ExtendRight.scale(1.0,0.5) +
            SashayLeft.changeBeats(4)
      ]),

    AnimatedCall('Wave the Boys',
        from: 'Eight Chain Thru, Boys Outside',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
          Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
          Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
          Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        ]),
        isGenderSpecific:true,parts:'2',
        paths:[
          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              QuarterLeft.changeBeats(1).skew(-0.5,1) +
              ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              LeadRight.changeBeats(1).scale(.5, 1) +
              ExtendRight.scale(1.0,0.5),


          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5),
        ]),

    AnimatedCall('Wave the Girls',
        from: 'Eight Chain Thru, Girls In Center',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.GIRL,x:1,y:1,angle:90),
          Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
          Dancer.fromData(gender:Gender.GIRL,x:-1,y:1,angle:90),
          Dancer.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        ]),
        isGenderSpecific:true,parts:'2',
        paths:[
          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              FlipLeft +
              QuarterLeft,

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              BackSashayRight.changeBeats(4),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              RunRight +
              QuarterRight,

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              SashayLeft.changeBeats(4)
        ]),

    AnimatedCall('Wave the Girls',
        from: 'Eight Chain Thru, Girls Outside',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:90),
          Dancer.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
          Dancer.fromData(gender:Gender.BOY,x:-1,y:1,angle:90),
          Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
        ]),
        isGenderSpecific:true,parts:'2',
        paths:[
          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              QuarterLeft.changeBeats(1).skew(-0.5,1) +
              ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              LeadRight.changeBeats(1).scale(.5, 1) +
              ExtendRight.scale(1.0,0.5),


          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5),
        ]),

    AnimatedCall('Wave Everybody',
        from: 'Eight Chain Thru',
        formation:Formation('Eight Chain Thru'),
        parts:'2',
        paths:[
          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              RunRight +
              QuarterRight,

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              FlipLeft +
              QuarterLeft,

        ]),

    AnimatedCall('Wave Everybody',
        from: 'T-Bones',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
          Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
          Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        ]),
        parts:'2',
        paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
              ExtendLeft.changeBeats(2).scale(1.75,.5) +
              ExtendRight.changeBeats(2).scale(1.75,.5),

          Forward.changeBeats(2).changehands(Hands.LEFT) +
              ExtendLeft.changeBeats(2).scale(1.75,.5) +
              ExtendRight.changeBeats(2).scale(1.75,.5),

          Forward_2.changehands(Hands.RIGHT) +
              RunRight.scale(1.0,1.25) +
              QuarterRight,

          Forward_2.changehands(Hands.LEFT) +
              FlipLeft.scale(1.0,1.25) +
              QuarterLeft,

        ]),

    AnimatedCall('Wave Nobody',
        from: 'Eight Chain Thru',
        formation:Formation('Eight Chain Thru'),
        parts:'2',
        paths:[
          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              BackSashayRight.changeBeats(4),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              SashayLeft.changeBeats(4),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              LeadRight.changeBeats(1).scale(.5, 1) +
              ExtendRight.scale(1.0,0.5),

          ExtendLeft.scale(1.0,0.5) +
              ExtendRight.scale(1.0,0.5) +
              QuarterLeft.changeBeats(1).skew(-0.5,1) +
              ExtendRight.scale(1.0,0.5),

        ]),

    AnimatedCall('Wave Nobody',
        from: 'T-Bones',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:1,y:3,angle:270),
          Dancer.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
          Dancer.fromData(gender:Gender.BOY,x:1,y:1,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:1,y:-1,angle:0),
        ]),
        parts:'2',
        paths:[
          Forward.changeBeats(2).changehands(Hands.RIGHT) +
              BackSashayRight.changeBeats(4).skew(.5, 0),

          Forward.changeBeats(2).changehands(Hands.LEFT) +
              SashayLeft.changeBeats(4).skew(.5, 0),

          Forward_2.changehands(Hands.RIGHT) +
              LeadRight.changeBeats(2).scale(.5, 1) +
              ExtendRight.changeBeats(2).scale(1.5,0.5),

          Forward_2.changehands(Hands.LEFT) +
              QuarterLeft.changeBeats(2).skew(-0.5,1) +
              ExtendRight.changeBeats(2).scale(1.5,0.5),

        ]),


  ];

