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

class Sides extends FilterActives {

  @override var help =''' 
  In a Squared Set, use either Original Sides or Side Position
  if just Sides is ambiguous.''';

  Sides(super.name);

  @override
  bool isActive(DancerModel d, CallContext ctx) {
    if (ctx.isSquare()) {
      var originalSide = d.numberCouple == '2' || d.numberCouple == '4';
      var sidePosition = d.location.y.abs().isAbout(3.0);
      if (name.startsWith('Original'))
        return originalSide;
      else if (name.contains('Position'))
        return sidePosition;
      else if (originalSide == sidePosition)
        return originalSide;
      else
        throw CallError('Ambiguous -Use Original Sides or Side Positions');
    }
    if (name.contains('Position'))
      throw CallError('Not in Squared Set');
    return d.numberCouple == '2' || d.numberCouple == '4';
  }

}