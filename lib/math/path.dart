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

import 'package:xml/xml.dart';

import '../cloneable.dart';
import '../extensions.dart';
import 'hands.dart';
import 'matrix.dart';
import 'movement.dart';

enum Rolling {
  LEFT,   // Dancer will roll to its left
  RIGHT,  // Dancer will roll to its right
  NONE,   // Dancer will not or cannot roll
  ANY     // Dancer is able to roll (default value)
}

extension PathList on List<Path> {

  List<Path> changeRoll(Rolling roll) =>
      map((p) => p.changeRoll(roll)).toList();

}

class Path implements Cloneable<Path> {

  final String name;
  final List<Movement> movelist;
  //  By default roll is computed from the last movement of the path.
  //  But it can be overridden by setting this to another value
  //  with the changeRoll method.
  final Rolling roll;
  //  Sometimes an inactive dancer will move slightly because of
  //  square breathing.
  final bool isJustBreathing;

  bool get isEmpty => movelist.isEmpty;

  const Path([
    this.movelist = const [],
    this.name='',
    this.roll=Rolling.ANY,
    this.isJustBreathing=false]);

  List<Matrix> computeTransformList() {
    var tx = Matrix.getIdentity();
    var transformlist = movelist.map((it) {
      tx = tx * it.translate();
      tx = tx * it.rotate();
      return tx.clone();
    }).toList();
    return transformlist;
  }

  Path.fromMovement(Movement m) : this([m.clone()]);

  Path.fromPath(Path p) : this(
      p.movelist.map((m) => m.clone()).toList(),
      '',p.roll,p.isJustBreathing);

  Path.fromPaths(List<Path> plist) :
    this(plist.expand((p) => p.movelist).toList());

  @override
  Path clone() => Path.fromPath(this);

  Path add(dynamic mp) {
    if (mp is Path) {
      var newPath = Path(movelist + mp.movelist,'',mp.roll);
      return newPath;
    } else if (mp is Movement) {
      return Path(movelist.copy()..add(mp));
    } else throw ArgumentError();
  }

  Path operator +(dynamic p) => add(p);

  Movement pop() {
    var m = movelist.removeLast();
    return m;
  }

  Movement? shift() {
    if (movelist.isNotEmpty) {
      var m = movelist.removeAt(0);
      return m;
    }
    return null;
  }

  Path unshift(Movement m) {
    movelist.insert(0,m);
    return this;
  }

  Path reflect() => Path(movelist.map((it) => it.reflect()).toList());

  double get beats => movelist.map((it) => it.beats).fold(0.0, (previousValue, element) => previousValue + element);

  Path rename(String newname) =>
      Path(movelist,newname,roll,isJustBreathing);

  Path changeBeats(double newbeats) {
    var factor = newbeats / beats;
    return Path(movelist.map((it) => it.time(it.beats * factor)).toList());
  }

  Path changehands(int hands) =>
      Path(movelist.map((it) => it.useHands(hands)).toList());

  Path addhands(int hands) =>
    Path(movelist.map((it) => it.useHands(it.hands | hands)).toList());

  Path scale(double x, double y) =>
    Path(movelist.map((it) => it.scale(x, y)).toList());

  Path changeRoll(Rolling r) => Path(movelist,name,r,isJustBreathing);

  Path justBreathing() => Path(movelist,name,roll,true);

  Path clip(double beat) {
    var newpath = clone();
    while (newpath.beats > beat) {
      var m = newpath.pop();
      if (newpath.beats < beat)
        newpath += m.clip(beat - newpath.beats);
    }
    return newpath;
  }

  //  This likely will not work well for paths with >1 movement
  //  Instead use skewFirst or skewFromEnd
  Path skew(double x, double y) {
    if (movelist.isNotEmpty) {
      //  Apply the skew to just the list movement
      var skewed = clone();
      var last = skewed.movelist.removeLast();
      skewed.movelist.add(last.skew(x,y));
      return skewed;
    }
    return this;
  }

  //  Shift path based on adjustment to final position
  //  This should work well with any number of movements in the path
  Path skewFromEnd(double x, double y) {
    if (movelist.isNotEmpty) {
      var skewed = clone();
      var last = skewed.movelist.removeLast();
      skewed.movelist.add(last.skewFromEnd(x, y));
      return skewed;
    }
    return this;
  }

  Path skewFirst(double x, double y,[double? angle]) {
    if (movelist.isNotEmpty) {
      var skewed = clone();
      var first = skewed.movelist.removeAt(0);
      skewed.movelist.insert(0, first.skew(x,y).twist(angle ?? 0.0));
      return skewed;
    }
    return this;
  }

  Path setFromCall(bool isFrom) {
    return Path(movelist.map((it) => it.setFromCall(isFrom)).toList());
  }

  /// Return a transform for a specific point of time
  Matrix animate(double b) {
    var bv = b;
    var tx = Matrix.getIdentity();
    var transformlist = computeTransformList();
    //  Apply all completed movements
    Movement? m;
    for (var i=0; i<movelist.length; i++) {
      m = movelist[i];
      if (bv > m.beats) {
        tx = transformlist[i];
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