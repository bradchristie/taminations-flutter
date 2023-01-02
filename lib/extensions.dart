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
import 'cloneable.dart';

import 'package:xml/xml.dart';

Future<T> afterDelay<T>(T Function()f, [Duration? when]) async {
  return Future<T>.delayed(when ?? Duration(),f);
}

//  Useful for
//  var xx = somethingMightBeNull() ?? thrower(Exception("xx would be null")
T thrower<T>(Object e) {
  throw e;
}

//  Can also use this construct
/*
final a = [
  if (name == 'one') 'alpha'
  else if (name == 'two') 'beta'
  else if (name == 'three') 'gamma'
].first;
*/
T when<T>(List<Map<bool Function(),T>> exprs) =>
  exprs.firstWhere((item) => item.keys.first()).values.first;

extension TamInt on int {

  double get d => toDouble();  // not sure if this is needed
  String get s => toString();
  bool get isOdd => this % 2 == 1;
  bool get isEven => this % 2 == 0;
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

  int get i => toInt();
  double get sq => this * this;
  String get s => ((this*1000.0).round() / 1000.0).toString();

  bool isAbout(double y, {double delta = 0.1}) => (this-y).abs() < delta;
  bool isApproxInt({double delta = 0.1}) => (this-round()).abs() < delta;
  double angleDiff(double a2) =>
      ((((this-a2) % (pi*2)) + (pi*3)) % (pi*2)) - pi;
  bool isAround(double a2) => angleDiff(a2).isAbout(0.0);
  //  Less than and not equal to, for floating point
  bool isLessThan(double a2, {double delta = 0.1}) =>
      this < a2 && !isAbout(a2,delta:delta);
  bool isGreaterThan(double a2, {double delta = 0.1}) =>
      a2.isLessThan(this,delta:delta);
  // ignore: non_constant_identifier_names
  double IEEErem(double y) {
    var r = (this % y).abs();
    return (r.isNaN || r==y || r <= y.abs()/2.0)
      ? r
      : sign * (r - y);
  }
  double get toRadians => this * pi / 180;
  double get toDegrees => this * 180 / pi;
  double coerceIn(double a, double b) => max(a,min(b,this));

}


extension TamString on String {

  double get d => double.parse(this);
  int get i => int.parse(this);
  String get q => "'${replaceAll("'","\\'")}'";
  RegExp get r => RegExp(this);
  RegExp get ri => RegExp(this, caseSensitive: false);
  RegExp get rd => RegExp(this, dotAll: true);
  RegExp get rid => RegExp(this, dotAll: true, caseSensitive: false);
  RegExp get rm => RegExp(this, multiLine: true);
  String get lc => toLowerCase();
  XmlName get xml => XmlName(this);
  bool get isBlank => trim().isEmpty;
  bool get isNotBlank => !isBlank;
  String capitalize() => isEmpty ? this :
      substring(0,1).toUpperCase() + substring(1).toLowerCase();
  //  Capitalize words except for common small words
  String capWords() => split('\\s+'.r).map((s) => s.capitalize()).join(' ')
      .replaceAllMapped('\\W\\w'.r, (m) => m[0]!.toUpperCase())
      .replaceAllMapped('\\b(A|An|At|And|To|The)\\b'.r, (m) => m[1]!.toLowerCase());
  //  Matches is true if the regexp matches the entire string
  bool matches(RegExp e) => (e.stringMatch(this)?.length ?? -1) == length;
  //  Divide is split with a limit of 2
  List<String> divide(Pattern p) {
    final i = indexOf(p);
    if (i > 0)
      return [ substring(0,i), substring(i).replaceFirst(p, '') ];
    else
      return [this];
  }
    //[ replaceFirst('$p.*'.r,''), replaceFirst('.*?$p'.r,'') ];
      // replaceFirst(p,'\t').split('\t').map((e)=>e.trim()).toList();
  String get last => this[length-1];
  int? toIntOrNull() => int.tryParse(this);

  String replaceMatch(RegExp regExp,String subst) {
    var match = regExp.firstMatch(this);
    var result = replaceFirst(regExp,subst);
    if (match != null) {
      for (var i = 1; i <= match.groupCount; i++)
        result = result.replaceAll('\\$i', match.group(i)!);
    }
    return result;
  }

