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
import '../../call_error.dart';
import '../../../tam_utils.dart';

class Adjust extends Action {

  static Map<RegExp,String> formationMap = {
  '.*lines?'.ri : 'Normal Lines' ,
  '.*thar'.ri : 'Thar RH Boys' ,
  '.*square(d)?set'.ri : 'Squared Set' ,
  '.*boxes?'.ri : 'Eight Chain Thru' ,
  '.*columns?'.ri : 'Eight Chain Thru' ,
  '.*14tag'.ri : 'Quarter Tag' ,
  '.*diamonds?'.ri : 'Diamonds RH Girl Points' ,
  '.*tidal(wave|line)?'.ri : 'Tidal Line RH' ,
  '.*hourglass'.ri : 'Hourglass RH BP' ,
  '.*galaxy'.ri : 'Galaxy RH GP' ,
  '.*butterfly'.ri : 'Butterfly RH' ,
  '.*o'.ri : 'O RH'
  };

  Adjust(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    var fname = TamUtils.normalizeCall(name.replaceFirst('Adjust to (an?)? '.ri, '' ));
    String formation;
    for (var r in formationMap.keys) {
      if (fname.matches(r))
        formation = formationMap[r];
    }
    if (formation == null)
      throw CallError('Sorry, don''t know how to $name from here.' );
    var ctx2 = CallContext.fromXML(TamUtils.getFormation(formation));
    var mapping = ctx.matchFormations(ctx2,sexy:false,fuzzy:true,rotate:180,handholds:false, maxError : 3.0)
        ?? thrower(CallError('Unable to match formation to $fname'));
    var matchResult = ctx.computeFormationOffsets(ctx2,mapping,delta:0.3);
    ctx.adjustToFormationMatch(matchResult);
    ctx.noSnap();
  }

}