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

import '../../animated_call.dart';
import 'square_thru.dart' as ms;
import 'star_thru.dart' as ms;
import 'ladies_chain.dart' as ms;
import 'touch_a_quarter.dart' as ms;
import 'right_and_left_thru.dart' as ms;
import 'pass_thru.dart' as ms;

final List<AnimatedCall> SquaredSetConvention = [

  ms.SquareThru.where((tam) => tam.title=='Heads Square Thru 4')
      .first.xref(),

  ms.StarThru.where((tam) => tam.title=='Heads Star Thru')
      .first.xref(),

  ms.TouchAQuarter.where((tam) => tam.title=='Heads Touch 1/4')
      .first.xref(),

  ms.LadiesChain.where((tam) => tam.title=='Head Ladies Chain')
      .first.xref(),

  ms.RightAndLeftThru.where((tam) => tam.title=='Heads Right and Left Thru')
  .first.xref(),

  ms.PassThru.where((tam) => tam.title=='Heads Pass Thru')
      .first.xref(),

  ms.SquareThru.where((tam) => tam.title=='Heads Square Thru 3')
      .first.xref(),

  ms.SquareThru.where((tam) =>
              tam.title=='Heads Move In and Square Thru 3')
      .first.xref(),
];