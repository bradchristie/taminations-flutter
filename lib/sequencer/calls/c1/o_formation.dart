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

import '../../../formations.g.dart';
import '../common.dart';

class OFormation extends ModifiedFormationConcept {

  @override final level = LevelData.C1;
  @override final conceptName = 'O';
  @override final modifiedFormation = Formations.DoublePassThru;
  @override final baseFormation = Formations.ORH;
  @override String get realCall {
    final getReal = super.realCall;
    if (getReal.lc.endsWith('a wave') || getReal.lc.endsWith('a line'))
      return getReal;
    else
      return getReal.replaceAllMapped('(.*) to .*'.ri, (m) => m[1]!);
  }
  @override var help = 'O (call)\n'
      'Dancers must be in a O Formation, and the call must work for '
      'dancers in the corresponding column-like formation.\n'
      'You can skip the final re-adjustment to the O formation '
      'by appending To Lines / Waves / Columns';
  @override var helplink = 'c1/o_formation';
  OFormation(String name) : super(name);

  @override
  bool reformFormation(CallContext ctx) {
    //  If a different ending formation was given, use that
    if (name.matches('.* to (?!a (line|wave))(a )?.*'.ri)) {
      final formation = Formation.fromName(name);
      if (!ctx.adjustToFormation(formation))
        throw CallError('Unable to form ending formation');
      return true;
    }
    else
      return super.reformFormation(ctx);
  }

}