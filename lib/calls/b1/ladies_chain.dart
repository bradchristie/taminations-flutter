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

  final List<AnimatedCall> LadiesChain = [

    AnimatedCall('Ladies Chain',
      formation:Formation('Facing Couples Compact'),
      from:'Facing Couples',isGenderSpecific:true,fractions:'5',difficulty: 1,
      paths:[
          Stand.changehands(0) +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(1.5,1.75) +
          ExtendRight.changeBeats(2.5).changehands(Hands.LEFT).scale(1.5,1.25) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Ladies Chain',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',isGenderSpecific:true,fractions:'5',difficulty: 1,
      paths:[
          Stand.changehands(0) +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(2.0,1.75) +
          ExtendRight.changeBeats(2.5).changehands(Hands.LEFT).scale(2.0,1.25) +
          BelleWheel.scale(0.5,0.75),

          Stand.changehands(0) +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(2.0,1.75) +
          ExtendRight.changeBeats(2.5).changehands(Hands.LEFT).scale(2.0,1.25) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Ladies Chain',
      formation:Formation('Eight Chain Thru'),
      from:'Eight Chain Thru',isGenderSpecific:true,fractions:'5',difficulty: 1,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(1.0,1.5) +
          ExtendRight.changeBeats(2.5) +
          BelleWheel.scale(0.5,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(1.0,1.5) +
          ExtendRight.changeBeats(2.5) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Head Ladies Chain',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',isGenderSpecific:true,difficulty: 1,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(3.0,1.75) +
          ExtendRight.changeBeats(2.5).scale(3.0,1.25) +
          BelleWheel.scale(0.5,0.75),

          Path(),

          Path()
      ]),

    AnimatedCall('Side Ladies Chain',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',isGenderSpecific:true,difficulty: 1,
      paths:[
          Path(),

          Path(),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(3.0,1.75) +
          ExtendRight.changeBeats(2.5).scale(3.0,1.25) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Head Ladies Chain Right',
      formation:Formation('Static Square'),
      group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          BelleWheel.scale(0.75,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(1.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.0,1.5) +
          BelleWheel.scale(0.75,0.75)
      ]),

    AnimatedCall('Side Ladies Chain Right',
      formation:Formation('Static Square'),
      group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(1.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.0,1.5) +
          BelleWheel.scale(0.5,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          BelleWheel.scale(0.75,0.75)
      ]),

    AnimatedCall('Head Ladies Chain Left',
      formation:Formation('Static Square'),
      group:' ',isGenderSpecific:true,difficulty: 2,
      taminator: '''
      This is the same as Side Ladies Chain Right
    ''',
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(1.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.0,1.5) +
          BelleWheel.scale(0.5,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          BelleWheel.scale(0.75,0.75)
      ]),

    AnimatedCall('Side Ladies Chain Left',
      formation:Formation('Static Square'),
      group:' ',isGenderSpecific:true,difficulty: 2,
      taminator: '''
      This is the same as Head Ladies Chain Right
    ''',
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          LeadRight.changeBeats(3).scale(0.5,3.0) +
          BelleWheel.scale(0.75,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(1.5,2.5) +
          LeadLeft.changeBeats(3).scale(2.0,1.5) +
          BelleWheel.scale(0.75,0.75)
      ]),

    AnimatedCall('End Ladies Chain on a Diagonal',
      formation:Formation('Normal Lines'),
      group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Path(),

          Path(),

          Stand.changeBeats(6) +
          UmTurnLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.0) +
          BeauWheel.scale(0.5,0.5),

          LeadLeft +
          Forward_2 +
          HingeRight.changeBeats(2) +
          Forward_2.changeBeats(3.5) +
          BelleWheel
      ]),

    AnimatedCall('_Chain', from: 'End Ladies',
        formation: Formation('',dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-2,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:0),
        ]),
        group:' ',isGenderSpecific:true,difficulty: 2,noDisplay: true,
        paths:[
          Stand.changeBeats(6) +
              UmTurnLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,-1.0) +
              BeauWheel.scale(0.5,0.5),

          LeadLeft +
              Forward_2 +
              HingeRight.changeBeats(2) +
              Forward_2.changeBeats(3.5) +
              BelleWheel
        ]),

    AnimatedCall('_Chain',from:'Couples 1 and 2',
        formation: Formation('',asymmetric: true, dancers:[
          DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
          DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
          DancerModel.fromData(gender:Gender.BOY,x:-1,y:-3,angle:90),
          DancerModel.fromData(gender:Gender.GIRL,x:1,y:-3,angle:90),
        ]),
        group:' ',isGenderSpecific:true,difficulty: 2,noDisplay: true,
        paths: [
          Stand +
              DodgeRight.changeBeats(2) +
              UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
              BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
              LeadRight.changeBeats(3).scale(0.5,3.0) +
              BelleWheel.scale(0.75,0.75),

          Stand +
              DodgeRight.changeBeats(2) +
              UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
              BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(1.5,2.5) +
              LeadLeft.changeBeats(3).scale(2.0,1.5) +
              BelleWheel.scale(0.75,0.75)
        ]),


    AnimatedCall('Center Ladies Chain on a Diagonal',
      formation:Formation('Normal Lines'),
      group:' ',isGenderSpecific:true,difficulty: 3,
      paths:[
          Stand.changeBeats(2) +
          DodgeRight.changeBeats(4) +
          UmTurnLeft.changeBeats(3).changehands(Hands.RIGHT).skew(0.0,1.0) +
          BeauWheel.scale(0.5,0.5),

          Forward_2.changeBeats(3.5) +
          HingeRight.changeBeats(2) +
          Forward_2 +
          LeadLeft +
          BelleWheel,

          Path(),

          Path()
      ]),

    AnimatedCall('On a Double Track, Ladies Chain',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      from:'Double Pass Thru',group:' ',isGenderSpecific:true,difficulty: 2,
      paths:[
          Forward.changeBeats(3).scale(0.5,1.0) +
          UmTurnLeft.changeBeats(2).skew(0.5,0.0) +
          BeauWheel.scale(0.5,1.0),

          Forward.changeBeats(3).scale(0.5,1.0) +
          UmTurnLeft.changeBeats(2).skew(0.5,-1.0) +
          BeauWheel.scale(0.5,0.5),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          ExtendLeft.changeBeats(2).scale(0.5,0.5) +
          BelleWheel.scale(0.5,1.0),

          PullLeft.scale(1.0,0.5) +
          ExtendRight.changeBeats(2).scale(1.5,1.0) +
          ExtendRight.changeBeats(2).scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.5)
      ]),

    AnimatedCall('Head Ladies Chain 3/4',
        formation:Formation('Static Square'),
        from:'Static Square',group:' ',isGenderSpecific:true,difficulty: 1,
        paths:[
          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5),

          ExtendLeft.changeBeats(2.5).scale(3.0,1.75) +
              HingeRight.scale(0.75,0.75) +
              ExtendRight.changeBeats(2.5).scale(3.0,1.75) +
              BelleWheel.scale(0.5,0.5),

          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5) +
              UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT) +
              BeauWheel.scale(0.5,0.75),

          Stand.changeBeats(6.5) +
              DodgeRight.scale(1, 0.25)
        ]),

    AnimatedCall('Head Ladies Chain 3/4 and Half Sashay',
        formation:Formation('Static Square'),
        from:'Static Square',group:' ',isGenderSpecific:true,difficulty: 1,
        paths:[
          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5),

          ExtendLeft.changeBeats(2.5).scale(3.0,1.75) +
              HingeRight.scale(0.75,0.75) +
              ExtendRight.changeBeats(2.5).scale(3.0,1.75) +
              BelleWheel.scale(0.5,0.5) +
              SashayLeft.scale(1,0.75),

          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5) +
              UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT) +
              BeauWheel.scale(0.5,0.75) +
              BackSashayRight.scale(1.0,0.75),

          Stand.changeBeats(6.5) +
              DodgeRight.scale(1, 0.25)
        ]),

    AnimatedCall('Head Ladies Chain 3/4 and Rollaway',
        formation:Formation('Static Square'),
        from:'Static Square',group:' ',isGenderSpecific:true,difficulty: 1,
        paths:[
          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5),

          ExtendLeft.changeBeats(2.5).scale(3.0,1.75) +
              HingeRight.scale(0.75,0.75) +
              ExtendRight.changeBeats(2.5).scale(3.0,1.75) +
              BelleWheel.scale(0.5,0.5) +
              FoldLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(0.6,0.375) +
              UmTurnLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).skew(1.2,-.75),

          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5) +
              UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT) +
              BeauWheel.scale(0.5,0.75) +
              DodgeRight.changehands(Hands.GRIPRIGHT).scale(1,0.75),

          Stand.changeBeats(6.5) +
              DodgeRight.scale(1, 0.25)
        ]),

    AnimatedCall('Side Ladies Chain 3/4',
        formation:Formation('Static Square'),
        from:'Static Square',group:' ',
        isGenderSpecific:true,
        difficulty: 1,
        noDisplay: true,
        paths:[
          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5) +
              UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT) +
              BeauWheel.scale(0.5,0.75),

          Stand.changeBeats(6.5) +
              DodgeRight.scale(1, 0.25),

          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5),

          ExtendLeft.changeBeats(2.5).scale(3.0,1.75) +
              HingeRight.scale(0.75,0.75) +
              ExtendRight.changeBeats(2.5).scale(3.0,1.75) +
              BelleWheel.scale(0.5,0.5),
        ]),

    AnimatedCall('Side Ladies Chain 3/4 and Half Sashay',
        formation:Formation('Static Square'),
        from:'Static Square',group:' ',
        isGenderSpecific:true,
        difficulty: 1,
        noDisplay: true,
        paths:[
          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5) +
              UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT) +
              BeauWheel.scale(0.5,0.75) +
              BackSashayRight.scale(1.0,0.75),

          Stand.changeBeats(6.5) +
              DodgeRight.scale(1, 0.25),

          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5),

          ExtendLeft.changeBeats(2.5).scale(3.0,1.75) +
              HingeRight.scale(0.75,0.75) +
              ExtendRight.changeBeats(2.5).scale(3.0,1.75) +
              BelleWheel.scale(0.5,0.5) +
              SashayLeft.scale(1,0.75),
        ]),

    AnimatedCall('Side Ladies Chain 3/4 and Rollaway',
        formation:Formation('Static Square'),
        from:'Static Square',group:' ',
        isGenderSpecific:true,
        difficulty: 1,
        noDisplay: true,
        paths:[
          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5) +
              UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT) +
              BeauWheel.scale(0.5,0.75) +
              DodgeRight.changehands(Hands.GRIPRIGHT).scale(1,0.75),

          Stand.changeBeats(6.5) +
              DodgeRight.scale(1, 0.25),

          Stand +
              DodgeRight.changeBeats(3.5).scale(1, 0.5),

          ExtendLeft.changeBeats(2.5).scale(3.0,1.75) +
              HingeRight.scale(0.75,0.75) +
              ExtendRight.changeBeats(2.5).scale(3.0,1.75) +
              BelleWheel.scale(0.5,0.5) +
              FoldLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).scale(0.6,0.375) +
              UmTurnLeft.changeBeats(1.5).changehands(Hands.GRIPLEFT).skew(1.2,-.75),
        ]),

    AnimatedCall('Four Ladies Chain',
      formation:Formation('Static Square'),
      from:'Static Square',isGenderSpecific:true,fractions:'5',difficulty: 1,
      paths:[
          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(3.0,1.75) +
          ExtendRight.changeBeats(2.5).scale(3.0,1.25) +
          BelleWheel.scale(0.5,0.75),

          Stand +
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          PullLeft.changeBeats(2.5).scale(3.0,1.75) +
          ExtendRight.changeBeats(2.5).scale(3.0,1.25) +
          BelleWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Four Ladies Chain',
      formation:Formation('Normal Lines'),
      from:'Normal Lines',isGenderSpecific:true,difficulty: 2,
      paths:[
          DodgeRight.changeBeats(7).scale(1.0,0.75) +
          UmTurnLeft.changeBeats(2).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.5),

          Forward_2.changeBeats(3.5) +
          HingeRight.changeBeats(2) +
          Forward_2 +
          LeadLeft +
          BelleWheel,

          DodgeRight.changeBeats(7).scale(1.0,0.25) +
          UmTurnLeft.changeBeats(2).skew(0.0,-0.5) +
          BeauWheel.scale(0.5,0.5),

          LeadLeft +
          Forward_2 +
          HingeRight.changeBeats(2) +
          Forward_2.changeBeats(3.5) +
          BelleWheel
      ]),

    AnimatedCall('Four Ladies Chain 3/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',isGenderSpecific:true,fractions:'6.5',difficulty: 1,
      paths:[
          Stand +
          DodgeRight.changeBeats(3.5) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2.5).scale(3.0,2.0) +
          HingeRight +
          ExtendRight.changeBeats(2.5).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.75),

          Stand +
          DodgeRight.changeBeats(3.5) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2.5).scale(3.0,2.0) +
          HingeRight +
          ExtendRight.changeBeats(2.5).scale(3.0,1.5) +
          BelleWheel.scale(1.0,0.75)
      ]),

    AnimatedCall('Four Ladies Chain 1/4',
      formation:Formation('Static Square'),
      from:'Static Square',group:' ',isGenderSpecific:true,fractions:'6.5',difficulty: 2,
      paths:[
          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.5,1.0) +
          BelleWheel.scale(1.0,0.75),

          DodgeRight.changeBeats(2) +
          UmTurnLeft.changeBeats(2).changehands(Hands.RIGHT).skew(0.0,0.5) +
          BeauWheel.scale(0.5,0.75),

          ExtendLeft.changeBeats(2).scale(2.0,3.0) +
          LeadLeft.changeBeats(2).changehands(Hands.LEFT).scale(1.5,1.0) +
          BelleWheel.scale(1.0,0.75)
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formation('Two-Faced Line RH'),
      from:'Two-Faced Line',fractions:'3',difficulty: 1,
        isGenderSpecific: true,
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight +
          HingeLeft +
          BelleWheel
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formation('Compact Two-Faced Line RH'),
      from:'Compact Two-Faced Line',fractions:'3',difficulty: 1,noDisplay: true,
        isGenderSpecific: true,
      paths:[
          QuarterRight.changeBeats(3) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight.scale(0.5,0.5) +
          HingeLeft +
          BelleWheel
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formation('Wave LH'),
      from:'Left-Hand Wave',difficulty: 1,
        isGenderSpecific: true,
      paths:[
          QuarterLeft.changeBeats(3).skew(0.0,1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight +
          HingeLeft +
          BelleWheel
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formation('Two-Faced Lines RH'),
      from:'Two-Faced Lines',fractions:'3',difficulty: 1,
        isGenderSpecific: true,
      paths:[
          QuarterRight.changeBeats(3).skew(0.0,-1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight +
          HingeLeft +
          BelleWheel,

          SwingRight +
          HingeLeft +
          BelleWheel,

          QuarterRight.changeBeats(3).skew(0.0,-1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5)
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formation('Ocean Waves LH BGGB'),
        isGenderSpecific: true,
      from:'Left-Hand Waves',fractions:'3',difficulty: 1,
      paths:[
          QuarterLeft.changeBeats(3).skew(0.0,1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5),

          SwingRight +
          HingeLeft +
          BelleWheel,

          SwingRight +
          HingeLeft +
          BelleWheel,

          QuarterLeft.changeBeats(3).skew(0.0,1.0) +
          UmTurnLeft.changeBeats(1.5) +
          BeauWheel.scale(0.5,0.5)
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formation('Two-Faced Tidal Line RH'),
      from:'Tidal Two-Faced Line',fractions:'3',difficulty: 2,
        isGenderSpecific: true,
      paths:[
          QuarterRight.changeBeats(3) +
          UmTurnLeft.changeBeats(1.5).skew(0.5,-0.5) +
          BeauWheel.scale(0.5,0.75),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.75),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.75),

          QuarterRight.changeBeats(3) +
          UmTurnLeft.changeBeats(1.5).skew(0.5,-0.5) +
          BeauWheel.scale(0.5,0.75)
      ]),

    AnimatedCall('Chain Down the Line',
      formation:Formation('Tidal Wave LH BGGB'),
      from:'Tidal Left-Hand Wave',fractions:'3',difficulty: 2,
        isGenderSpecific: true,
      paths:[
          QuarterLeft.changeBeats(3) +
          QuarterLeft.changeBeats(.75) +
          BackHingeRight.changeBeats(.75).scale(0.5,0.5) +
          BeauWheel.scale(0.5,0.75),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.75),

          SwingRight.scale(0.5,0.5) +
          HingeLeft.scale(0.5,0.5) +
          BelleWheel.scale(0.5,0.75),

          QuarterLeft.changeBeats(3) +
          QuarterLeft.changeBeats(.75) +
          BackHingeRight.changeBeats(.75).scale(0.5,0.5) +
          BeauWheel.scale(0.5,0.75)
      ]),
  ];

