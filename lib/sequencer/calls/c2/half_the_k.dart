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

import '../common.dart';

class HalfTheK extends Action {

  @override final level = LevelData.C2;
  @override var help = 'Centers Hinge, others 1/4 Out';
  @override var helplink = 'c2/cross_the_k';
  HalfTheK() : super('Half the K');

  @override
  void perform(CallContext ctx) {
    if (ctx.dancers.where((d) => d.data.center).length == 4 &&
        ctx.dancers.where((d) => d.data.end).length == 4)
      ctx.applyCalls('Centers Hinge While Ends Quarter Out');
    else
      ctx.applyCalls('Center 4 Hinge while Outer 4 1/4 Out');
  }


}