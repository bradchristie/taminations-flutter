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
import '../../../level_data.dart';
import '../../../math/path.dart';
import '../../../dancer.dart';
import '../../call_context.dart';
import '../../call_error.dart';
import '../../../tam_utils.dart';
import '../../../math/vector.dart';
import '../../../extensions.dart';

//  This class implements both Zoom and Zing
class Zoom extends Action {

  @override
  LevelData level;
  Zoom(String name) : super(name) {
    level = name == 'Zing'  ? LevelData.C1 : LevelData.B2;
  }

  @override
  Path performOne(Dancer d, CallContext ctx) {
    var a = d.angleToOrigin;
    var centerLeft = ctx.dancersToRight(d).length == 2 &&
        ctx.dancersToLeft(d).length == 1;
    var centerRight = ctx.dancersToRight(d).length == 1 &&
        ctx.dancersToLeft(d).length == 2;
    String c,c2,c3;
    if (centerLeft || (!centerRight && a > 0)) {
      c = 'Run Right' ;
      c2 = 'Lead Right' ;
      c3 = 'Quarter Left' ;
    } else {
      c = 'Run Left' ;
      c2 = 'Lead Left' ;
      c3 = 'Quarter Right' ;
    }
    var s = centerLeft || centerRight ? 0.25 : 1.0;
    if (d.data.leader) {
      var d2 = ctx.dancerInBack(d) ?? thrower(CallError('Dancer $d cannot $name' ));
      if (!d2.data.active)
        throw CallError('Trailer of dancer $d is not active' );
      var dist = d.distanceTo(d2);
      return TamUtils.getMove(c,
          beats:2.0,
          skew:[-dist/2,0.0].v,
          scale:[1.0,s].v) +
          ((name == 'Zoom' )
              ? TamUtils.getMove(c,
              beats:2.0,
              skew:[dist/2.0,0.0].v,
              scale:[1.0,s].v)
              : TamUtils.getMove(c2,
              beats:2.0,
              scale:[dist/2.0,2.0*s].v));
    } else if (d.data.trailer) {
      var d2 = ctx.dancerInFront(d) ?? thrower(CallError('Dancer $d cannot $name' ));
      if (!d2.data.active)
        throw CallError('Leader of dancer $d is not active' );
      var dist = d.distanceTo(d2);
      return (name == 'Zoom' )
          ? TamUtils.getMove('Forward' ,
          beats:4.0,
          scale:[dist,1.0].v)
          : TamUtils.getMove('Forward' ,
          beats:2.0,
          scale:[dist-1,1.0].v) +
          TamUtils.getMove(c3,
              beats:2.0,
              skew:[0.0,0.0].v);
    } else
      throw CallError('Dancer $d cannot $name' );
  }


}