  //  Returns an array of strings, starting with the entire string,
  //  and each subsequent string chopping one word off the end
  List<String> chopped() {
    var ss = <String>[];
    return split('\\s+'.r).map((it) {
      ss.add(it);
      return ss.reduce((a, b) => '$a $b');
    }).toList().reversed.toList();
  }

  //  Return an array of strings, each removing one word from the start
  List<String> diced() {
    var ss = <String>[];
    return split('\\s+'.r).reversed.map((it) {
      ss.insert(0,it);
      return ss.reduce((a, b) => '$a $b');
    }).toList().reversed.toList();
  }

  //  Return all combinations of words from a string
  List<String> minced() =>
      chopped().map((e) => e.diced()).expand((e) => e).toList();

  //  Convert a string into one that could be used as an identifier
  String get id => replaceAll('-','neg')
      .replaceAll('.','dot')
      .replaceFirst('^(?=\\d)'.r,'n')
      .replaceAll('[\\W ]'.r,'');

}

extension TamIterable<E> on Iterable<E> {
  E? get firstOrNull => isNotEmpty ? first : null;
  E? get lastOrNull => isNotEmpty ? last : null;
}

extension TamList<E> on List<E> {

  List<int> get indices => asMap().keys.toList();
  E get second => this[1];
  E? get secondOrNull => length > 1 ? second : null;
  E? getOrNull(int i) => (i >= 0 && i < length) ? this[i] : null;
  List<E> operator -(dynamic e) => (e is E)
      ? where((element) => element != e).toList()
      : (e is List<E>)
      ? where((element) => !e.contains(element)).toList()
      : thrower(ArgumentError(e));
  List<E> copy() => toList();
  List<T> mapIndexed<T>(T Function(int index, E item) mapFun) =>
      List.generate(length,(i)=>i).map((i) => mapFun(i,this[i])).toList();
  bool containsAll(List<E> list2) => list2.every((element) => contains(element));
  List<E> sortedWith(int Function(E e1, E e2) compare) {
    var list2 = copy();
    list2.sort(compare);
    return list2;
  }
  List<E> sortedBy(Comparable Function(E e) cf) {
    var list2 = copy();
    list2.sort((E e1, E e2) => cf(e1).compareTo(cf(e2)));
    return list2;
  }
  List<E> drop(int n) => sublist(n);
  List<List<E>> partition(bool Function(E item) predicate) {
    var first = <E>[];
    var second = <E>[];
    for (var item in this) {
      if (predicate(item))
        first.add(item);
      else
        second.add(item);
    }
    return [first,second];
  }
  bool none(bool Function(E element) test) => every((e) => !test(e));
  double maxOf(double Function(E e) of) => fold(-double.maxFinite, (a, b) => max(a,of(b)));
  double minOf(double Function(E e) of) => fold(double.maxFinite, (a, b) => min(a,of(b)));
  List<E> unique() => toSet().toList();

  E? firstBy(Comparable Function(E) selector) {
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

  Map<K,List<E>> groupBy<K>(K Function(E e) selector) {
    final map = <K,List<E>>{};
    for (final e in this) {
      final k = selector(e);
      if (map[k] == null)
        map[k] = <E>[];
      map[k]!.add(e);
    }
    return map;
  }

  void forEachIndexed(void Function(int i,E item) f) {
    for (var i=0; i<length; i++)
      f(i,this[i]);
  }

}

extension TamCloneList<T extends Cloneable> on List<T> {
  List<T> clone() => map((T e) => e.clone() as T).toList();
}

extension TamDoubleList on List<double> {
  double sum() => fold(0.0, (a, b) => a+b);
}

extension TamListList<E> on List<List<E>> {
  List<E> flatten() => fold([], (previousValue, element) => previousValue + element);
}

extension TamXmlElement on XmlElement {

  String call(String name, [String? dfault]) => getAttribute(name) ?? dfault ?? '';
  List<XmlElement> childrenNamed(String name) {
    var a = children.toList();
    var b = a.whereType<XmlElement>();
    var c = b.cast<XmlElement>();
    var d = c.where((element) => element.name.local == name).toList();
    return d;
  }
  String get tag => name.local;

}


