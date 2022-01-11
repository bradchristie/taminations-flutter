/*
 *     Copyright 2022 Brad Christie
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

class Flip extends Action {

  Flip(String name) : super(name);

  @override
  Path performOne(Dancer d, CallContext ctx) {
    String dir;
    if (name == 'Flip Left' )
      dir = 'Left' ;
    else if (name == 'Flip Right' )
      dir = 'Right' ;
    else if (name == 'Flip In' )
      dir = d.isCenterLeft ? 'Left'  : 'Right' ;
    else if (name == 'Flip Out' )
      dir = d.isCenterLeft ? 'Right'  : 'Left' ;
    else
      throw CallError('Flip how?' );
    return TamUtils.getMove('Flip $dir' );
  }

}