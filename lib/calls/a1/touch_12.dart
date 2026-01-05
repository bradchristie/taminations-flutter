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

final List<AnimatedCall> Touch_12 = [

  AnimatedCall('Touch 1/2',
      formation: Formation('Facing Couples'),
      from: 'Facing Couples',
      paths: [
        ExtendLeft_2 + SwingRight,
        Forward_2 + SwingRight
      ]),

  AnimatedCall('Touch 1/2',
      formation: Formation('Normal Lines'),
      from: 'Facing Lines',
      paths: [
        ExtendLeft.changeBeats(2).scale(2, .5) +
            SwingRight.scale(.5, .5),
        ExtendLeft.changeBeats(2).scale(2, .5) +
            SwingRight.scale(.5, .5),
        ExtendLeft.changeBeats(2).scale(2, .5) +
            SwingRight.scale(.5, .5),
        ExtendLeft.changeBeats(2).scale(2, .5) +
            SwingRight.scale(.5, .5),
      ]),

  AnimatedCall('Touch 1/2',
      formation: Formation('Eight Chain Thru'),
      from: 'Eight Chain Thru',
      paths: [
        ExtendLeft.scale(1,2) + SwingRight,
        Forward + SwingRight,
        ExtendLeft.scale(1,2) + SwingRight,
        Forward + SwingRight,
      ]),

  AnimatedCall('Touch 3/4',
      formation: Formation('Facing Couples'),
      from: 'Facing Couples',
      paths: [
        ExtendLeft_2 + CastRight,
        Forward_2 + CastRight
      ]),

  AnimatedCall('Touch 3/4',
      formation: Formation('Normal Lines'),
      from: 'Facing Lines',
      paths: [
        ExtendLeft.changeBeats(2).scale(2, .5) +
            SwingRight.scale(.5, .5) +
            HingeRight.scale(1,.5),
        ExtendLeft.changeBeats(2).scale(2, .5) +
            SwingRight.scale(.5, .5) +
            HingeRight.scale(1,.5),
        ExtendLeft.changeBeats(2).scale(2, .5) +
            SwingRight.scale(.5, .5) +
            HingeRight.scale(1,.5),
        ExtendLeft.changeBeats(2).scale(2, .5) +
            SwingRight.scale(.5, .5) +
            HingeRight.scale(1,.5),
      ]),

  AnimatedCall('Touch 3/4',
      formation: Formation('Eight Chain Thru'),
      from: 'Eight Chain Thru',
      paths: [
        ExtendLeft.scale(1,2) + CastRight,
        Forward + CastRight,
        ExtendLeft.scale(1,2) + CastRight,
        Forward + CastRight,
      ]),


  AnimatedCall('Left Touch 1/2',
      formation: Formation('Facing Couples'),
      from: 'Facing Couples',
      paths: [
        Forward_2 + SwingLeft,
        ExtendRight_2 + SwingLeft,
      ]),

  AnimatedCall('Left Touch 1/2',
      formation: Formation('Normal Lines'),
      from: 'Facing Lines',
      paths: [
        ExtendRight.changeBeats(2).scale(2, .5) +
            SwingLeft.scale(.5, .5),
        ExtendRight.changeBeats(2).scale(2, .5) +
            SwingLeft.scale(.5, .5),
        ExtendRight.changeBeats(2).scale(2, .5) +
            SwingLeft.scale(.5, .5),
        ExtendRight.changeBeats(2).scale(2, .5) +
            SwingLeft.scale(.5, .5),
      ]),

  AnimatedCall('Left Touch 1/2',
      formation: Formation('Eight Chain Thru'),
      from: 'Eight Chain Thru',
      paths: [
        Forward + SwingLeft,
        ExtendRight.scale(1,2) + SwingLeft,
        Forward + SwingLeft,
        ExtendRight.scale(1,2) + SwingLeft,
      ]),

  AnimatedCall('Left Touch 3/4',
      formation: Formation('Facing Couples'),
      from: 'Facing Couples',
      paths: [
        Forward_2 + CastLeft,
        ExtendRight_2 + CastLeft,
      ]),

  AnimatedCall('Left Touch 3/4',
      formation: Formation('Normal Lines'),
      from: 'Facing Lines',
      paths: [
        ExtendRight.changeBeats(2).scale(2, .5) +
            SwingLeft.scale(.5, .5) +
            HingeLeft.scale(1,.5),
        ExtendRight.changeBeats(2).scale(2, .5) +
            SwingLeft.scale(.5, .5) +
            HingeLeft.scale(1,.5),
        ExtendRight.changeBeats(2).scale(2, .5) +
            SwingLeft.scale(.5, .5) +
            HingeLeft.scale(1,.5),
        ExtendRight.changeBeats(2).scale(2, .5) +
            SwingLeft.scale(.5, .5) +
            HingeLeft.scale(1,.5),
      ]),

  AnimatedCall('Left Touch 3/4',
      formation: Formation('Eight Chain Thru'),
      from: 'Eight Chain Thru',
      paths: [
        Forward + CastLeft,
        ExtendRight.scale(1,2) + CastLeft,
        Forward + CastLeft,
        ExtendRight.scale(1,2) + CastLeft,
      ]),

];
