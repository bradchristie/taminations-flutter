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

import 'package:xml/xml.dart';


extension TamInt on int {

  double get d => this.toDouble();  // not sure if this is needed
  String get s => this.toString();
  int pow(int i) {
    if (i == 0) return 1;
    if (i == 1) return this;
    if (i == 2) return this * this;
    if (i % 2 == 1) return pow(i-1) * this;
    if (i > 2) {
      var p = pow(i ~/ 2);
      return p * p;
    }
    throw ArgumentError.value(i);
  }

}

extension TamDouble on double {

  int get i => this.toInt();
  double get sq => this * this;
  String get s => ((this*1000.0).round() / 1000.0).toString();

  bool isAbout(double y, {double delta = 0.1}) => (this-y).abs() < delta;
  bool isApproxInt({double delta = 0.1}) => (this-this.round()).abs() < delta;
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
  String capitalize() => this.isEmpty ? this :
      this.substring(0,1).toUpperCase() + this.substring(1).toLowerCase();
  String capWords() => this.split("\\s+".r).map((s) => s.capitalize()).join(" ")
      .replaceAllMapped("\\b(A|An|At|And|To|The)\\b".r, (m) => m[1].toLowerCase());

  //  Returns an array of strings, starting with the entire string,
  //  and each subsequent string chopping one word off the end
  List<String> chopped() {
    var ss = <String>[];
    return this.split("\\s+".r).map((it) {
      ss.add(it);
      ss.reduce((a, b) => "$a $b");
    }).toList().reversed.toList();
  }

}

extension TamList<E> on List<E> {

  List<int> get indices => asMap().keys;
  E get firstOrNull => isNotEmpty ? first : null;
  List<E> operator -(E e) => this.where((element) => element != e).toList();
  List<E> clone() => this.toList();
  List<E> sortedWith(int compare(E e1, E e2)) {
    var list2 = this.clone();
    list2.sort(compare);
    return list2;
  }
  List<E> sortedBy(Comparable cf(E e)) {
    var list2 = this.clone();
    list2.sort((E e1, E e2) => cf(e1).compareTo(cf(e2)));
    return list2;
  }
  List<E> drop(int n) => this.sublist(n);
  List<List<E>> partition(bool predicate(E item)) {
    List<E> first = [];
    List<E> second = [];
    for (var item in this) {
      if (predicate(item))
        first.add(item);
      else
        second.add(item);
    }
    return [first,second];
  }
  bool none(bool test(E element)) => this.every((e) => !test(e));

  E firstBy(Comparable selector(E)) {
    if (isEmpty) return null;
    if (length == 1) return first;
    var best = first;
    var bestValue = selector(best);
    for (var i = 1; i<length; i++) {
      var thisValue = selector(this[i]);
      if (thisValue.compareTo(bestValue) < 0) {
        best = this[i];
        bestValue = thisValue;
      }
    }
    return best;
  }

}

extension TamXmlElement on XmlElement {

  String call(String name, [String dfault]) => this.getAttribute(name) ?? dfault;
  List<XmlElement> childrenNamed(String name) {
    var a = children.toList();
    var b = a.where((element) => element is XmlElement);
    var c = b.cast<XmlElement>();
    var d = c.where((element) => element.name.local == name).toList();
    return d;
  }
  String get tag => this.name.local;

}


