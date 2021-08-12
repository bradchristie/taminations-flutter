/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

import '../action.dart';
import '../call.dart';
import '../../../extensions.dart';
import '../../call_context.dart';
import '../../call_error.dart';
import '../../../tam_utils.dart';
import '../xml_call.dart';
import '../../../math/movement.dart';

class Fraction extends Action {

  Fraction(String name) : super(name) {
    _call = this;
    //  Convert "half", "quarter", "3/5" etc into "12","14","35"
    var norm = TamUtils.normalizeCall(name);
    _numerator = norm[0].i;
    _denominator = norm[1].i;
  }

  var _prevBeats = 0.0;
  var _partBeats = 0.0;
  int _numerator = 0;
  int _denominator = 1;
  late Call _call;

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    if (stackIndex >= ctx.callstack.length - 1)
      throw CallError('$name of what?' );
    //  Steal the next call off the stack
    _call = ctx.callstack[stackIndex+1];
    //  For XML calls there should be an explicit number of parts
    if (_numerator < 1 || _numerator >= _denominator)
      throw CallError('Use fractions between 0 and 1.');
    if (_call is XMLCall) {
      //  Figure out how many beats are in the fractional call
      //  Calls could have either "parts" or "fractions"
      var xmlCall = _call as XMLCall;
      var parts = xmlCall.xelem('parts' ,'' ) + xmlCall.xelem('fractions' ,'' );
      if (parts.isNotEmpty) {
        var partnums = parts.split(';' );
        var numParts = partnums.length + 1;
        if (numParts % _denominator != 0)
          throw CallError('Unable to divide ${_call.name} into $_denominator parts.' );
        var partsToDo = numParts * _numerator ~/ _denominator;
        _partBeats = partnums.take(partsToDo).map((it) => it.d).toList().sum();
      }
      //  If parts is empty, will calculate fraction below
      //  in postProcess
    }
    _prevBeats = ctx.maxBeats();
  }

  //  Call is performed between these two methods

  @override
  void postProcess(CallContext ctx, [int stackIndex = 0]) {
    //  Coded calls so far do not have explicit parts
    //  so just divide them by the given fraction
    //  Also if an XML call does not have parts just divide the beats
    if (_call is Action || _partBeats == 0.0)
      _partBeats = (ctx.maxBeats() - _prevBeats) * _numerator / _denominator;

    //  Chop off the excess fraction
    for (var d in ctx.dancers) {
      Movement? mo;
      while (d.path.beats > _prevBeats + _partBeats)
        mo = d.path.pop();
      //  OK if there's no movement, part of nothing is nothing
      if (mo != null) {
        if (d.path.beats < _prevBeats + _partBeats)
          d.path.add(mo.clip(_prevBeats + _partBeats - d.path.beats));
      }
    }
    super.postProcess(ctx,stackIndex);
  }

}