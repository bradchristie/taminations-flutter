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
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:xml/xml.dart';
import 'extensions.dart';
import 'math/movement.dart';
import 'math/path.dart';

class CallListDatum {
  final String title;
  final String norm;
  final String link;
  final String sublevel;
  final String languages;
  final String audio;
  CallListDatum(this.title,this.norm,this.link,this.sublevel,this.languages,this.audio);
}

//  Class of static methods and data, this class is not instantiated
class TamUtils {

  //  Data read at start of program, to speed up later lookups
  static List<CallListDatum> calldata = [];
  static Map<String,XmlElement> _formations = {};
  static Map<String,XmlElement> _moves = {};
  static String css;

  //  Read an XML file or other from the assets
  static Future<String> getAsset(String filename) async =>
      await rootBundle.loadString('assets/$filename');
  static Future<ByteData> getBinaryAsset(String filename) async =>
      await rootBundle.load('assets/$filename');
  static Future<XmlDocument> getXMLAsset(String filename) async =>
      await rootBundle.loadString('assets/$filename.xml').then((text) =>
      XmlDocument.parse(text));

  //  Read data at start of program
  static void init() {
    getXMLAsset("src/calls").then((doc) {
      calldata = doc.findAllElements("call").map((e) =>
          CallListDatum(
              e.getAttribute("title"),
              e.getAttribute("title"), // TODO normalize
              e.getAttribute("link"),
              e.getAttribute("sublevel"),
              e.getAttribute("language"),
              e.getAttribute("audio"))
      ).toList();
    });
    getXMLAsset("src/formations").then((doc) {
      doc.findAllElements("formation").forEach((f) {
        _formations[f["name"]] = f;
      });
    });
    getXMLAsset("src/moves").then((doc) {
      doc.findAllElements("path").forEach((m) {
        _moves[m["name"]] = m;
      });
    });
    getAsset("src/tamination.css").then((rawcss) {
      css = '<style>' + rawcss.replaceAll(r"/\*.*?\*/".rd, "") + '</style>';
    });
  }

  ///  Get all tam and tamxref elements from an animation XML document
  static List<XmlElement> tamList(XmlDocument doc) => doc.firstElementChild
      .children.toList()
      .where((element) => element is XmlElement).cast<XmlElement>()
      .where((element) =>
      (element.name.toString() == "tam" || element.name.toString() == "tamxref")).toList();

  //  Returns animation element, looking up cross-reference if needed.
  static Future<XmlElement> tamXref(XmlElement tam) {
    if (tam.getAttribute("xref-link") != null) {
      var link = tam.getAttribute("xref-link");
      var title = tam.getAttribute("xref-title");
      var from = tam.getAttribute("xref-from");
      var formation = tam.getAttribute("xref-formation");
      var futureTam = getXMLAsset(link).then((doc) {
        var tams = doc.findAllElements("tam");
        var first = tams.firstWhere((it) =>
            (title == null || it.getAttribute("title") == title) &&
            (from == null || it.getAttribute("from") == from) &&
            (formation == null || it.getAttribute("formation") == formation));
        return first;
      });
      return futureTam;
    }
    else
      //  No xref, return the existing value without delay
      return Future.value(tam);
  }

  //  Return a named formation from the formations read at startup
  static XmlElement getFormation(String fname) {
    var f = _formations[fname];
    if (f == null)
      throw ArgumentError("Unable to find formation $fname");
    return f;
  }

  //  Return dancer numbers to use for a given animation
  //  which could be listed in the animation
  static List<String> getNumbers(XmlElement tam) {
    var paths = tam.childrenNamed("path");
    var retval = ["1","2","3","4","5","6","7","8",
      "","","","","","","",""];
    var np = min(paths.length, 4);
    for (var i=0; i<paths.length; i++) {
      var p = paths[i];
      var n = p["numbers"];
      if (n != null) {  //  numbers supplied in animation XML
        retval[i*2] = n.substring(0,1);
        retval[i*2+1] = n.substring(2,3);
      } else if (i > 3) {  //  phantoms
        retval[i*2] = " ";
        retval[i*2+1] = " ";
      } else {  // default numbers
        retval[i * 2] = "${i + 1}";
        retval[i * 2 + 1] = "${i + 1 + np}";
      }
    }
    return retval;
  }

  //  Return couple numbers to use for a given animation
  //  which could be listed in the animation
  static List<String> getCouples(XmlElement tam) {
    var retval = ["1","3","1","3",
      "2","4","2","4",
      "5","6","5","6",
      " "," "," "," "];
    var paths = tam.childrenNamed("path");
    for (var i=0; i<paths.length; i++) {
      var p = paths[i];
      var c = p["couples"];
      if (c != null) {
        retval[i*2] = c.substring(0,1);
        retval[i*2+1] = c.substring(2,3);
      }
    }
    return retval;
  }


  static List<Movement> _translate(XmlElement elem) {
    if (elem.tag == "path")
      return translatePath(elem);
    else if (elem.tag == "move")
      return _translateMove(elem);
    else if (elem.tag == "movement")
      return _translateMovement(elem);
    else
      return [];
  }

  //  Takes a path, which is an XML element with children that
  //  are moves or movements.
  //  Returns an array of movements
  static List<Movement> translatePath(XmlElement path) {
    var elemList = path.children.toList()
        .where((element) => element is XmlElement).toList();
    //  Send the result to translate
    //  to recursively process "move" elements
    return elemList.map((it) => _translate(it)).expand((e) => e).toList();
  }

  //  Accepts a movement element from a XML file, either an animation definition
  //  or moves.xml
  //  Returns an array of a single movement
  static List<Movement> _translateMovement(XmlElement move) => [Movement.fromElement(move)];

  //  Takes a move, which is an XML element that references another XML
  //  path with its "select" attribute
  //  Returns an array of movements
  static List<Movement> _translateMove(XmlElement move) {
    //  First retrieve the requested path
    var moveName = move["select"];
    var pathElem = _moves[moveName];
    //  Get the list of movements
    var movements = translatePath(pathElem);
    //  Get any modifications
    var scaleX = move["scaleX"]?.d ?? 1.0;
    var scaleY = (move["scaleY"]?.d ?? 1.0) *
        (move["reflect"]==null ? 1 : -1);
    var offsetX = move["offsetX"]?.d ?? 0.0;
    var offsetY = move["offsetY"]?.d ?? 0.0;
    var hands = move["hands"];
    //  Sum up the total beats so if beats is given as a modification
    //  we know how much to change each movement
    var oldBeats = movements.fold(0.0, (b, m) => b + m.beats);
    var beatFactor = (move["beats"]?.d ?? oldBeats) / oldBeats;
    //  Now go through the movements applying the modifications
    //  The resulting list is the return value
    return movements.map((m) =>
        m.useHands(hands != null ? Hands.getHands(hands) : m.hands)
        .scale(scaleX,scaleY)
        .skew(offsetX,offsetY)
        .time(m.beats * beatFactor)).toList();
  }

  ///   Gets a named path (move) from the file of moves
  static Path getMove(String name) => Path(_translate(_moves[name]));

}
