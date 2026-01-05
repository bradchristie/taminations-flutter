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

class Heads extends FilterActives {

  @override var help =''' 
  In a Squared Set, use either Original Heads or Head Position
  if just Heads is ambiguous.''';

  Heads(super.name);

  @override
  bool isActive(DancerModel d, CallContext ctx) {
    if (ctx.isSquare()) {
      var originalHead = d.numberCouple == '1' || d.numberCouple == '3';
      var headPosition = d.location.x.abs().isAbout(3.0);
      if (name.startsWith('Original'))
        return originalHead;
      else if (name.contains('Position'))
        return headPosition;
      else if (originalHead == headPosition)
        return originalHead;
      else
        throw CallError('Ambiguous -Use Original Heads or Head Positions');
    }
    if (name.contains('Position'))
      throw CallError('Not in Squared Set');
    return d.numberCouple == '1' || d.numberCouple == '3';
  }

}