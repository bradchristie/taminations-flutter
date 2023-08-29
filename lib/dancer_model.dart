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

import 'package:taminations/extensions.dart';

import 'cloneable.dart';
import 'math/hands.dart';
import 'math/matrix.dart';
import 'math/movement.dart';
import 'math/path.dart';
import 'math/vector.dart';

class Gender {
  static const BOY = 1;
  static const GIRL = 2;
  static const PHANTOM = 3;
  static const NONE = 4;    // for concepts with abstract dancers
  static final genderMap = {
    'boy': Gender.BOY,
    'girl': Gender.GIRL,
    'phantom': Gender.PHANTOM
  };
  static int fromString(String g) => genderMap[g] ?? NONE;
}

//  Additional data for each dancer for use by sequencer
class DancerData {
  var active = true;
  var beau = false;
  var belle = false;
  var leader = false;
  var trailer = false;
  var center = false;
  var verycenter = false;
  var end = false;
  DancerModel? partner;
}

//  Dancer Space is a coordinate system where the dancer
//  is at (0,0) and looking down the X axis.
//  Convert a point from world space to dancer space
//  based on the dancer's current location.
extension DancerVector on Vector {
  Vector ds(DancerModel d) => d.tx.inverse() * this;
}

extension DancerQ on DancerModel? {
  DancerModel throwIfNull(Object e) {
    if (this == null)
      throw e;
    return this!;
  }
}

extension DancerList on List<DancerModel> {

  //  Return dancer with a specific number
  DancerModel find(int i) => firstWhere((d) => d.number.i == i);

  //  Check to see if dancers are in diagonal-opposite order
  //  That is, dancer 1 is the diagonal opposite of dancer 0, etc.
  bool areDancersOrdered() =>
      length % 2 == 0 &&
          indices.where((it) => it % 2 == 0).every(
                  (it) => this[it].gender == this[it+1].gender &&
                  this[it].location.isAbout(-this[it+1].location) && (this[it].angleFacing-this[it+1].angleFacing).isAround(pi));

  //  Center a list of dancers
  //  Assumes dancers are distributed evenly around a central point
  List<DancerModel> center() {
    if (length > 0) {
      var vs = fold<Vector>(Vector(0.0,0.0), (v, d) => v + d.location);
      var va = vs / length.d;
      forEach((d) {
        d.setStartPosition(d.location - va);
      });
    }
    return this;
  }

  //  Take a list of dancers in any order and re-order
  //  in pairs of diagonal opposites
  //  If it fails, just return original list
  //  rather than null or crashing
  List<DancerModel> inOrder() {
    try {
      final inOrderList = where((it) =>
      it.location.x.isGreaterThan(0) ||
          it.location.x.isAbout(0) && it.location.y.isGreaterThan(0))
          .expand((d) =>
      [
        d,
        firstWhere((it) => it.location.isAbout(-d.location))
      ]).toList();
      return inOrderList.length == length ? inOrderList : this;
    } catch (_) {
      return this;
    }
  }

  String show({bool arrayNumbers=false, bool coupleNumbers=false, bool genders=false}) {
    final charMatrix = [for (var i=0; i<11; i++) [ for (var j=0; j<21; j++) ' ']];
    for (var i=0; i<21; i++)
      charMatrix[5][i] = '-';
    for (var i=0; i<11; i++)
      charMatrix[i][10] = '|';
    charMatrix[5][10] = '+';
    charMatrix[5][0] = 'Y';
    charMatrix[0][10] = 'X';
    var i = 0;
    for (final d in this) {
      var dx = d.location.x.round();
      var dy = (d.location.y*2.0).round();
      if (dx.abs() <= 5 && dy.abs() <= 10) {
        var c = coupleNumbers ? d.numberCouple
            : arrayNumbers ? i.s : d.number;
        if (genders)
          c = d.gender.s;
        if (c.length > 1)
          c = c.substring(0,1);
        if (c.isEmpty)
          c = 'X';
        charMatrix[-dx + 5][-dy + 10] = c;
      }
      var dsym = '';
      if (d.angleFacing.isAround(0)) {
        dx += 1;
        dsym = '^';
      } else if (d.angleFacing.isAround(pi)) {
        dx -= 1;
        dsym = 'v';
      } else if (d.angleFacing.isAround(pi/2)) {
        dy += 1;
        dsym = '<';
      } else if (d.angleFacing.isAround(-pi/2)) {
        dy -= 1;
        dsym = '>';
      }
      if (dsym.length == 1 && dx.abs() <= 5 && dy.abs() <= 10) {
        final oldChar = charMatrix[-dx + 5][-dy + 10];
        if (oldChar == ' ' || oldChar == '-' || oldChar == '|')
          charMatrix[-dx + 5][-dy + 10] = dsym;
      }
      i += 1;
    }
    return '\n' + charMatrix.map((e) => e.join('')).join('\n') + '\n';
  }

}

class DancerModel implements Comparable<DancerModel>, Cloneable<DancerModel> {

  static const NUMBERS_OFF = 0;
  static const NUMBERS_DANCERS = 1;
  static const NUMBERS_COUPLES = 2;
  static const NUMBERS_NAMES = 3;   //  sequencer only
  static const NUMBER_HEIGHT = 8.0;


  //  Passed into default constructor
  String number;
  String numberCouple;
  int gender;
  List<Movement> moves;
  DancerModel? clonedFrom;

  //  Computed
  Matrix starttx;
  Path path;
  int hands = Hands.NOHANDS;
  Matrix tx = Matrix.getIdentity();
  double get beats => path.beats;
  //  Other vars for computing handholds
  DancerModel? leftDancer;
  DancerModel? rightDancer;
  DancerModel? rightGrip;
  DancerModel? leftGrip;
  bool rightHandVisibility = false;
  bool leftHandVisibility = false;
  bool rightHandNewVisibility = false;
  bool leftHandNewVisibility = false;
  var data = DancerData();

