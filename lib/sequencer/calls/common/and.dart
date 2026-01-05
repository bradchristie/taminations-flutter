/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

class And extends FilterActives {

  @override var help = 'Calls can be combined with And.'
  ' If the first call is directed to specific dancers, only those dancers'
  ' will do the second call.  Example: Heads Pass the Ocean And Recycle';

  And(super.name);

  int _index = 0;

  @override
   void performCall(CallContext ctx) {
    _index = ctx.callstack.indexOf(this);
    super.performCall(ctx);
  }

  //  If the previous call was retrieved from XML and has a selector
  //  such as Boys or Heads then we need to filter the actives here
  @override
  bool isActive(DancerModel d, CallContext ctx) {
    var retval = d.isActive;
    for (var call in ctx.callstack.take(_index)) {
      var normWords = normalizeCall(call.name).toLowerCase().split(' ');
      if (normWords.contains('boy'))
        retval &= d.gender == Gender.BOY;
      if (normWords.contains('girl' ))
        retval &= d.gender == Gender.GIRL;
      if (normWords.contains('head'))
        retval &= d.numberCouple.i % 2 == 1;
      if (normWords.contains('side'))
        retval &= d.numberCouple.i % 2 == 0;
      if (normWords.contains('beau'))
        retval &= d.data.beau;
      if (normWords.contains('belle'))
        retval &= d.data.belle;
      if (normWords.contains('lead'))
        retval &= d.data.leader;
      if (normWords.contains('trail'))
        retval &= d.data.trailer;
      if (normWords.contains('center')) {
        if (normWords.contains('very'))
          retval &= d.data.verycenter;
        else
          retval &= d.data.center;
      }
      if (normWords.contains('end'))
        retval &= d.data.end;
    }
    return retval;
  }

}