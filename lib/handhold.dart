/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

import 'dancer.dart';
import 'extensions.dart';
import 'geometry.dart';
import 'math/hands.dart';

class Handhold {

  final Dancer dancer1;
  final Dancer dancer2;
  final int hold1;
  final int hold2;
  final double angle1;
  final double angle2;
  final double distance;
  final double score;

  Handhold(this.dancer1,this.dancer2,this.hold1,this.hold2,
      this.angle1,this.angle2,this.distance,this.score);

  bool get inCenter => dancer1.inCenter && dancer2.inCenter;

  static Handhold? create(Dancer d1, Dancer d2, int geometry) {
    Handhold? retval;
    if (!d1.hidden && !d2.hidden) {

      //  Turn off grips if not specified in current movement
      if ((d1.hands & Hands.GRIPRIGHT) != Hands.GRIPRIGHT)
        d1.rightGrip = null;
      if ((d1.hands & Hands.GRIPLEFT) != Hands.GRIPLEFT)
        d1.leftGrip = null;
      if ((d2.hands & Hands.GRIPRIGHT) != Hands.GRIPRIGHT)
        d2.rightGrip = null;
      if ((d2.hands & Hands.GRIPLEFT) != Hands.GRIPLEFT)
        d2.leftGrip = null;

      //  Check distance
      final x1 = d1.tx.m31;
      final y1 = d1.tx.m32;
      final x2 = d2.tx.m31;
      final y2 = d2.tx.m32;
      final dx = x2 - x1;
      final dy = y2 - y1;
      final dfactor1 = 0.1;  // for distance up to 2.0
      final dfactor2 = 2.0;  // for distance past 2.0
      var cutover = 2.0;
      if (geometry == Geometry.HEXAGON) cutover = 2.5;
      if (geometry == Geometry.BIGON) cutover = 3.7;
      final d = sqrt(dx * dx + dy * dy);
      final dfactor0 = (geometry == Geometry.HEXAGON) ? 1.15 : 1.0;
      final d0 = d * dfactor0;
      var score1 = (d0 > cutover)
          ? (d0 - cutover) * dfactor2 + 2 * dfactor1
          : d0 * dfactor1;
      var score2 = score1;
      //  Angle between dancers
      final a0 = atan2(dy, dx);
      //  Angle each dancer is facing
      final a1 = atan2(d1.tx.m12, d1.tx.m22);
      final a2 = atan2(d2.tx.m12, d2.tx.m22);
      //  For each dancer, try left and right hands
      var h1 = 0;
      var h2 = 0;
      var ah1 = 0.0;
      var ah2 = 0.0;
      final afactor1 = (geometry == Geometry.SQUARE) ? 0.8 : 0.2;
      final afactor2 = (geometry == Geometry.BIGON) ? 0.6 : 1.0;

      //  Dancer 1
      var a = (a1 - a0 + pi * 3.0 / 2.0).abs().IEEErem(pi * 2.0).abs();
      var ascore = (a > pi / 6.0)
          ? (a - pi / 6.0) * afactor2 + pi / 6.0 * afactor1
          : a * afactor1;
      if (score1 + ascore < 1.0 && (d1.hands & Hands.RIGHTHAND) != 0 &&
          d1.rightGrip == null || d1.rightGrip == d2) {
        score1 = (d1.rightGrip == d2) ? 0.0 : score1 + ascore;
        h1 = Hands.RIGHTHAND;
        ah1 = a1 - a0 + pi * 3.0 / 2.0;
      } else {
        a = (a1 - a0 + pi / 2.0).abs().IEEErem(pi * 2.0).abs();
        ascore = (a > pi / 6.0)
            ? (a - pi / 6.0) * afactor2 + pi / 6.0 * afactor1
            : a * afactor1;
        if (score1 + ascore < 1.0 && (d1.hands & Hands.LEFTHAND) != 0 &&
            d1.leftGrip == null || d1.leftGrip == d2) {
          score1 = (d1.leftGrip == d2) ? 0.0 : score1 + ascore;
          h1 = Hands.LEFTHAND;
          ah1 = a1 - a0 + pi / 2.0;
        } else
          score1 = 10.0;
      }

      //  Dancer 2
      a = (a2 - a0 + pi / 2.0).abs().IEEErem(pi * 2.0).abs();
      ascore = (a > pi / 6.0)
          ? (a - pi / 6.0) * afactor2 + pi / 6.0 * afactor1
          : a * afactor1;
      if (score2 + ascore < 1.0 && (d2.hands & Hands.RIGHTHAND) != 0 &&
          d2.rightGrip == null || d2.rightGrip == d1) {
        score2 = (d2.rightGrip == d1) ? 0.0 : score2 + ascore;
        h2 = Hands.RIGHTHAND;
        ah2 = a2 - a0 + pi / 2.0;
      } else {
        a = (a2 - a0 + pi * 3.0 / 2.0).abs().IEEErem(pi * 2.0).abs();
        ascore = (a > pi / 6.0)
            ? (a - pi / 6.0) * afactor2 + pi / 6.0 * afactor1
            : a * afactor1;
        if (score2 + ascore < 1.0 && (d2.hands & Hands.LEFTHAND) != 0 &&
            d2.leftGrip == null || d2.leftGrip == d1) {
          score2 = (d2.leftGrip == d1) ? 0.0 : score2 + ascore;
          h2 = Hands.LEFTHAND;
          ah2 = a2 - a0 + pi * 3.0 / 2.0;
        } else
          score2 = 10.0;
      }

      //  Generate return value
      if (d1.rightGrip == d2 && d2.rightGrip == d1)
        retval = Handhold(d1, d2, Hands.RIGHTHAND, Hands.RIGHTHAND, ah1, ah2, d, 0.0);
      else if (d1.rightGrip == d2 && d2.leftGrip == d1)
        retval = Handhold(d1, d2, Hands.RIGHTHAND, Hands.LEFTHAND, ah1, ah2, d, 0.0);
      else if (d1.leftGrip == d2 && d2.rightGrip == d1)
        retval = Handhold(d1, d2, Hands.LEFTHAND, Hands.RIGHTHAND, ah1, ah2, d, 0.0);
      else if (d1.leftGrip == d2 && d2.leftGrip == d1)
        retval = Handhold(d1, d2, Hands.LEFTHAND, Hands.LEFTHAND, ah1, ah2, d, 0.0);
      else if (score1 <= 1.0 && score2 <= 1.0 && score1 + score2 <= 1.2)
        retval = Handhold(d1, d2, h1, h2, ah1, ah2, d, score1 + score2);
      //  otherwise dancers are too far apart
    }

    return retval;
  }

}