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

import '../action.dart';
import '../../../extensions.dart';
import '../../call_context.dart';
import '../../../tam_utils.dart';
import '../../call_error.dart';

//  Base class for calls that are modified columns
//  Butterfly, O, Staggered
abstract class ModifiedFormationConcept extends Action {

  ModifiedFormationConcept(String name) : super(name);

  var conceptName = '' ;
  String get realCall => name.replaceFirst('$conceptName ' .r, '' );
  var formationName = '' ;
  var modifiedFormationName = '' ;

  bool checkFormation(CallContext ctx) {
    var ctx2 = CallContext.fromXML(TamUtils.getFormation(formationName));
    return ctx.matchFormations(ctx2,sexy:false,fuzzy:true,rotate:90,handholds:false) != null;
  }

  bool reformFormation(CallContext ctx) =>
      ctx.adjustToFormation(formationName,rotate:180) ||
      ctx.adjustToFormation(formationName,rotate:90);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    //  Check that the formation matches
    if (!checkFormation(ctx))
      throw CallError('Not $conceptName formation' );
    //  Shift dancers into modified formation
    if (!ctx.adjustToFormation(modifiedFormationName,rotate:180) &&
        !ctx.adjustToFormation(modifiedFormationName,rotate:90))
      throw CallError('Unable to adjust $formationName to $modifiedFormationName' );
    var adjusted = ctx.dancers.where((d) => d.path.movelist.isNotEmpty).toList();

    //  Perform the call
    await ctx.applyCalls(realCall);
    //  Merge the initial adjustment into the start of the call
    for (var d in ctx.dancers) {
      if (adjusted.contains(d) && d.path.movelist.length > 1) {
        var dy = d.path.movelist.first.btranslate.endPoint.y;
        d.path.shift();
        d.path.skewFirst(0.0, dy);
      }
    }

    //  Reform the formation
    if (!reformFormation(ctx))
      throw CallError('Unable to reform $formationName formation' );
  }

}