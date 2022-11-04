/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../common.dart';

class LinesAnythingThru extends Action {

  @override var level = LevelData.C2;
  @override var help = 'Lines (call) Thru: Centers do the call, others Circulate';
  @override var helplink = 'c2/lines_anything_thru';
  LinesAnythingThru(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    var anyCall = name.replaceMatch('Lines\\s*(.*)\\s*Thru'.r, '\\1');
    if (anyCall.isBlank)
      throw CallError('Lines what Thru?');
    ctx.applyCalls('Outer 4 Circulate While Center 4 $anyCall');
    //  Make sure centers and ends are separate and
    //  the program doesn't try to adjust to a 1/4 tag
    ctx.checkCenters();
  }

}