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
import '../c1/but.dart' as c1;

  final List<AnimatedCall> TallyHo = [

    AnimatedCall('Tally Ho',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves',parts:'2;3',
      paths:[
          Forward_2 +
          HingeRight +
          Forward_2.changeBeats(1.5) +
          CastLeft,

          LeadLeft.changeBeats(2) +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,3.0),

          Forward_2 +
          HingeRight +
          LeadRight +
          Forward_2,

          LeadRight.changeBeats(2).scale(3.0,3.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('Ocean Waves RH BGGB'),
      from:'Right-Hand Waves to Partner',parts:'2;3',
      paths:[
          Forward_2 +
          HingeRight +
          Forward_2.changeBeats(1.5) +
          CastLeft,

          LeadLeft.changeBeats(2) +
          SwingRight +
          LeadRight.changeBeats(3).scale(3.0,3.0),

          Forward_2 +
          HingeRight +
          LeadRight +
          Forward_2,

          LeadRight.changeBeats(2).scale(3.0,3.0) +
          SwingRight +
          CastLeft
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('Ocean Waves LH BGGB'),
      from:'Left-Hand Waves',parts:'2;3',
      paths:[
          LeadLeft.changeBeats(2).scale(3.0,3.0) +
          SwingLeft +
          CastRight,

          Forward_2 +
          HingeLeft +
          LeadLeft +
          Forward_2,

          LeadRight.changeBeats(2) +
          SwingLeft +
          LeadLeft.changeBeats(3).scale(3.0,3.0),

          Forward_2 +
          HingeLeft +
          Forward_2.changeBeats(1.5) +
          CastRight
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('', dancers:[
        DancerModel.fromData(gender:Gender.BOY,x:3,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:2,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:2,angle:270),
  ]),
      from:'Normal Lines',parts:'2;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          ExtendLeft.changeBeats(4).scale(3.0,2.0),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.0) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          ExtendLeft.changeBeats(2).scale(2.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4).scale(3.0,1.5)
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('Lines Facing Out'),
      from:'Lines Facing Out',parts:'3;3',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,2.0),

          QuarterLeft.changeBeats(3).skew(-1.0,1.0) +
          QuarterRight.changeBeats(1.5).changehands(Hands.RIGHT).skew(1.0,0.0) +
          LeadRight +
          SwingLeft.scale(0.5,0.5).skew(0.0,-0.5) +
          HingeLeft.scale(1.0,0.5),

          QuarterRight.changeBeats(3).skew(0.0,-1.0) +
          HingeRight.changeBeats(1.5) +
          Forward.changeBeats(1.5) +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.0),

          LeadRight.changeBeats(3).scale(2.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5).skew(0.0,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('Inverted Lines Ends Facing Out'),
      from:'Inverted Lines, Ends Facing Out',parts:'3;3',
      paths:[
          LeadLeft.changeBeats(3).scale(1.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,2.0),

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          Forward.changeBeats(1.5) +
          CastLeft,

          ExtendLeft.changeBeats(3).scale(2.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          LeadRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,1.0),

          LeadRight.changeBeats(3).scale(2.0,3.0) +
          SwingRight.scale(0.5,0.5) +
          CastLeft
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('Inverted Lines Ends Facing In'),
      from:'Inverted Lines, Ends Facing In',parts:'2;3',
      paths:[
          ExtendLeft.changeBeats(2).scale(2.0,1.0) +
          SwingRight.scale(0.5,0.5) +
          CastLeft,

          QuarterLeft.changeBeats(2).skew(0.0,1.0) +
          QuarterRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          LeadRight +
          Forward_2.changeBeats(4.5),

          LeadRight.changeBeats(2) +
          HingeRight.changeBeats(1) +
          Forward_2 +
          CastLeft,

          Forward_2 +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,2.0)
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('Two-Faced Lines RH'),
      from:'Right-Hand Two-Faced Lines',parts:'3;3',
      paths:[
          Forward_2.changeBeats(3).changehands(Hands.RIGHT) +
          LeadRight.changeBeats(1.5).scale(1.0,1.5) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          CastLeft,

          Forward_2.changeBeats(3).changehands(Hands.LEFT) +
          QuarterLeft.skew(-1.0,0.5) +
          LeadRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,2.5),

          LeadRight.changeBeats(3).changehands(Hands.LEFT) +
          FlipLeft +
          LeadLeft.changeBeats(4.5).scale(3.0,3.0),

          LeadRight.changeBeats(3).changehands(Hands.RIGHT).scale(3.0,3.0) +
          RunRight +
          CastLeft
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('Two-Faced Lines LH'),
      from:'Left-Hand Two-Faced Lines',parts:'3;3',
      paths:[
          LeadLeft.changeBeats(3).changehands(Hands.LEFT).scale(3.0,3.0) +
          FlipLeft +
          BackHingeRight +
          BackHingeRight +
          BackHingeRight,

          LeadLeft.changeBeats(3).changehands(Hands.RIGHT) +
          RunRight +
          LeadRight.changeBeats(4.5).scale(3.0,3.0),

          Forward_2.changeBeats(3).changehands(Hands.RIGHT) +
          LeadRight.changeBeats(1.5).scale(1.0,0.5) +
          LeadRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,0.5),

          Forward_2.changeBeats(3).changehands(Hands.LEFT) +
          QuarterLeft.skew(-1.0,1.5) +
          Forward.changeBeats(1.5).scale(1.5,1.0) +
          CastLeft
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('Trade By'),
      from:'Trade By',parts:'1;3.5',
      paths:[
          QuarterLeft.skew(0.0,1.0) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4).scale(3.0,2.0),

          LeadRight +
          SwingRight.scale(0.5,0.5) +
          CastLeft,

          Forward +
          HingeRight.scale(1.0,0.5) +
          LeadRight.changeBeats(4).scale(1.5,3.0),

          ExtendLeft +
          HingeRight.scale(1.0,0.5) +
          Forward.changeBeats(2).scale(1.5,1.5) +
          CastLeft
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('T-Bone URLU'),
      from:'T-Bones 1',parts:'1;3',
      paths:[
          ExtendLeft +
          SwingRight.scale(0.5,0.5) +
          SwingLeft +
          HingeLeft,

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          Forward.changeBeats(1.5) +
          SwingLeft +
          HingeLeft,

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          LeadRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,1.0),

          Forward +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,2.0)
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('T-Bone LUUR'),
      from:'T-Bones 2',parts:'1;3',
      paths:[
          LeadRight.changeBeats(1) +
          SwingRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5),

          QuarterLeft.changeBeats(1).skew(0.0,1.0) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,1.5),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          Forward.changeBeats(1.5) +
          ExtendLeft.changeBeats(4.5).scale(2.5,2.0),

          ExtendLeft.scale(1.0,0.5) +
          HingeRight.scale(1.0,0.5) +
          LeadRight +
          SwingLeft.scale(0.5,0.5) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('T-Bone LRDU'),
      from:'T-Bones 3',parts:'1.5;3',
      paths:[
          LeadRight +
          SwingRight.scale(0.5,0.5) +
          CastLeft,

          Forward.changeBeats(1.5) +
          QuarterRight.changehands(Hands.RIGHT).skew(1.0,0.0) +
          LeadRight +
          ExtendLeft.changeBeats(4.5).scale(2.0,1.0),

          LeadRight +
          HingeRight +
          Forward.changeBeats(1.5) +
          CastLeft,

          Forward.changeBeats(1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(3.0,2.0)
      ]),

    AnimatedCall('Tally Ho',
      formation:Formation('T-Bone UDLR'),
      from:'T-Bones 4',parts:'1.5;3',
      paths:[
          Forward.changeBeats(1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(3.0,2.0),

          LeadLeft +
          HingeLeft +
          Forward.changeBeats(1.5) +
          CastRight,

          Forward.changeBeats(1.5) +
          QuarterLeft.changehands(Hands.LEFT).skew(1.0,0.0) +
          LeadLeft +
          ExtendRight.changeBeats(4.5).scale(2.0,1.0),

          LeadLeft +
          SwingLeft.scale(0.5,0.5) +
          CastRight
      ]),
    c1.But.where((tam) =>
      tam.title == 'Tally Ho, But Explode the Wave').first.xref(title: 'Tally Ho, But Explode the Wave').xref(group: ' '),
  ];

