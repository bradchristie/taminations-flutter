/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

import '../coded_call.dart';
import '../common.dart';
import '../xml_call.dart';

class Finish extends Action {

  @override final level = LevelData.C1;
  @override var help = 'Finish is the same as Skip the First Part';
  @override var helplink = 'c1/finish';
  Finish(String name) : super(name);

  @override
  void perform(CallContext ctx) {
    final finishCall = name.replaceFirst('Finish\\s+'.ri,' ');
    if (finishCall.isBlank)
      throw CallError('Finish what?');
    final finishNorm = normalizeCall(finishCall);
    //  First look for XML calls
    //  Find matching XML call
    for (var entry in XMLCall.lookupAnimatedCall(finishNorm).entries) {
      for (var tam in entry.value) {
        //  Should be divided into parts, will also accept fractions
        final parts = tam.parts.isNotEmpty ? tam.parts : tam.fractions;
        final sexy = tam.isGenderSpecific;
        final allp = tam.formation.dancers.map((d) => d.path).toList();
        final firstPart = parts.isBlank ? 0.0 : (parts.split(';').firstOrNull?.d ?? 0.0);
        if (firstPart > 0) {
          //  Load the call and animate past the first part
          final ctx2 = CallContext.fromFormation(tam.formation,withPaths: true);
          ctx2.animate(firstPart);
          final mapping = ctx.matchFormations(ctx2,sexy: sexy);
          if (mapping != null) {
            final matchResult = mapping.match;
            ctx.adjustToFormationMatch(matchResult);
            for (var i=0; i<mapping.map.length; i++) {
              final m = mapping.map[i];
              final p = Path(allp[m].movelist);
              var firstBeats = 0.0;
              while (firstBeats.isLessThan(firstPart))
                firstBeats += p.shift()?.beats ?? firstPart;
              ctx.dancers[i].path.add(p);
            }
            return;
          }
        }
      }
    }

    //  If that didn't work, try a coded call
    final codedCall = CodedCall.fromName(finishCall);
    if (codedCall is CallWithParts) {
      (codedCall as CallWithParts).finish(ctx);
      return;
    }

    //  Nothing worked
    throw CallError('Could not figure out how to Finish $finishCall');
  }

}