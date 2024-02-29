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

import '../common.dart';

class TouchBy extends Action {

  @override var level = LevelData.C3A;
  @override var help = '''You can use Touch By <fraction> By <fraction>, 
  and Touch By <fraction> By <another call>.
  Touch By for facing columns of 6 or 8 dancers not yet supported.''';

  TouchBy(super.name);

  @override
  void performCall(CallContext ctx) {
    var fraction = norm.substring(7,9);
    var secondCall = name.replaceFirst('Touch By .*? By '.ri,'');
    if (secondCall.norm.matches('14|12|34'.r))
      secondCall = 'Touch ' + secondCall;
    var centers = ctx.dancers.where((d) => d.data.center).toList();
    var others = ctx.dancers.where((d) => !d.data.center).toList();
    ctx.subContext(centers,(ctx2) {
      ctx2.applyCalls('Touch $fraction and Slide Out');
    });
    ctx.extendPaths();
    ctx.subContext(others,(ctx2) {
      ctx2.applyCalls('Step and $secondCall');
    });
  }

}