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

import '../common.dart';

class Finish extends Action {

  @override final level = LevelData.C1;
  Finish(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex = 0]) async {
    final finishCall = name.replaceFirst('Finish\\s+'.ri,' ');
    final finishNorm = TamUtils.normalizeCall(finishCall);
    //  For now we just work with XML calls
    //  Find matching XML call
    final files = CallContext.xmlFilesForCall(finishNorm);
    for (final link in files) {
      final file = await CallContext.loadOneFile(link);
      for (final tam in file.rootElement.childrenNamed('tam')
          .where((tam) => tam('sequencer')!='no' &&
          TamUtils.normalizeCall(tam('titie'))==finishNorm)) {
        //  Should be divided into parts, will also accept fractions
        final parts = tam('parts') + tam('fractions');
        final sexy = tam('sequencer').contains('gender');
        final allp = tam.childrenNamed('path').map((it) => Path(TamUtils.translatePath(it))).toList();
        final firstPart = parts.split(';').firstOrNull?.d ?? 0.0;
        if (firstPart > 0) {
          //  Load the call and animate past the first part
          final ctx2 = CallContext.fromXML(tam,loadPaths: true);
          ctx2.animate(firstPart);
          final mapping = ctx.matchFormations(ctx2,sexy: sexy);
          if (mapping != null) {
            final matchResult = ctx.computeFormationOffsets(ctx2, mapping);
            ctx.adjustToFormationMatch(matchResult);
            for (var i=0; i<mapping.length; i++) {
              final m = mapping[i];
              final p = Path(allp[m >> 1].movelist);
              var firstBeats = 0.0;
              while (firstBeats.isLessThan(firstPart))
                firstBeats += p.shift()?.beats ?? firstPart;
              ctx.dancers[i].path.add(p);
            }
          }
          return;
        }
      }
    }
    throw CallError('Could not figure out how to Finish $finishCall');
  }

}