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

  final List<AnimatedCall> Promenade = [

    AnimatedCall('Heads Promenade 1/2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          ExtendRight.changeBeats(3).changehands(6).scale(2.0,4.0) +
          Forward_2.changehands(2) +
          RunLeft.changeBeats(3).changehands(6).skew(2.0,0.0),

          ExtendRight.changeBeats(3).changehands(5).scale(2.0,4.0) +
          Forward_2.changehands(1) +
          RunLeft.changeBeats(3).changehands(5).scale(3.0,3.0).skew(2.0,0.0),

          Forward_2.changehands(2) +
          Stand.changeBeats(3) +
          Back_2.changehands(2),

          Forward_2.changehands(1) +
          Stand.changeBeats(3) +
          Back_2.changehands(1)
      ]),

    AnimatedCall('Sides Promenade 1/2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changehands(2) +
          Stand.changeBeats(3) +
          Back_2.changehands(2),

          Forward_2.changehands(1) +
          Stand.changeBeats(3) +
          Back_2.changehands(1),

          ExtendRight.changeBeats(3).changehands(6).scale(2.0,4.0) +
          Forward_2.changehands(2) +
          RunLeft.changeBeats(3).changehands(6).skew(2.0,0.0),

          ExtendRight.changeBeats(3).changehands(5).scale(2.0,4.0) +
          Forward_2.changehands(1) +
          RunLeft.changeBeats(3).changehands(5).scale(3.0,3.0).skew(2.0,0.0)
      ]),

    AnimatedCall('Heads Promenade 3/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          ExtendRight.changeBeats(2.5).changehands(6).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(2) +
          LeadLeft.changeBeats(2).changehands(6).skew(1.0,0.0) +
          Forward_3.changehands(2) +
          RunLeft.changeBeats(3).changehands(6).skew(2.0,0.0),

          ExtendRight.changeBeats(2.5).changehands(5).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(1) +
          LeadLeft.changeBeats(2).changehands(5).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changehands(1) +
          RunLeft.changeBeats(3).changehands(5).scale(3.0,3.0).skew(2.0,0.0),

          Forward_2.changehands(2),

          Forward_2.changehands(1)
      ]),

    AnimatedCall('Sides Promenade 3/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changehands(2),

          Forward_2.changehands(1),

          ExtendRight.changeBeats(2.5).changehands(6).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(2) +
          LeadLeft.changeBeats(2).changehands(6).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(2) +
          RunLeft.changeBeats(3).changehands(6).skew(2.0,0.0),

          ExtendRight.changeBeats(2.5).changehands(5).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(1) +
          LeadLeft.changeBeats(2).changehands(5).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(1) +
          RunLeft.changeBeats(3).changehands(5).scale(3.0,3.0).skew(2.0,0.0)
      ]),

    AnimatedCall('Heads Promenade Full',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          ExtendRight.changeBeats(2.5).changehands(6).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(2) +
          LeadLeft.changeBeats(2).changehands(6).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(2) +
          LeadLeft.changeBeats(2).changehands(6).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(2) +
          RunLeft.changeBeats(3).changehands(6).skew(2.0,0.0),

          ExtendRight.changeBeats(2.5).changehands(5).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(1) +
          LeadLeft.changeBeats(2).changehands(5).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(1) +
          LeadLeft.changeBeats(2).changehands(5).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(1) +
          RunLeft.changeBeats(3).changehands(5).scale(3.0,3.0).skew(2.0,0.0),

          Forward_2.changehands(2) +
          Stand.changeBeats(11) +
          Back_2.changehands(2),

          Forward_2.changehands(1) +
          Stand.changeBeats(11) +
          Back_2.changehands(1)
      ]),

    AnimatedCall('Sides Promenade Full',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changehands(2) +
          Stand.changeBeats(11) +
          Back_2.changehands(2),

          Forward_2.changehands(1) +
          Stand.changeBeats(11) +
          Back_2.changehands(1),

          ExtendRight.changeBeats(2.5).changehands(6).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(2) +
          LeadLeft.changeBeats(2).changehands(6).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(2) +
          LeadLeft.changeBeats(2).changehands(6).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(2) +
          RunLeft.changeBeats(3).changehands(6).skew(2.0,0.0),

          ExtendRight.changeBeats(2.5).changehands(5).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(1) +
          LeadLeft.changeBeats(2).changehands(5).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(1) +
          LeadLeft.changeBeats(2).changehands(5).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(1) +
          RunLeft.changeBeats(3).changehands(5).scale(3.0,3.0).skew(2.0,0.0)
      ]),

    AnimatedCall('Heads Promenade 1/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          ExtendRight.changeBeats(2).changehands(6).scale(2.0,4.0) +
          QuarterLeft.changeBeats(2).changehands(2),

          ExtendRight.changeBeats(2).changehands(5).scale(2.0,4.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.0,2.0),

          Forward_2.changehands(2),

          Forward_2.changehands(1)
      ]),

    AnimatedCall('Sides Promenade 1/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changehands(2),

          Forward_2.changehands(1),

          ExtendRight.changeBeats(2).changehands(6).scale(2.0,4.0) +
          QuarterLeft.changeBeats(2).changehands(2),

          ExtendRight.changeBeats(2).changehands(5).scale(2.0,4.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.0,2.0)
      ]),

    AnimatedCall('All 4 Couples Promenade 1/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          HingeRight.changeBeats(2).scale(2.0,2.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(0.5,1.0) +
          BackHingeRight.changeBeats(2).skew(0.0,-0.5),

          QuarterRight.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,2.0) +
          HingeLeft.changeBeats(2).skew(0.0,-1.5),

          HingeRight.changeBeats(2).scale(2.0,2.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(0.5,1.0) +
          BackHingeRight.changeBeats(2).skew(0.0,-0.5),

          QuarterRight.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,2.0) +
          HingeLeft.changeBeats(2).skew(0.0,-1.5)
      ]),

    AnimatedCall('All 4 Couples Promenade 1/2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          HingeRight.changeBeats(2).scale(2.0,2.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeRight.changeBeats(2).skew(0.0,-0.5),

          QuarterRight.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeLeft.changeBeats(2).skew(0.0,-1.5),

          HingeRight.changeBeats(2).scale(2.0,2.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeRight.changeBeats(2).skew(0.0,-0.5),

          QuarterRight.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeLeft.changeBeats(2).skew(0.0,-1.5)
      ]),

    AnimatedCall('All 4 Couples Promenade 3/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          HingeRight.changeBeats(2).scale(2.0,2.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeRight.changeBeats(2).skew(0.0,-0.5),

          QuarterRight.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeLeft.changeBeats(2).skew(0.0,-1.5),

          HingeRight.changeBeats(2).scale(2.0,2.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeRight.changeBeats(2).skew(0.0,-0.5),

          QuarterRight.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeLeft.changeBeats(2).skew(0.0,-1.5)
      ]),

    AnimatedCall('All 4 Couples Promenade Full',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          HingeRight.changeBeats(2).scale(2.0,2.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeRight.changeBeats(2).skew(0.0,-0.5),

          QuarterRight.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeLeft.changeBeats(2).skew(0.0,-1.5),

          HingeRight.changeBeats(2).scale(2.0,2.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadLeft.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeRight.changeBeats(2).skew(0.0,-0.5),

          QuarterRight.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadLeft.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeLeft.changeBeats(2).skew(0.0,-1.5)
      ]),

    AnimatedCall('Four Boys Promenade',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',isGenderSpecific:true,
      paths:[
          LeadRight.scale(1.5,1.0) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(2.0,0.5) +
          QuarterLeft.skew(0.0,-1.0),

          Path(),

          LeadRight.scale(1.5,1.0) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(2.0,0.5) +
          QuarterLeft.skew(0.0,-1.0),

          Path()
      ]),

    AnimatedCall('Four Girls Promenade',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',isGenderSpecific:true,
      paths:[
          Path(),

          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5),

          Path(),

          ExtendRight.changeBeats(3).scale(3.0,0.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          LeadLeft.scale(1.5,1.5) +
          QuarterLeft.changeBeats(2).skew(1.0,-1.5)
      ]),

    AnimatedCall('Single File Promenade',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          QuarterRight.changeBeats(1).skew(0.1716,-1.0) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft_12.changeBeats(1.5).scale(2.828,2.828) +
          QuarterLeft.changeBeats(1).skew(1.414,0.0) +
          EighthLeft.changeBeats(.5),

          EighthRight.changeBeats(1).skew(1.0,-1.0) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft_12.changeBeats(1.5).scale(2.828,2.828) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.1716),

          QuarterRight.changeBeats(1).skew(0.1716,-1.0) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft_12.changeBeats(1.5).scale(2.828,2.828) +
          QuarterLeft.changeBeats(1).skew(1.414,0.0) +
          EighthLeft.changeBeats(.5),

          EighthRight.changeBeats(1).skew(1.0,-1.0) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft.changeBeats(3).scale(2.828,2.828) +
          LeadLeft_12.changeBeats(1.5).scale(2.828,2.828) +
          QuarterLeft.changeBeats(1.5).skew(1.0,-0.1716)
      ]),

    AnimatedCall('Star Promenade',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:0,y:1,angle:180),
        DancerModel.fromData(gender:Gender.GIRL,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:1,y:0,angle:90),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:3,angle:270),
  ]),
      group:' ',
      taminator: '''
    Starting with the 4 men in a star, this animation shows "Pick up your partner
    and Star Promenade".
    ''',
      paths:[
          HingeLeft.changeBeats(3) +
          HingeLeft.changeBeats(3).changehands(3) +
          SwingLeft.changeBeats(6).changehands(3),

          LeadRight_12.changeBeats(4.5).changehands(1).skew(0.879,-0.121) +
          LeadLeft_12.changeBeats(1.5).changehands(1).scale(2.0,2.0) +
          SwingLeft.changeBeats(6).scale(2.0,2.0),

          HingeLeft.changeBeats(3) +
          HingeLeft.changeBeats(3).changehands(3) +
          SwingLeft.changeBeats(6).changehands(3),

          LeadRight_12.changeBeats(4.5).changehands(1).skew(0.879,-0.121) +
          LeadLeft_12.changeBeats(1.5).changehands(1).scale(2.0,2.0) +
          SwingLeft.changeBeats(6).scale(2.0,2.0)
      ]),

    AnimatedCall('Heads Wrong Way Promenade 1/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,4.0) +
          LeadRight.changeBeats(2).changehands(2).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).changehands(5).scale(2.0,4.0) +
          QuarterRight.changeBeats(2).changehands(1),

          Forward_2.changehands(2),

          Forward_2.changehands(1)
      ]),

    AnimatedCall('Sides Wrong Way Promenade 1/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changehands(2),

          Forward_2.changehands(1),

          ExtendLeft.changeBeats(2).changehands(6).scale(2.0,4.0) +
          LeadRight.changeBeats(2).changehands(2).scale(2.0,2.0),

          ExtendLeft.changeBeats(2).changehands(5).scale(2.0,4.0) +
          QuarterRight.changeBeats(2).changehands(1)
      ]),

    AnimatedCall('Heads Wrong Way Promenade 1/2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          ExtendLeft.changeBeats(3).changehands(6).scale(2.0,4.0) +
          Forward_2.changehands(2) +
          RunRight.changeBeats(3).changehands(6).scale(3.0,3.0).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).changehands(5).scale(2.0,4.0) +
          Forward_2.changehands(1) +
          RunRight.changeBeats(3).changehands(5).skew(2.0,0.0),

          Forward_2.changehands(2) +
          Stand.changeBeats(3) +
          Back_2.changehands(2),

          Forward_2.changehands(1) +
          Stand.changeBeats(3) +
          Back_2.changehands(1)
      ]),

    AnimatedCall('Sides Wrong Way Promenade 1/2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changehands(2) +
          Stand.changeBeats(3) +
          Back_2.changehands(2),

          Forward_2.changehands(1) +
          Stand.changeBeats(3) +
          Back_2.changehands(1),

          ExtendLeft.changeBeats(3).changehands(6).scale(2.0,4.0) +
          Forward_2.changehands(2) +
          RunRight.changeBeats(3).changehands(6).scale(3.0,3.0).skew(2.0,0.0),

          ExtendLeft.changeBeats(3).changehands(5).scale(2.0,4.0) +
          Forward_2.changehands(1) +
          RunRight.changeBeats(3).changehands(5).skew(2.0,0.0)
      ]),

    AnimatedCall('Heads Wrong Way Promenade 3/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          ExtendLeft.changeBeats(2.5).changehands(6).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(2) +
          LeadRight.changeBeats(2).changehands(6).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changehands(2) +
          RunRight.changeBeats(3).changehands(6).scale(3.0,3.0).skew(2.0,0.0),

          ExtendLeft.changeBeats(2.5).changehands(5).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(1) +
          LeadRight.changeBeats(2).changehands(5).skew(1.0,0.0) +
          Forward_3.changehands(1) +
          RunRight.changeBeats(3).changehands(5).skew(2.0,0.0),

          Forward_2.changehands(2),

          Forward_2.changehands(1)
      ]),

    AnimatedCall('Sides Wrong Way Promenade 3/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changehands(2),

          Forward_2.changehands(1),

          ExtendLeft.changeBeats(2.5).changehands(6).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(2) +
          LeadRight.changeBeats(2).changehands(6).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changehands(2) +
          RunRight.changeBeats(3).changehands(6).scale(3.0,3.0).skew(2.0,0.0),

          ExtendLeft.changeBeats(2.5).changehands(5).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(1) +
          LeadRight.changeBeats(2).changehands(5).skew(1.0,0.0) +
          Forward_3.changehands(1) +
          RunRight.changeBeats(3).changehands(5).skew(2.0,0.0)
      ]),

    AnimatedCall('Heads Wrong Way Promenade Full',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          ExtendLeft.changeBeats(2.5).changehands(6).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(2) +
          LeadRight.changeBeats(2).changehands(6).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(2) +
          LeadRight.changeBeats(2).changehands(6).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(2) +
          RunRight.changeBeats(3).changehands(6).scale(3.0,3.0).skew(2.0,0.0),

          ExtendLeft.changeBeats(2.5).changehands(5).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(1) +
          LeadRight.changeBeats(2).changehands(5).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(1) +
          LeadRight.changeBeats(2).changehands(5).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(1) +
          RunRight.changeBeats(3).changehands(5).skew(2.0,0.0),

          Forward_2.changehands(2) +
          Stand.changeBeats(11) +
          Back_2.changehands(2),

          Forward_2.changehands(1) +
          Stand.changeBeats(11) +
          Back_2.changehands(1)
      ]),

    AnimatedCall('Sides Wrong Way Promenade Full',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          Forward_2.changehands(2) +
          Stand.changeBeats(11) +
          Back_2.changehands(2),

          Forward_2.changehands(1) +
          Stand.changeBeats(11) +
          Back_2.changehands(1),

          ExtendLeft.changeBeats(2.5).changehands(6).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(2) +
          LeadRight.changeBeats(2).changehands(6).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(2) +
          LeadRight.changeBeats(2).changehands(6).scale(3.0,3.0).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(2) +
          RunRight.changeBeats(3).changehands(6).scale(3.0,3.0).skew(2.0,0.0),

          ExtendLeft.changeBeats(2.5).changehands(5).scale(2.0,4.0) +
          Forward_2.changeBeats(1.5).changehands(1) +
          LeadRight.changeBeats(2).changehands(5).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(1) +
          LeadRight.changeBeats(2).changehands(5).skew(1.0,0.0) +
          Forward_3.changeBeats(2).changehands(1) +
          RunRight.changeBeats(3).changehands(5).skew(2.0,0.0)
      ]),

    AnimatedCall('All 4 Couples Wrong Way Promenade 1/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          QuarterLeft.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadRight.changeBeats(2).changehands(1).scale(1.5,2.0) +
          HingeRight.changeBeats(2).skew(0.0,1.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(2).changehands(2).scale(0.5,1.0) +
          BackHingeLeft.changeBeats(2).skew(0.0,0.5),

          QuarterLeft.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadRight.changeBeats(2).changehands(1).scale(1.5,2.0) +
          HingeRight.changeBeats(2).skew(0.0,1.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(2).changehands(2).scale(0.5,1.0) +
          BackHingeLeft.changeBeats(2).skew(0.0,0.5)
      ]),

    AnimatedCall('All 4 Couples Wrong Way Promenade 1/2',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          QuarterLeft.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadRight.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeRight.changeBeats(2).skew(0.0,1.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeLeft.changeBeats(2).skew(0.0,0.5),

          QuarterLeft.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadRight.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeRight.changeBeats(2).skew(0.0,1.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeLeft.changeBeats(2).skew(0.0,0.5)
      ]),

    AnimatedCall('All 4 Couples Wrong Way Promenade 3/4',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          QuarterLeft.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadRight.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeRight.changeBeats(2).skew(0.0,1.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeLeft.changeBeats(2).skew(0.0,0.5),

          QuarterLeft.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadRight.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeRight.changeBeats(2).skew(0.0,1.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeLeft.changeBeats(2).skew(0.0,0.5)
      ]),

    AnimatedCall('All 4 Couples Wrong Way Promenade Full',
      formation:Formations.StaticSquare,
      from:'Static Square',group:' ',
      paths:[
          QuarterLeft.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadRight.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeRight.changeBeats(2).skew(0.0,1.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeLeft.changeBeats(2).skew(0.0,0.5),

          QuarterLeft.changeBeats(2).changehands(1).skew(1.0,0.0) +
          LeadRight.changeBeats(2).changehands(1).scale(1.5,2.0) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          LeadRight.changeBeats(2).changehands(1).scale(2.5,2.5) +
          HingeRight.changeBeats(2).skew(0.0,1.5),

          HingeLeft.changeBeats(2).scale(2.0,2.0) +
          LeadRight.changeBeats(2).changehands(2).scale(0.5,1.0) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          LeadRight.changeBeats(2).changehands(2).scale(1.5,1.5) +
          BackHingeLeft.changeBeats(2).skew(0.0,0.5)
      ]),
  ];

