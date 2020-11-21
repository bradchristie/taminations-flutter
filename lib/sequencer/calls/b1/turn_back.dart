/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

import 'package:taminations/math/path.dart';
import 'package:taminations/sequencer/calls/action.dart';
import 'package:taminations/tam_utils.dart';

import '../../../dancer.dart';
import '../../call_context.dart';

class TurnBack extends Action {

  TurnBack() : super("Turn Back");

  @override
  Path performOne(Dancer d, CallContext ctx) =>
      TamUtils.getMove(d.data.beau ? "U-Turn Right" : "U-Turn Left");

}