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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> Press = [

    AnimatedCall('Boys Press Right',
      formation:Formations.ColumnLHGBGB,
      from:'Waves',group:' ',isGenderSpecific:true,
      paths:[
          ExtendRight.changeBeats(3).scale(2.0,2.0),

          Path(),

          ExtendRight.changeBeats(3).scale(2.0,2.0),

          Path()
      ]),
  ];

