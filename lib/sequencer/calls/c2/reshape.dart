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

import '../c1/triangle_circulate.dart';
import '../common.dart';

class Reshape extends TriangleCirculate {

  @override var level = LevelData.C2;
  @override var rootName = 'Triangle Reshape( The Triangle)?'.ri;
  Reshape(String name) : super(name);

  @override
  Path oneCirculatePath(Dancer d, Dancer d2, Dancer d3) {
    final dist = d.distanceTo(d2);
    final v = d.vectorToDancer(d2);
    //  Trailer of tandem-based triangle
    if (d2.isInFrontOf(d)) {
      final dir = CallContext.dancerRelation(d, d3) == 1 ? 'Left' : 'Right';
      return TamUtils.getMove('Quarter $dir')
        ..skew(dist, 0.0)..changeBeats(3.0);
    }
    //  Point of tandem-based triangle
    else if (d3.isInFrontOf(d2)) {
      final dir = CallContext.dancerRelation(d, d2) == 1 ? 'Left' : 'Right';
      return TamUtils.getMove('Lead $dir')
        ..scale(v.x, v.y.abs())..changeBeats(3.0);
    }
    final d2dir = CallContext.dancerRelation(d, d2);
    final d3dir = CallContext.dancerRelation(d, d3);
    //  Out-facing wave dancer of left-hand triangle
    if (d2dir == 2 && d3dir == 3) {
      return TamUtils.getMove('Quarter Left')
          ..skew(0.0, dist)
          ..changeBeats(3.0);
    }
    //  Out-facing wave dancer of right-hand triangle
    else if (d2dir == 6 && d3dir == 5) {
      return TamUtils.getMove('Quarter Right')
        ..skew(0.0, -dist)
        ..changeBeats(3.0);
    }
    //  Point of wave-based left-hand triangle
    else if (d2dir == 1 && d3dir == 3) {
      return TamUtils.getMove('Run Left')
          ..scale(1.0,v.y.abs()/2.0)
          ..skew(v.x, 0.0)
          ..changeBeats(3.0);
    }
    //  Point of wave-based right-hand triangle
    else if (d2dir == 7 && d3dir == 5) {
      return TamUtils.getMove('Run Right')
        ..scale(1.0,v.y.abs()/2.0)
        ..skew(v.x, 0.0)
        ..changeBeats(3.0);
    }
    //  None of the above - same as Triangle Circulate
    return super.oneCirculatePath(d, d2, d3);
  }

}