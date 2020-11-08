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

import 'dart:math';
import "package:bezier/bezier.dart" hide Bezier;
import 'vector.dart';
import 'matrix.dart';
import '../extensions.dart';

class Bezier extends CubicBezier {

  Bezier(List<Vector> points) : super(points.v2);

  //  Constructor from 4 points along the curve
  //  at times 0, 1/3, 2/3, 1
  //  Reference:  https://web.archive.org/web/20131225210855/http://people.sc.fsu.edu/~jburkardt/html/bezier_interpolation.html
  factory Bezier.fromPoints(Vector p0, Vector p1, Vector p2, Vector p3) {
    var pc1 = Vector(
        (-5.0*p0.x + 18.0*p1.x - 9.0*p2.x + 2.0*p3.x)/6.0,
        (-5.0*p0.y + 18.0*p1.y - 9.0*p2.y + 2.0*p3.y)/6.0
    );
    var pc2 = Vector(
        (2.0*p0.x - 9.0*p1.x + 18.0*p2.x - 5.0*p3.x)/6.0,
        (2.0*p0.y - 9.0*p1.y + 18.0*p2.y - 5.0*p3.y)/6.0
    );
    return Bezier([
      Vector(p0.x,p0.y),
      Vector(pc1.x,pc1.y),
      Vector(pc2.x,pc2.y),
      Vector(p3.x,p3.y)
    ]);
  }

  double _angle(double t) {
    var v = derivativeAt(t);
    return atan2(v.y,v.x);
  }
  Matrix translate(double t) => Matrix.getTranslation(pointAt(t).v);
  Matrix rotate(double t) => Matrix.getRotation(_angle(t));

  //  Return turn direction at end of curve
  double rolling() {
    //  Check angle at end
    var theta = _angle(1.0);
    //  If it's 180 then use angle at halfway point
    if (theta.isAround(pi)) {
      theta = _angle(0.5);
    }
    //  If angle is 0 then no turn
    return theta.isAround(0.0) ? 0.0 : theta;
  }

  bool isIdentity() => endPoint.x.isAbout(0) && endPoint.y.isAbout(0);

  ///  Functions to compute a new Bezier
  Bezier scale(double x, double y) => Bezier([
    Vector(points[0].x*x,points[0].y*y),
    Vector(points[1].x*x,points[1].y*y),
    Vector(points[2].x*x,points[2].y*y),
    Vector(points[3].x*x,points[3].y*y)
  ]);

  Bezier skew(double x, double y) => Bezier([
    points[0].v,
    points[1].v,
    Vector(points[2].x+x,points[2].y+y),
    Vector(points[3].x+x,points[3].y+y)
  ]);

  Bezier clip(double fraction) => (leftSubcurveAt(fraction) as CubicBezier).bz;

}

extension BezierExtension on CubicBezier {

  Bezier get bz => Bezier(points.v);

}