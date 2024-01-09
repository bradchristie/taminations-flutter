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
import '../b1/circulate.dart' as b1;
import '../b1/pass_thru.dart' as b1;
import '../b2/run.dart' as b2;

  final List<AnimatedCall> PassingRule = [
    b1.PassThru.where((tam) =>
      tam.title == 'Pass Thru' && tam.from == 'Facing Couples').first.xref(title: 'Pass Thru').xref(group: ' '),
    b1.Circulate.where((tam) =>
      tam.title == 'All 8 Circulate' && tam.from == 'Inverted Lines, Ends Facing Out').first.xref(title: 'All 8 Circulate').xref(group: ' '),
    b2.Run.where((tam) =>
      tam.title == 'Ends Cross Run' && tam.from == 'Lines Facing Out').first.xref(title: 'Ends Cross Run').xref(group: ' '),
  ];

