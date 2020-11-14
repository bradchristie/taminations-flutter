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

import 'dart:async' show Future;
import 'dart:math';
import 'tam_utils.dart';

import 'package:xml/xml.dart';


extension TamInt on int {

  double get d => this.toDouble();  // not sure if this is needed
  String get s => this.toString();

}

extension TamDouble on double {

  int get i => this.toInt();
  String get s => ((this*1000.0).round() / 1000.0).toString();

  bool isAbout(double y, {double delta = 0.1}) => (this-y).abs() < delta;
  double angleDiff(double a2) =>
      ((((this-a2) % (pi*2)) + (pi*3)) % (pi*2)) - pi;
  bool isAround(double a2) => this.angleDiff(a2).isAbout(0.0);
  //  Less than and not equal to, for floating point
  bool isLessThan(double a2, {double delta = 0.1}) =>
      this < a2 && !this.isAbout(a2,delta:delta);
  bool isGreaterThan(double a2, {double delta = 0.1}) =>
      a2.isLessThan(this,delta:delta);
  // ignore: non_constant_identifier_names
  double IEEErem(double y) {
    var r = (this % y).abs();
    return (r.isNaN || r==y || r <= y.abs()/2.0)
      ? r
      : this.sign * (r - y);
  }
  double get toRadians => this * pi / 180;
  double get toDegrees => this * 180 / pi;
  double coerceIn(double a, double b) => max(a,min(b,this));

}


extension TamString on String {

  double get d => double.parse(this);
  int get i => int.parse(this);
  RegExp get r => RegExp(this);
  RegExp get ri => RegExp(this, caseSensitive: false);
  RegExp get rd => RegExp(this, dotAll: true);
  String get lc => this.toLowerCase();
  bool isBlank() => this.trim().isEmpty;

}

extension TamList<E> on List<E> {

  List<int> get indices => asMap().keys;
  E get firstOrNull => isNotEmpty ? first : null;
  List<E> operator -(E e) => this.where((element) => element != e).toList();
  List<E> clone() => this.toList();
  List<E> sortedBy(int compare(E e1, E e2)) {
    var list2 = this.clone();
    list2.sort(compare);
    return list2;
  }
  List<E> drop(int n) => this.sublist(n);

}

extension TamXmlElement on XmlElement {

  String operator [](String name) => this.getAttribute(name);
  List<XmlElement> childrenNamed(String name) {
    var a = children.toList();
    var b = a.where((element) => element is XmlElement);
    var c = b.cast<XmlElement>();
    var d = c.where((element) => element.name.local == name).toList();
    return d;
  }
  String get tag => this.name.local;

}


