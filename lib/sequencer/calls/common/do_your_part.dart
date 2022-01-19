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

import '../common.dart';

class DoYourPart extends Action {

  DoYourPart(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    final callName = name.replaceFirst('Do Your Part'.ri,'').trim();
    if (callName.isBlank)
      throw CallError('Do Your Part of what?');
    if (ctx.actives.length == ctx.dancers.length)
      throw CallError('Who is going to Do Your Part?');

    await ctx.subContext(ctx.actives, (dypctx) async {
      //  Currently just works with XML calls
      //  Find the call to do
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
          final allp = tam.childrenNamed('path').map((it) =>
              Path(TamUtils.translatePath(it))).toList();
          final ctx2 = CallContext.fromXML(tam, loadPaths: false);
          final mapping = dypctx.matchFormations(ctx2, sexy: sexy,
              subformation: true, handholds: false, maxError: 2.9);
          if (mapping != null) {
            //  Adjust sequence dancers as needed to match call
            final matchResult = dypctx.computeFormationOffsets(ctx2, mapping);
            //  Perform the call
            await ctx2.applyCalls(callName);
            //  Copy path movements from call to sequence
            for (var i = 0; i < mapping.length; i++) {
              final m = mapping[i];
              // TODO check for esymmetric call!
              dypctx.dancers[i].path.add(allp[m>>1]);
            }
            dypctx.adjustToFormationMatch(matchResult);
            return;
          }

        }
      }
      //  Unable to find call
      throw CallError('Unable to find $callName to match requested dancers');

    });

  }

}