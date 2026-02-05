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

//  Selects two groups of danceres, such as
//  Head Boys and Side Girls
class DoubleSelector extends FilterActives {

  var selectedDancers = <Dancer>[];

  DoubleSelector(super.name);

  @override
  void performCall(CallContext ctx) {
    selectedDancers = [];
    //  Get the two specifiers
    var specifiers = name.split(' and ');
    if (specifiers.length < 2)
      throw CallError('Internal error parsing selectors');
    //  Find the dancers that fit the first specifier
    ctx.applySpecifier(specifiers[0]);
    selectedDancers.addAll(ctx.actives);
    //  Reset and find dancers that fit the second specifier
    ctx.allActive();
    ctx.applySpecifier(specifiers[1]);
    selectedDancers.addAll(ctx.actives);
    //  Reset and let the super metnod actually select them
    //  using the isActive method
    ctx.allActive();
    super.performCall(ctx);
  }

  @override
  bool isActive(Dancer d, CallContext ctx) {
    return selectedDancers.contains(d);
  }

}