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

import '../../../moves.dart';
import '../common.dart';

//  This is for the now-obsolete one-word calls Zig and Zag
//  Zig-Zag etc are handled in another class
class Zig extends Action {

  @override final level = LevelData.A2;
  @override var helplink = 'a2/zig_and_zag';

  Zig(super.name);

  @override
  void performCall(CallContext ctx) {
    throw CallError('Zig and Zag cannot be used alone. '
        'Instead use Leaders Face Right or Left.'
    );
  }

}