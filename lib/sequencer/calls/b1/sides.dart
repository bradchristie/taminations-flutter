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

import 'package:taminations/dancer.dart';
import 'package:taminations/sequencer/call_context.dart';
import 'package:taminations/sequencer/calls/fliter_actives.dart';
import 'package:taminations/extensions.dart';

class Sides extends FilterActives {

  Sides(String name) : super(name);

  @override
  bool isActive(Dancer d, [CallContext ctx]) =>
      ctx.isSquare()
          ? d.location.y.abs().isAbout(3.0)
          : d.numberCouple=="2" || d.numberCouple=="4";

}