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
import '../common/modified_formation_concept.dart';

class Butterfly extends ModifiedFormationConcept {

  @override final level = LevelData.C1;
  @override final conceptName = 'Butterfly';
  @override final modifiedFormationName = 'Double Pass Thru';
  @override final formationName = 'Butterfly RH';
  Butterfly(String name) : super(name);

  @override
  bool reformFormation(CallContext ctx) {
    //  First try the usual way
    if (!super.reformFormation(ctx)) {
      //  That didn't work, we are too far off from a butterfly
      //  So first just concentrate on the centers
      for (final d in ctx.dancers) {
        print('$d ${d.location}');
      }
      final centers = CallContext.fromContext(ctx,dancers:ctx.center(4));
      if (centers.adjustToFormation('Facing Couples Close',rotate: 180)) {
        //  And now use the base method to fix the outer 4
        centers.appendToSource();
        return super.reformFormation(ctx);
      }
      return false;
    }
    return true;
  }

}