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

import 'dart:math';

import 'package:bezier/bezier.dart' hide Bezier;

import '../cloneable.dart';
import '../extensions.dart';
import 'matrix.dart';
import 'vector.dart';

class Bezier implements Cloneable<Bezier> {

  /// The start point, end point and control points of the Bézier curve.
  final List<Vector> points;
  const Bezier(this.points);

  @override
  Bezier clone() => Bezier(points);

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

  //  Convenience functions
  double get x1 => points[0].x;
  double get y1 => points[0].y;
  double get cx1 => points[1].x;
  double get cy1 => points[1].y;
  double get cx2 => points[2].x;
  double get cy2 => points[2].y;
  double get x2 => points[3].x;
  double get y2 => points[3].y;
  Vector get p1 => Vector(x1,y1);
  Vector get cp1 => Vector(cx1,cy1);
  Vector get cp2 => Vector(cx2,cy2);
  Vector get p2 => Vector(x2,y2);
  Vector get startPoint => points.first;
  Vector get endPoint => points.last;

  Vector pointAt(double t) {
    final t2 = t * t;
    final mt = 1.0 - t;
    final mt2 = mt * mt;

    final a = mt2 * mt;
    final b = mt2 * t * 3;
    final c = mt * t2 * 3;
    final d = t * t2;

    return startPoint.scale(a,a) +
        points[1].scale(b,b) +
        points[2].scale(c,c) +
        points[3].scale(d,d);
  }


  double angle(double t) {

    var cx = 3.0*(cx1-x1);
    var bx = 3.0*(cx2-cx1) - cx;
    var ax = x2 - x1 - cx - bx;

    var cy = 3.0*(cy1-y1);
    var by = 3.0*(cy2-cy1) - cy;
    var ay = y2 - y1 - cy - by;

    var dxt = cx + t*(2.0*bx + t*3.0*ax);
    var dyt = cy + t*(2.0*by + t*3.0*ay);

    return atan2(dyt,dxt);
  }

  Matrix translate(double t) => Matrix.getTranslation(pointAt(t));
  Matrix rotate(double t) => Matrix.getRotation(angle(t));

  //  Return turn direction at end of curve
  double rolling() {
    //  Check angle at end
    var theta = angle(1.0);
    //  If it's 180 then use angle at halfway point
    if (theta.isAround(pi)) {
      theta = angle(0.5);
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
    points[0],
    points[1],
    Vector(points[2].x+x,points[2].y+y),
    Vector(points[3].x+x,points[3].y+y)
  ]);

//  Bezier clip(double fraction) => (leftSubcurveAt(fraction) as CubicBezier).bz;
  Bezier clip(double fraction) =>
      Bezier.fromPoints(pointAt(0), pointAt(fraction/3),
          pointAt(fraction*2/3), pointAt(fraction));

}

extension BezierExtension on CubicBezier {

  Bezier get bz => Bezier(points.v);

}