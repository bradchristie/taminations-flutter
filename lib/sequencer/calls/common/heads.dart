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

import '../../../dancer_model.dart';
import '../../../extensions.dart';
import '../../call_context.dart';
import 'fliter_actives.dart';

class Heads extends FilterActives {

  @override var help = 'If the dancers are a squared set, Heads refers to those'
      ' at the head positions.  Otherwise, Heads refers to the original heads.';

  Heads(super.name);

  @override
  bool isActive(DancerModel d, CallContext ctx) =>
      ctx.isSquare()
          ? d.location.x.abs().isAbout(3.0)
          : d.numberCouple=='1' || d.numberCouple=='3';

}