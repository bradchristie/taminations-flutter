/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

import 'package:xml/xml.dart';

import '../cloneable.dart';
import '../extensions.dart';
import 'matrix.dart';
import 'movement.dart';

class Path implements Cloneable<Path> {

  String name = '';
  List<Movement> movelist = [];
  List<Matrix> _transformlist = [];

  bool get isEmpty => movelist.isEmpty;

  Path([List<Movement>? moves, this.name='']) {
    movelist = moves == null ? [] : moves.toList();
    recalculate();
  }

  void recalculate() {
    var tx = Matrix.getIdentity();
    _transformlist = movelist.map((it) {
      tx = tx * it.translate();
      tx = tx * it.rotate();
      return tx.clone();
    }).toList();
  }

  Path.fromMovement(Movement m) {
    movelist = [m.clone()];
    recalculate();
  }

  Path.fromPath(Path p) {
    movelist = p.movelist.map((m) => m.clone()).toList();
    recalculate();
  }

  Path.fromPaths(List<Path> plist) {
    movelist = plist.expand((p) => p.movelist).toList();
  }

  @override
  Path clone() => Path.fromPath(this);

  void clear() {
    movelist = [];
    recalculate();
  }

  void add(dynamic mp) {
    if (mp is Path) {
      movelist += mp.movelist;
      recalculate();
    } else if (mp is Movement) {
      movelist.add(mp);
      recalculate();
    } else throw ArgumentError();
  }

  Path operator +(Path p) { add(p); return this; }

  Movement pop() {
    var m = movelist.removeLast();
    recalculate();
    return m;
  }

  Movement? shift() {
    if (movelist.isNotEmpty) {
      var m = movelist.removeAt(0);
      recalculate();
      return m;
    }
    return null;
  }

  Path unshift(Movement m) {
    movelist.insert(0,m);
    recalculate();
    return this;
  }

  void reflect() {
    movelist = movelist.map((it) => it.reflect()).toList();
    recalculate();
  }

  double get beats => movelist.map((it) => it.beats).fold(0.0, (previousValue, element) => previousValue + element);

  void changeBeats(double newbeats) {
    var factor = newbeats / beats;
    movelist = movelist.map((it) => it.time(it.beats * factor)).toList();
    //  no need to recalculate, transformlist doesn't depend on beats
  }

  void changehands(int hands) {
    movelist = movelist.map((it) => it.useHands(hands)).toList();
  }

  void addhands(int hands) {
    movelist = movelist.map((it) => it.useHands(it.hands | hands)).toList();
  }

  void scale(double x, double y) {
    movelist = movelist.map((it) => it.scale(x, y)).toList();
    recalculate();
  }

  //  This likely will not work well for paths with >1 movement
  //  Instead use skewFirst or skewFromEnd
  void skew(double x, double y) {
    if (movelist.isNotEmpty) {
      //  Apply the skew to just the list movement
      var last = movelist.removeLast();
      movelist.add(last.skew(x,y));
      recalculate();
    }
  }

  //  Shift path based on adjustment to final position
  //  This should work well with any number of movements in the path
  void skewFromEnd(double x, double y) {
    if (movelist.isNotEmpty) {
      var last = movelist.removeLast();
      movelist.add(last.skewFromEnd(x, y));
      recalculate();
    }
  }

  void skewFirst(double x, double y,[double? angle]) {
    if (movelist.isNotEmpty) {
      var first = movelist.removeAt(0);
      movelist.insert(0, first.skew(x,y).twist(angle ?? 0.0));
      recalculate();
    }
  }

  void notFromCall() {
    movelist = movelist.map((it) => it.notFromCall()).toList();
  }

  /// Return a transform for a specific point of time
  Matrix animate(double b) {
    var bv = b;
    var tx = Matrix.getIdentity();
    //  Apply all completed movements
    Movement? m;
    for (var i=0; i<movelist.length; i++) {
      m = movelist[i];
      if (bv > m.beats) {
        tx = _transformlist[i];
        bv -= m.beats;
        m = null;
      } else {
        break;
      }
    }
    //  Apply movement in progress
    if (m != null) {
      tx *= m.translate(bv) * m.rotate(bv);
    }
    return tx;
  }

  ///  Return the current hand at a specific point in time
  int hands(double b) {
    if (b < 0 || b > beats) {
      return Hands.BOTHHANDS;
    }
    var bv = b;
    return movelist.fold(Hands.BOTHHANDS, (previousValue, element) {
      if (bv < 0) {
        return previousValue;
      } else {
        bv -= element.beats;
        return element.hands;
      }
    });
  }

  XmlElement toXML({String? n})  => XmlElement('path'.xml,
      [ if ((n??name).isNotBlank) XmlAttribute('name'.xml, n??name)],
      movelist.map((m) => m.toXML())
  );

}