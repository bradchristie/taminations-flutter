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

class SwitchTheLine extends Action {

  @override final level = LevelData.C1;
  @override var helplink = 'c1/switch_the_line';
  SwitchTheLine(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    //  Start with Ends Cross Run
    ctx.applyCalls('Ends Cross Run');
    //  And now make tne centers Run instead of Dodge
    for (final d in ctx.dancers)
      d.animate(0.0);
    for (final d in ctx.dancers.where((it) => it.data.center)) {
      final d2 = d.data.partner;
      if (d2 != null)  // better not be
        d.path = TamUtils.getMove(d.data.beau ? 'Flip Right' : 'Flip Left',
            scale:[1.0,d.distanceTo(d2)/2.0].v);
    }
  }

}