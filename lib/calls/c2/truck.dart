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

  final List<AnimatedCall> Truck = [

    AnimatedCall('Truck',
      formation:Formations.ColumnRHGBGB,
      from:'Columns',isGenderSpecific:true,
      paths:[
          DodgeRight.changehands(2),

          DodgeLeft.changehands(2),

          DodgeRight.changehands(2),

          DodgeLeft.changehands(2)
      ]),

    AnimatedCall('Truck',
      formation:Formations.OceanWavesRHBGBG,
      from:'Waves',isGenderSpecific:true,
      paths:[
          DodgeLeft.changehands(2),

          DodgeRight.changehands(3),

          DodgeLeft.changehands(3),

          DodgeRight.changehands(2)
      ]),

    AnimatedCall('Reverse Truck',
      formation:Formation('', [
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:1,angle:0),
        DancerModel.fromData(gender:Gender.BOY,x:-3,y:-1,angle:0),
        DancerModel.fromData(gender:Gender.GIRL,x:-1,y:-1,angle:0),
  ]),
      from:'Double Pass Thru, Girls in Center',isGenderSpecific:true,
      paths:[
          DodgeRight.changehands(2),

          DodgeLeft.changehands(2),

          DodgeRight.changehands(1),

          DodgeLeft.changehands(1)
      ]),
  ];

