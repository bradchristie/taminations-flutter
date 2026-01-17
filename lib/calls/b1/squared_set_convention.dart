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
import 'square_thru.dart' as b1;
import 'star_thru.dart' as b1;
import 'ladies_chain.dart' as b1;
import '../b2/touch_a_quarter.dart' as b2;
import 'right_and_left_thru.dart' as b1;
import 'pass_thru.dart' as b1;

final List<AnimatedCall> SquaredSetConvention = [

  b1.SquareThru.where((tam) => tam.title=='Heads Square Thru 4')
      .first.xref(),

  b1.StarThru.where((tam) => tam.title=='Heads Star Thru')
      .first.xref(),

  b2.TouchAQuarter.where((tam) => tam.title=='Heads Touch 1/4')
      .first.xref(),

  b1.LadiesChain.where((tam) => tam.title=='Head Ladies Chain')
      .first.xref(),

  b1.RightAndLeftThru.where((tam) => tam.title=='Heads Right and Left Thru')
  .first.xref(),

  b1.PassThru.where((tam) => tam.title=='Heads Pass Thru')
      .first.xref(),

  b1.SquareThru.where((tam) => tam.title=='Heads Square Thru 3')
      .first.xref(),

  b1.SquareThru.where((tam) =>
              tam.title=='Heads Move In and Square Thru 3')
      .first.xref(),
];