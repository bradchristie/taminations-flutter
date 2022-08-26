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

import '../common.dart';

class Stagger extends ModifiedFormationConcept {

  @override final level = LevelData.C2;
  @override final conceptName = 'Stagger';
  @override final modifiedFormationName = 'Double Pass Thru';
  Stagger(String name) : super(name);

  String _startFormation = '';
  @override String get formationName => _startFormation;

  //  Starting formation could be blocks leaning left or right
  //  So check both and remember which one
  @override
  bool checkFormation(CallContext ctx) {
    final ctx1 = CallContext.fromXML(TamUtils.getFormation('Facing Blocks Right'));
    final ctx2 = CallContext.fromXML(TamUtils.getFormation('Facing Blocks Left'));
    if (ctx.matchFormations(ctx1,sexy:false,fuzzy:true,rotate:180,handholds:false,delta: 0.3) != null) {
      _startFormation = 'Facing Blocks Right';
      return true;
    }
    if (ctx.matchFormations(ctx2,sexy:false,fuzzy:true,rotate:180,handholds:false,delta: 0.3) != null) {
      _startFormation = 'Facing Blocks Left';
      return true;
    }
    return false;
  }

  @override
  bool reformFormation(CallContext ctx) {
    //  If the dancers have rotated 90 degrees, then we need to switch to
    //  the other block to get the dancers back on the same footprints
    ctx.dancers[0].animate(0.0);
    final a1 = ctx.dancers[0].angleFacing;
    ctx.dancers[0].animateToEnd();
    final a2 = ctx.dancers[0].angleFacing;
    final finalFormation =
    (a1.angleDiff(a2).abs().isAround(pi/2) ^ (_startFormation=='Facing Blocks Right'))
        ? 'Facing Blocks Right'
        : 'Facing Blocks Left';
    return ctx.adjustToFormation(finalFormation,delta: 0.3);
  }

}