  DancerModel(this.number,this.numberCouple, this.gender,
      Matrix mat, this.moves, [this.clonedFrom])
      : path = Path(moves),
        starttx = mat
  {
    if (clonedFrom != null)
      data.active = clonedFrom!.data.active;
    tx = starttx;
  }

  factory DancerModel.fromData({required int gender,
    String number='', String couple='',
    required double x, required double y, required double angle,
    List<Movement> path = const <Movement>[]
  }) {
    final mat = Matrix.getTranslation(x,y) *
        Matrix.getRotation(angle.toRadians);
    return DancerModel(number,couple,gender,mat,path);
  }

  DancerModel.cloneWithOptions(DancerModel from,{String? number, String? numberCouple, int? gender}) :
        this(
          number ?? from.number,
          numberCouple ?? from.numberCouple,
          gender ?? from.gender,
          from.tx,[],from);

  DancerModel.cloneWithGeometry(DancerModel from, Matrix starttx) :
        this(from.number,from.numberCouple,from.gender, starttx, []);

  @override
  DancerModel clone() => DancerModel.cloneWithOptions(this);

  @override
  int get hashCode => number.hashCode;

  bool get isActive => data.active;
  bool get isNotActive => !data.active;

  @override
  bool operator ==(Object other) {
    if (other is DancerModel) {
      return number == other.number;
    }
    return false;
  }

  @override
  int compareTo(DancerModel other) => number.compareTo(other.number);
  bool operator <(Object other) {
    if (other is DancerModel)
      return number.compareTo(other.number) < 0;
    return false;
  }

  @override
  String toString() => number;

  bool get isPhantom => gender == Gender.PHANTOM;

  Vector get location => tx.location;

  //  Distance to another dancer
  double distanceTo(DancerModel d2) => (location - d2.location).length;

  //  Angle the dancer is facing relative to the positive x-axis
  double get angleFacing => tx.angle;
  bool get isFacingX => angleFacing.isAround(0.0) || angleFacing.isAround(pi);
  bool get isFacingY => angleFacing.isAround(pi/2) || angleFacing.isAround(3*pi/2);

  //  Angle of the dancer's position relative to the positive x-axis
  double get anglePosition => tx.location.angle;

  //  Angle the dancer turns to look at the origin
  double get angleToOrigin => (tx.inverse()*Vector()).angle;

  Vector vectorToDancer(DancerModel d2) =>
      tx.inverse() * d2.location;

  //  Angle of d2 as viewed from this dancer
  //  If angle is 0 then d2 is in front
  //  Angle returned is in the range -pi to pi
  double angleToDancer(DancerModel d2) => vectorToDancer(d2).angle;

  //  Other geometric interrogatives
  bool get isFacingIn {
    var a = angleToOrigin.abs();
    return !a.isAbout(pi/2) && a < pi/2;
  }

  bool get isFacingOut {
    var a = angleToOrigin.abs();
    return !a.isAbout(pi/2) && a > pi/2;
  }

  bool get isOnSSSpot =>
      {location.x.abs().round(), location.y.abs().round()}.containsAll({1,3});

  //  Dancer turns to the left to look at center of the square
  bool get isCenterLeft =>
      angleToOrigin.isGreaterThan(0.0) && angleToOrigin.isLessThan(pi);
  bool get isCenterRight =>
      angleToOrigin.isLessThan(0.0) && angleToOrigin.isGreaterThan(-pi);
  bool get isOnXAxis => location.y.isAbout(0);
  bool get isOnYAxis => location.x.isAbout(0);
  bool get isOnAxis => isOnXAxis || isOnYAxis;
  bool get isTidal =>
      (isOnXAxis || isOnYAxis) && (isCenterLeft || isCenterRight);
  bool get isHead => numberCouple == '1' || numberCouple == '3';
  bool get isSide => numberCouple == '2' || numberCouple == '4';

  bool isInFrontOf(DancerModel d2) =>
      this != d2 && d2.angleToDancer(this).isAround(0);
  bool isInBackOf(DancerModel d2) =>
      this != d2 && d2.angleToDancer(this).isAround(pi);
  bool isRightOf(DancerModel d2) =>
      this != d2 && d2.angleToDancer(this).isAround(pi*3/2);
  bool isLeftOf(DancerModel d2) =>
      this != d2 && d2.angleToDancer(this).isAround(pi/2);
  bool isOpposite(DancerModel d2) =>
      this != d2 && (location + d2.location).length.isAbout(0);

  ///   Used for hexagon handholds
  /// @return  True if dancer is close enough to center to make a center star
  bool get inCenter => location.length < 1.1;


  void animateComputed(double beat) {
    hands = path.hands(beat);
    tx = starttx * path.animate(beat);
    //tx = _geom.pathMatrix(starttx, tx, beat) * tx;
  }
  void animate(double beat) => animateComputed(beat);
  void animateToEnd() => animate(beats);


  DancerModel setStartPosition(Vector pos) {
    var a = angleFacing;
    starttx = Matrix.getTranslation(pos.x,pos.y) * Matrix.getRotation(a);
    tx = starttx.clone();
    return this;
  }

  DancerModel setStartAngle(double a) {
    starttx = Matrix.getTranslation(starttx.location) * Matrix.getRotation(a);
    tx = starttx.clone();
    return this;
  }

  //  Note that this takes an angle in degrees
  DancerModel rotateStartAngle(double angle) {
    starttx = starttx * Matrix.getRotation(angle.toRadians);
    tx = starttx.clone();
    return this;
  }

}