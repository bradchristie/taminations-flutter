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

import 'package:taminations/sequencer/call_error.dart';
import 'package:taminations/sequencer/calls/coded_call.dart';

import '../../dancer.dart';
import '../call_context.dart';
import '../../extensions.dart';

///   Parent class of all classes that select a group of dancers
///   such as boys, leaders, centers, belles
abstract class FilterActives extends CodedCall {

  FilterActives(String name) : super(name);

  ///  Child classes need to override the isActive method
  ///  according to which dancers should be selected
  bool isActive(Dancer d, [CallContext ctx]);

  @override
  Future<void> performCall(CallContext ctx, [int stackIndex = 0]) async {
    var actives = ctx.actives.clone();
    for (var d in actives) {
      d.data.active = isActive(d,ctx);
    }
    if (ctx.actives.isEmpty)
      throw CallError("Unable to identify any $name");
  }

}