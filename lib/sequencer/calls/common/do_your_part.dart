/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../../../math/pair.dart';
import '../common.dart';
import '../xml_call.dart';

class DoYourPart extends Action {

  @override var level = LevelData.A1;
  @override var help = '(some dancers) Do Your Part (call):'
      ' Designated dancers do their part of the call, ignoring the other dancers,'
      ' and assuming phantom dancers as needed to do their part of the call.'
      ' The other dancers do not move unless given another call.';
  @override var helplink = 'a1/do_your_part';
  DoYourPart(String name) : super(name);

  Pair<CallContext,List<int>> findYourPart(CallContext dypctx) {
    final callName = name.replaceFirst('Do Your Part'.ri,'').trim();
    final norm = normalizeCall(callName);
    for (var tam in XMLCall.lookupAnimatedCall(norm)) {
      //  See if this is a subset match to the DYP dancers
      final sexy = tam.isGenderSpecific;
      final ctx2 = CallContext.fromFormation(tam.formation);
      final mapping = dypctx.matchFormations(ctx2, sexy: sexy,
          subformation: true, handholds: false, maxError: 2.9);
      if (mapping != null)
        return Pair(ctx2,mapping.map);
    }
    //  Unable to find call
    throw CallError('Unable to find $callName to match requested dancers');
  }

  @override
  void perform(CallContext ctx) {
    final callName = name.replaceFirst('Do Your Part'.ri,'').trim();
    if (callName.isBlank)
      throw CallError('Do Your Part of what?');

    ctx.subContext(ctx.actives, (dypctx) {
      //  Currently just works with formations that match
      //  an XML animation for the call
      //  Find the call to do
      final norm = normalizeCall(callName);
      var bestOffset = double.maxFinite;
      MappingContext? bestMapping;
      CallContext? ctxBest;
      for (var tam in XMLCall.lookupAnimatedCall(norm)) {
        //  See if this is a subset match to the DYP dancers
        final sexy = tam.isGenderSpecific;
        final ctx2 = CallContext.fromFormation(tam.formation);
        final mapping = dypctx.matchFormations(ctx2, sexy: sexy,
            subformation: true, handholds: false, maxError: 2.9, delta: 0.3);
        if (mapping != null) {
          var matchResult = mapping.match;
          var totOffset = matchResult.offsets.fold<double>(0.0, (s, v) => s + v.length);
          if (totOffset < bestOffset) {
            ctxBest = ctx2;
            bestOffset = totOffset;
            bestMapping = mapping;
          }
        }
      }
      if (bestMapping != null && ctxBest != null) {
        //  Adjust sequence dancers as needed to match call
        //  Perform the call
        ctxBest.applyCalls(callName);
        //  Copy path movements from call to sequence
        for (var i = 0; i < bestMapping.map.length; i++) {
          final m = bestMapping.map[i];
          // TODO check for asymmetric call!
          dypctx.dancers[i].path += ctxBest.dancers[m].path;
        }
        dypctx.adjustToFormationMatch(bestMapping.match);
        return;
      }
      //  Unable to find call
      throw CallError('Unable to find $callName to match requested dancers');

    });

  }

}