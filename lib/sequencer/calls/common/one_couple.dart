/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

class OneCouple extends FilterActives {

  OneCouple(String name) : super(name);

  @override
  bool isActive(DancerModel d, CallContext ctx) {
    if (ctx.isSquare()) {
      if (d.location.x.isAbout(-3.0))
        return name.contains('1');
      else if (d.location.y.isAbout(-3.0))
        return name.contains('2');
      else if (d.location.x.isAbout(3.0))
        return name.contains('3');
      else if (d.location.y.isAbout(3.0))
        return name.contains('4');
      else
        return false;
    }
    else
      return name.contains(d.numberCouple);
  }

}