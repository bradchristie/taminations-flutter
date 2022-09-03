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

class TrailToADiamond extends ActivesOnlyAction {

  @override final level = LevelData.C2;
  @override var help = 'Leaders Trail Off, Trailers meet and Hinge';
  @override var helplink = 'c2/peel_to_a_diamond';
  TrailToADiamond(name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {
    //  All boxes, waves, columns are covered in XML
    //  so we only need to handle t-bones here
    await ctx.applyCalls('Leaders Do Your Part Trail to a Diamond'
        ' While Trailers Do Your Part Trail to a Diamond');
  }

}