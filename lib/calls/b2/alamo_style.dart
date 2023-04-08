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
import '../../formations.dart';
import '../../moves.dart';

  final List<AnimatedCall> AlamoStyle = [

    AnimatedCall('Allemande Left in the Alamo Style',
      formation:Formations.StaticSquare,
      from:'Static Square',difficulty: 1,
      paths:[
          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.scale(0.5,0.5).skew(0.646,-0.061) +
          SxtnthLeft.changehands(7),

          LeadRight.skew(-0.5,0.0) +
          HingeLeft.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.scale(0.5,0.5).skew(0.061,-0.646) +
          SxtnthRight.changehands(7),

          LeadLeft.changeBeats(3).skew(0.5,0.0) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.scale(0.5,0.5).skew(0.646,-0.061) +
          SxtnthLeft.changehands(7),

          LeadRight.skew(-0.5,0.0) +
          HingeLeft.scale(0.5,0.5) +
          SwingLeft.scale(0.5,0.5) +
          HalfHingeLeft.scale(0.5,0.5).skew(0.061,-0.646) +
          SxtnthRight.changehands(7)
      ]),
  ];

