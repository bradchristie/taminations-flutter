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

  final List<AnimatedCall> SplitSquareThruVariations = [

    AnimatedCall('Split Square Chain the Top',
      formation:Formations.TmBoneULRU,
      from:'Ends Facing',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Stand +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Stand +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Split Square Chain the Top',
      formation:Formations.TmBoneRUUL,
      from:'Centers Facing',
      paths:[
          Stand +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          Stand +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Split Square Chain the Top',
      formation:Formations.TmBoneRLUU,
      from:'Left Side of Line Facing',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          Stand +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          Stand +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Split Square Chain the Top',
      formation:Formations.TmBoneUURL,
      from:'Right Side of Line Facing',
      paths:[
          Stand +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          Stand +
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Split Square Chain the Top',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.GIRL,x:1,y:3,angle:270),
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1.5,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:0,y:.5,angle:180),
  ]),
      from:'Center Wave',
      paths:[
          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          ExtendRight.changeBeats(1.5).scale(1.0,0.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadLeft.scale(1.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          CastRight.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5),

          LeadRight.scale(0.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          LeadLeft.changeBeats(4.5).scale(1.5,1.5) +
          SwingLeft.scale(0.5,0.5) +
          ExtendLeft.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Split Dixie Style to a Wave',
      formation:Formations.TmBoneULRU,
      from:'Ends Facing',parts:'2.5',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight +
          Forward.scale(0.75,1.0) +
          HingeLeft.scale(0.75,1.0),

          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,1.0) +
          QuarterLeft.changehands(1).skew(1.25,0.0),

          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          HingeLeft.scale(1.25,1.0),

          PullLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.scale(0.75,1.0) +
          QuarterLeft.changehands(1).skew(0.75,0.0)
      ]),

    AnimatedCall('Split Dixie Style to a Wave',
      formation:Formations.TmBoneRUUL,
      from:'Centers Facing',parts:'2.5',
      paths:[
          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,1.0) +
          QuarterLeft.changehands(1).skew(1.25,0.0),

          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          HingeLeft.scale(1.25,1.0),

          PullLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.scale(0.75,1.0) +
          QuarterLeft.changehands(1).skew(0.75,0.0),

          PullLeft.scale(1.0,0.5) +
          LeadRight +
          Forward.scale(0.75,1.0) +
          HingeLeft.scale(0.75,1.0)
      ]),

    AnimatedCall('Split Dixie Style to a Wave',
      formation:Formations.TmBoneRLUU,
      from:'Left Side of Line Facing',parts:'2.5',
      paths:[
          PullLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.scale(0.75,0.5) +
          HingeLeft.scale(0.75,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight +
          ExtendRight.scale(0.75,0.5) +
          HingeLeft.scale(0.75,0.5),

          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,0.5) +
          HingeLeft.scale(1.25,0.5),

          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,0.5) +
          HingeLeft.scale(1.25,0.5)
      ]),

    AnimatedCall('Split Dixie Style to a Wave',
      formation:Formations.TmBoneUURL,
      from:'Right Side of Line Facing',parts:'2.5',
      paths:[
          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,0.5) +
          HingeLeft.scale(1.25,0.5),

          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,0.5) +
          HingeLeft.scale(1.25,0.5),

          PullLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.scale(0.75,0.5) +
          HingeLeft.scale(0.75,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight +
          ExtendRight.scale(0.75,0.5) +
          HingeLeft.scale(0.75,0.5)
      ]),

    AnimatedCall('Split Dixie Diamond',
      formation:Formations.TmBoneULRU,
      from:'Ends Facing',parts:'5',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight +
          Forward.scale(0.75,1.0) +
          HingeLeft.scale(0.75,1.0) +
          HingeRight,

          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,1.0) +
          QuarterLeft.changehands(1).skew(1.25,0.0) +
          UmTurnLeft,

          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          HingeLeft.scale(1.25,1.0) +
          UmTurnLeft,

          PullLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.scale(0.75,1.0) +
          QuarterLeft.changehands(1).skew(0.75,0.0) +
          HingeRight
      ]),

    AnimatedCall('Split Dixie Diamond',
      formation:Formations.TmBoneRUUL,
      from:'Centers Facing',parts:'5',
      paths:[
          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,1.0) +
          QuarterLeft.changehands(1).skew(1.25,0.0) +
          HingeRight,

          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          HingeLeft.scale(1.25,1.0) +
          HingeRight,

          PullLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.scale(0.75,1.0) +
          QuarterLeft.changehands(1).skew(0.75,0.0) +
          UmTurnLeft,

          PullLeft.scale(1.0,0.5) +
          LeadRight +
          Forward.scale(0.75,1.0) +
          HingeLeft.scale(0.75,1.0) +
          UmTurnLeft
      ]),

    AnimatedCall('Split Dixie Sashay',
      formation:Formations.TmBoneULRU,
      from:'Ends Facing',parts:'2.5',
      paths:[
          PullLeft.scale(1.0,0.5) +
          LeadRight +
          Forward +
          Forward_2.scale(0.75,1.0) +
          HingeLeft.scale(1.0,0.5),

          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,1.0) +
          LeadLeft.changehands(1).scale(1.25,0.5),

          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          LeadLeft.scale(1.25,0.5),

          PullLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.scale(0.75,1.0) +
          Forward_2.scale(0.875,1.0) +
          HingeLeft.scale(1.0,0.5)
      ]),

    AnimatedCall('Split Dixie Sashay',
      formation:Formations.TmBoneRUUL,
      from:'Centers Facing',parts:'2.5',
      paths:[
          Stand.changeBeats(2.5) +
          ExtendRight.scale(0.75,1.0) +
          Forward_2.scale(1.125,1.0) +
          HingeLeft.changehands(1).scale(1.0,0.5),

          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          Forward_2.scale(1.125,1.0) +
          HingeLeft.scale(1.0,0.5),

          PullLeft.scale(1.0,0.5) +
          QuarterLeft.skew(1.0,0.0) +
          ExtendRight.scale(0.75,1.0) +
          LeadLeft.changehands(1).scale(0.75,0.5),

          PullLeft.scale(1.0,0.5) +
          LeadRight +
          Forward.scale(0.75,1.0) +
          LeadLeft.scale(0.75,0.5)
      ]),

    AnimatedCall('Left Split Square Chain the Top',
      formation:Formations.TmBoneULRU,
      from:'Ends Facing',
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadRight.scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Stand +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Stand +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Split Square Chain the Top',
      formation:Formations.TmBoneRUUL,
      from:'Centers Facing',
      paths:[
          Stand +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          Stand +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.changeBeats(2).scale(2.0,0.5)
      ]),

    AnimatedCall('Left Split Square Chain the Top',
      formation:Formations.TmBoneRLUU,
      from:'Left Side of Line Facing',
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Stand +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Stand +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Split Square Chain the Top',
      formation:Formations.TmBoneUURL,
      from:'Right Side of Line Facing',
      paths:[
          Stand +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          Stand +
          ExtendLeft.changeBeats(1.5).scale(1.0,0.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft.scale(0.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          LeadRight.changeBeats(4.5).scale(1.5,1.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadRight.scale(1.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          CastLeft.scale(0.5,0.5) +
          SwingRight.scale(0.5,0.5) +
          ExtendRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Split Dixie Style to a Wave',
      formation:Formations.TmBoneULRU,
      from:'Ends Facing',parts:'2.5',
      paths:[
          PullRight.scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.scale(0.75,1.0) +
          QuarterRight.changehands(2).skew(0.75,0.0),

          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          HingeRight.scale(1.25,1.0),

          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,1.0) +
          QuarterRight.changehands(2).skew(1.25,0.0),

          PullRight.scale(1.0,0.5) +
          LeadLeft +
          Forward.scale(0.75,1.0) +
          HingeRight.scale(0.75,1.0)
      ]),

    AnimatedCall('Left Split Dixie Style to a Wave',
      formation:Formations.TmBoneRUUL,
      from:'Centers Facing',parts:'2.5',
      paths:[
          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          HingeRight.scale(1.25,1.0),

          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,1.0) +
          QuarterRight.changehands(2).skew(1.25,0.0),

          PullRight.scale(1.0,0.5) +
          LeadLeft +
          Forward.scale(0.75,1.0) +
          HingeRight.scale(0.75,1.0),

          PullRight.scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.scale(0.75,1.0) +
          QuarterRight.changehands(2).skew(0.75,0.0)
      ]),

    AnimatedCall('Left Split Dixie Style to a Wave',
      formation:Formations.TmBoneRLUU,
      from:'Left Side of Line Facing',parts:'2.5',
      paths:[
          PullRight.scale(1.0,0.5) +
          LeadLeft +
          ExtendLeft.scale(0.75,0.5) +
          HingeRight.scale(0.75,0.5),

          PullRight.scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.scale(0.75,0.5) +
          HingeRight.scale(0.75,0.5),

          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,0.5) +
          HingeRight.scale(1.25,0.5),

          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,0.5) +
          HingeRight.scale(1.25,0.5)
      ]),

    AnimatedCall('Left Split Dixie Style to a Wave',
      formation:Formations.TmBoneUURL,
      from:'Right Side of Line Facing',parts:'2.5',
      paths:[
          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,0.5) +
          HingeRight.scale(1.25,0.5),

          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,0.5) +
          HingeRight.scale(1.25,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft +
          ExtendLeft.scale(0.75,0.5) +
          HingeRight.scale(0.75,0.5),

          PullRight.scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.scale(0.75,0.5) +
          HingeRight.scale(0.75,0.5)
      ]),

    AnimatedCall('Left Split Dixie Diamond',
      formation:Formations.TmBoneULRU,
      from:'Ends Facing',parts:'5',
      paths:[
          PullRight.scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.scale(0.75,1.0) +
          QuarterRight.changehands(2).skew(0.75,0.0) +
          HingeLeft,

          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          HingeRight.scale(1.25,1.0) +
          UmTurnRight,

          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,1.0) +
          QuarterRight.changehands(2).skew(1.25,0.0) +
          UmTurnRight,

          PullRight.scale(1.0,0.5) +
          LeadLeft +
          Forward.scale(0.75,1.0) +
          HingeRight.scale(0.75,1.0) +
          HingeLeft
      ]),

    AnimatedCall('Left Split Dixie Diamond',
      formation:Formations.TmBoneRUUL,
      from:'Centers Facing',parts:'5',
      paths:[
          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          HingeRight.scale(1.25,1.0) +
          HingeLeft,

          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,1.0) +
          QuarterRight.changehands(2).skew(1.25,0.0) +
          HingeLeft,

          PullRight.scale(1.0,0.5) +
          LeadLeft +
          Forward.scale(0.75,1.0) +
          HingeRight.scale(0.75,1.0) +
          UmTurnRight,

          PullRight.scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.scale(0.75,1.0) +
          QuarterRight.changehands(2).skew(0.75,0.0) +
          UmTurnRight
      ]),

    AnimatedCall('Left Split Dixie Sashay',
      formation:Formations.TmBoneULRU,
      from:'Ends Facing',parts:'2.5',
      paths:[
          PullRight.scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.scale(0.75,1.0) +
          Forward_2.scale(0.875,1.0) +
          HingeRight.scale(1.0,0.5),

          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          LeadRight.scale(1.25,0.5),

          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,1.0) +
          LeadRight.changehands(2).scale(1.25,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft +
          Forward +
          Forward_2.scale(0.75,1.0) +
          HingeRight.scale(1.0,0.5)
      ]),

    AnimatedCall('Left Split Dixie Sashay',
      formation:Formations.TmBoneRUUL,
      from:'Centers Facing',parts:'2.5',
      paths:[
          Stand.changeBeats(2.5) +
          Forward.scale(0.75,1.0) +
          Forward_2.scale(1.125,1.0) +
          HingeRight.scale(1.0,0.5),

          Stand.changeBeats(2.5) +
          ExtendLeft.scale(0.75,1.0) +
          Forward_2.scale(1.125,1.0) +
          HingeRight.changehands(2).scale(1.0,0.5),

          PullRight.scale(1.0,0.5) +
          LeadLeft +
          Forward.scale(0.75,1.0) +
          LeadRight.scale(0.75,0.5),

          PullRight.scale(1.0,0.5) +
          QuarterRight.skew(1.0,0.0) +
          ExtendLeft.scale(0.75,1.0) +
          LeadRight.changehands(2).scale(0.75,0.5)
      ]),
  ];

