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

import 'package:taminations/sequencer/calls/coded_call.dart';

import '../common.dart';
import '../xml_call.dart';

//  This class is for a fraction before a call
//  such as "3/4 Load the Boat"
class Fraction extends Action {

  var _partBeats = 0.0;
  int _numerator = 0;
  int _denominator = 1;

  Fraction(String name) : super(name) {
    //  Convert "half", "quarter", "3/5" etc into "12","14","35"
    var norm = TamUtils.normalizeCall(name);
    _numerator = norm[0].i;
    _denominator = norm[1].i;
    if (_numerator < 1 || _numerator >= _denominator)
      throw CallError('Use fractions between 0 and 1.');
  }

  @override
  Future<void> perform(CallContext ctx) async {

    final fracctx = ctx.nextActionContext(this) ??
        thrower(CallError('Not able to find call for fraction $name'))!;
    var call = fracctx.callstack.last;

    //  If an XML call, see if we can replace it with a Call with Parts
    if (call is XMLCall) {
      final codedCall = CodedCall.fromName(call.name);
      if (codedCall is CallWithParts) {
        call = codedCall!;
        fracctx.callstack.last = codedCall;
      }
    }

    if (call is CallWithParts) {
      final cwp = call as CallWithParts;
      if (cwp.numberOfParts % _denominator != 0)
        throw CallError('Unable to divide ${call.name} into $_denominator parts.' );
      cwp.numberOfParts = cwp.numberOfParts * _numerator ~/ _denominator;
      await fracctx.performCall();

    } else {
      _partBeats = 0.0;
      await fracctx.performCall();
      if (call is XMLCall && call.found) {
        //  Figure out how many beats are in the fractional call
        //  Calls could have either "parts" or "fractions"
        var parts = call.xelem('parts', '') + call.xelem('fractions', '');
        if (parts.isNotEmpty) {
          var partnums = parts.split(';');
          var numParts = partnums.length + 1;
          if (numParts % _denominator != 0)
            throw CallError(
                'Unable to divide ${call.name} into $_denominator parts.');
          var partsToDo = numParts * _numerator ~/ _denominator;
          _partBeats =
              partnums.take(partsToDo).map((it) => it.d).toList().sum();
        }
      }
      if (_partBeats == 0.0)
        //  No parts or fractions - just take the fractional number of beats
        _partBeats = fracctx.maxBeats() * _numerator / _denominator;

      //  Chop off the excess fraction
      for (var d in fracctx.dancers) {
        Movement? mo;
        while (d.path.beats > _partBeats)
          mo = d.path.pop();
        //  OK if there's no movement, part of nothing is nothing
        if (mo != null) {
          if (d.path.beats < _partBeats)
            d.path.add(mo.clip(_partBeats - d.path.beats));
        }
      }

      //  Make any ajustment needed to match XML animation at fractional point
      if (call is XMLCall && call.found) {
        var xmlctx = CallContext.fromXML(call.xelem, loadPaths: true);
        xmlctx.animate(_partBeats);
        fracctx.animateToEnd();
        var match = fracctx.matchFormations(xmlctx,fuzzy: true);
        if (match == null) {
          throw CallError('Error computing fractional call');
        }
        fracctx.adjustToFormationMatch(match.match,map: match.map);
      }

    }
    fracctx.appendToSource();
  }

}