/*
 * *     Copyright 2024 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../common.dart';

//  This selects the inner, middle, or outer diamond
//  from formations like a line of 6 with the 2 others off the center
//  Can also select inner and outer diamonds from a thar
class SelectDiamond extends FilterActives {

  SelectDiamond(String name) : super(name);

  @override
  bool isActive(DancerModel d, CallContext ctx) {
    var axisDancers = <DancerModel>[];
    if (d.isOnXAxis) {
      axisDancers = ctx.dancers.where((d2) => d2.isOnXAxis).toList();
    } else if (d.isOnYAxis) {
      axisDancers = ctx.dancers.where((d2) => d2.isOnYAxis).toList();
    } else
      return false;
    var dist = d.location.length;
    var furtherOut = axisDancers.where((d2) => d2.location.length.isGreaterThan(dist)).length;
    var closerIn = axisDancers.where((d2) => d2.location.length.isLessThan(dist)).length;
    if (name.contains('Center|Inside'.ri) && closerIn == 0)
      return true;
    else if (name.contains('Outer|Outside'.ri) && furtherOut == 0)
      return true;
    else if (name.contains('Middle')) {
      if (closerIn > 0 && furtherOut > 0)
        return true;
      else if (closerIn == 0 && furtherOut == 0)
        return true;
    }
    return false;
  }

}