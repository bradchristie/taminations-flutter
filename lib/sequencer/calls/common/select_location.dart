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

import '../common.dart';

//  Select dancers based on location on the dance floor
//  relative to the caller (at the bottom of the screen)
class SelectLocation extends FilterActives {

  SelectLocation(super.name);

  @override
  bool isActive(DancerModel d, CallContext ctx) {
    var selector = switch (name.split(' ').first) {
      'Near' => (DancerModel d2) => d2.location.x,
      'Far' => (DancerModel d2) => -d2.location.x,
      'Left' => (DancerModel d2) => -d2.location.y,
      'Right' => (DancerModel d2) => d2.location.y,
      _ => throw CallError('Parse Error')
    };

    //  Default is 4 dancers unless otherwise specified
    var dnum = 4;
    if (norm.matches('.*\\d'.r))
      dnum = norm.last.i;
    //  Sort the dancers by location and take that number
    var dorder = ctx.dancers.sortedBy(selector).take(dnum);
    return dorder.contains(d);
  }

}