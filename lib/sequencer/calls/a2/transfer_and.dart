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

class TransferAnd extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/transfer_and_anything';
  TransferAnd(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    final othercall = name.replaceFirst('Transfer\\s+and\\s*'.ri,'');
    if (othercall.isBlank)
      throw CallError('Transfer and what?');
    ctx.applyCalls('Transfer and');
    ctx.contractPaths();
    ctx.applyCalls('Centers $othercall');
  }

}