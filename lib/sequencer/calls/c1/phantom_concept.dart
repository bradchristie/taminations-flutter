/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

class PhantomConcept extends Action {

  @override final level = LevelData.C1;
  String _subcall;
  PhantomConcept(String name) : super(name) {
    _subcall = name.replaceFirst('Phantom ', '');
  }

  CallContext _addPhantoms(CallContext ctx) {
    //  Add all the phantoms
    //  This assumes lines, will not work
    //  for phantom column formations
    final ang = ctx.dancers.first.angleFacing;
    final positions = (ang.isAround(0) || ang.isAround(pi))
    //  Lines are parallel to Y-axis
    //  Vectors must be pairs of diagonal opposites
    //  for XML mapping to work
        ? [Vector(2,-3),Vector(-2,3),Vector(2,-1),Vector(-2,1),
      Vector(-2,-3),Vector(2,3),Vector(-2,-1),Vector(2,1)]
    //  Lines are parallel to X-axis
        : [Vector(-3,2),Vector(3,-2),Vector(-1,2),Vector(1,-2),
      Vector(-3,-2),Vector(3,2),Vector(-1,-2),Vector(1,2)];
    //  Positions for phantoms are the ones not
    //  occupied by real dancers
    final phantomPositions = positions.where(
            (v) => ctx.dancers.none((d) => d.location.isAbout(v)));
    //  Put phantoms in those positions

  }

}