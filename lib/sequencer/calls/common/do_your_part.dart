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

class DoYourPart extends Action {

  DoYourPart(String name) : super(name);

  Future<Pair<CallContext,List<int>>> findYourPart(CallContext dypctx) async {
    final callName = name.replaceFirst('Do Your Part'.ri,'').trim();
    final norm = TamUtils.normalizeCall(callName);
    final files = CallContext.xmlFilesForCall(norm.toLowerCase());
    for (final link in files) {
      final file = await CallContext.loadOneFile(link);
      for (final tam in file.rootElement.childrenNamed('tam')
          .where((tam) =>
      tam('sequencer') != 'no' &&
          TamUtils.normalizeCall(tam('title')).toLowerCase() ==
              norm.toLowerCase())) {
        //  See if this is a subset match to the DYP dancers
        final sexy = tam('sequencer', '').contains('gender');
        final ctx2 = CallContext.fromXML(tam, loadPaths: false);
        final mapping = dypctx.matchFormations(ctx2, sexy: sexy,
            subformation: true, handholds: false, maxError: 2.9);
        if (mapping != null)
          return Pair(ctx2,mapping);
      }
    }
    //  Unable to find call
    throw CallError('Unable to find $callName to match requested dancers');
  }

  @override
  Future<void> perform(CallContext ctx) async {
    final callName = name.replaceFirst('Do Your Part'.ri,'').trim();
    if (callName.isBlank)
      throw CallError('Do Your Part of what?');

    await ctx.subContext(ctx.actives, (dypctx) async {
      //  Currently just works with formations that match
      //  an XML animation for the call
      //  Find the call to do
      final norm = TamUtils.normalizeCall(callName);
      final files = CallContext.xmlFilesForCall(norm.toLowerCase());
      var bestOffset = double.maxFinite;
      List<int>? bestMapping;
      CallContext? ctxBest;
      FormationMatchResult? bestResult;
      for (final link in files) {
        final file = await CallContext.loadOneFile(link);
        for (final tam in file.rootElement.childrenNamed('tam')
            .where((tam) =>
        tam('sequencer') != 'no' &&
            TamUtils.normalizeCall(tam('title')).toLowerCase() ==
                norm.toLowerCase())) {
          //  See if this is a subset match to the DYP dancers
          final sexy = tam('sequencer', '').contains('gender');
          final ctx2 = CallContext.fromXML(tam, loadPaths: false);
          final mapping = dypctx.matchFormations(ctx2, sexy: sexy,
              subformation: true, handholds: false, maxError: 2.9);
          if (mapping != null) {
            var matchResult = dypctx.computeFormationOffsets(ctx2, mapping, delta: 0.2);
            var totOffset = matchResult.offsets.fold<double>(0.0, (s, v) => s + v.length);
            if (totOffset < bestOffset) {
              ctxBest = ctx2;
              bestOffset = totOffset;
              bestMapping = mapping;
              bestResult = matchResult;
            }
          }

        }
      }
      if (ctxBest != null) {
        //  Adjust sequence dancers as needed to match call
        //  Perform the call
        await ctxBest.applyCalls(callName);
        //  Copy path movements from call to sequence
        for (var i = 0; i < bestMapping!.length; i++) {
          final m = bestMapping[i];
          // TODO check for asymmetric call!
          dypctx.dancers[i].path.add(ctxBest.dancers[m].path);
        }
        dypctx.adjustToFormationMatch(bestResult!);
        return;
      }
      //  Unable to find call
      throw CallError('Unable to find $callName to match requested dancers');

    });

  }

}