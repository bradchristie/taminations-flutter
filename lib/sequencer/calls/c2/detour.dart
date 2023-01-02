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

class Detour extends Action {

  @override final level = LevelData.C2;
  @override var help = 'Center 4 Counter Rotate, others 1/2 Zoom and Hinge';
  @override var helplink = 'c2/detour';
  Detour() : super('Detour');

  @override
  void perform(CallContext ctx) {
    ctx.subContext(ctx.center(4), (ctx2) {
      ctx2.applyCalls('Box Counter Rotate');
    });
    ctx.subContext(ctx.outer(4), (ctx2) {
      ctx2.applyCalls('Half Zoom','Hinge');
    });
  }

}