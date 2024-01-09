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

  final List<AnimatedCall> ShootTheStar = [

    AnimatedCall('Shoot the Star',
      formation:Formation('Thar RH Boys'),
      from:'Thar',
      paths:[
          SwingLeft +
          SxtnthLeft.changeBeats(2).changehands(0).skew(0.7,1.0),

          SwingLeft +
          SxtnthRight.changeBeats(2).changehands(0).skew(0.7,1.0),

          SwingLeft +
          SxtnthLeft.changeBeats(2).changehands(0).skew(0.7,1.0),

          SwingLeft +
          SxtnthRight.changeBeats(2).changehands(0).skew(0.7,1.0)
      ]),

    AnimatedCall('Shoot the Star',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',
      paths:[
          SwingRight +
          SxtnthRight.changeBeats(2).changehands(0).skew(0.7,-1.0),

          SwingRight +
          SxtnthLeft.changeBeats(2).changehands(0).skew(0.7,-1.0),

          SwingRight +
          SxtnthRight.changeBeats(2).changehands(0).skew(0.7,-1.0),

          SwingRight +
          SxtnthLeft.changeBeats(2).changehands(0).skew(0.7,-1.0)
      ]),

    AnimatedCall('Shoot the Star 3/4 to an Alamo Ring',
      formation:Formation('Thar RH Boys'),
      from:'Thar',
      paths:[
          SwingLeft +
          HingeLeft.skew(0.0,-0.414) +
          SxtnthLeft,

          SwingLeft +
          HingeLeft.skew(0.0,0.414) +
          SxtnthRight,

          SwingLeft +
          HingeLeft.skew(0.0,-0.414) +
          SxtnthLeft,

          SwingLeft +
          HingeLeft.skew(0.0,0.414) +
          SxtnthRight
      ]),

    AnimatedCall('Shoot the Star 3/4 to an Alamo Ring',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',
      paths:[
          SwingRight +
          HingeRight.skew(0.0,0.414) +
          SxtnthRight,

          SwingRight +
          HingeRight.skew(0.0,-0.414) +
          SxtnthLeft,

          SwingRight +
          HingeRight.skew(0.0,0.414) +
          SxtnthRight,

          SwingRight +
          HingeRight.skew(0.0,-0.414) +
          SxtnthLeft
      ]),

    AnimatedCall('Shoot the Star All the Way Around',
      formation:Formation('Thar RH Boys'),
      from:'Thar',
      paths:[
          SwingLeft +
          SwingLeft +
          SxtnthRight.changeBeats(2).changehands(0).skew(0.7,1.0),

          SwingLeft +
          SwingLeft +
          SxtnthLeft.changeBeats(2).changehands(0).skew(0.7,1.0),

          SwingLeft +
          SwingLeft +
          SxtnthRight.changeBeats(2).changehands(0).skew(0.7,1.0),

          SwingLeft +
          SwingLeft +
          SxtnthLeft.changeBeats(2).changehands(0).skew(0.7,1.0)
      ]),

    AnimatedCall('Shoot the Star All the Way Around',
      formation:Formation('Thar LH Boys'),
      from:'Wrong Way Thar',
      paths:[
          SwingRight +
          SwingRight +
          SxtnthLeft.changeBeats(2).changehands(0).skew(0.7,-1.0),

          SwingRight +
          SwingRight +
          SxtnthRight.changeBeats(2).changehands(0).skew(0.7,-1.0),

          SwingRight +
          SwingRight +
          SxtnthLeft.changeBeats(2).changehands(0).skew(0.7,-1.0),

          SwingRight +
          SwingRight +
          SxtnthRight.changeBeats(2).changehands(0).skew(0.7,-1.0)
      ]),
  ];

