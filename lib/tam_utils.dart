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

import 'dart:async' show Future;
import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/services.dart' show rootBundle;
import 'package:xml/xml.dart';
import 'package:platform/platform.dart';

import 'common.dart';

class CallListDatum {
  final String title;
  final String norm;
  final String link;
  final String languages;
  final String audio;
  CallListDatum(this.title,this.norm,this.link,this.languages,this.audio);
}

//  Class of static methods and data, this class is not instantiated
class TamUtils {

  //  Data read at start of program, to speed up later lookups
  static List<CallListDatum> calldata = [];
  static Map<String,List<CallListDatum>> callmap = {};
  static final Map<String,XmlElement> _formations = {};
  static final Map<String,XmlElement> _moves = {};
  //  CSS to be injected in web pages
  static String css = '';
  //  Javascript to be injected in web pages
  static String framecode = '';
  //  Keep a set of all words used in calls.
  //  Used to check sequencer abbreviations - don't let the use make
  //  an abbreviation for a real word.
  //  Start out with a few that are commonly returned by normalizeCall
  //  to help with the sequencer voice recognition.
  static Set<String> words = {
    'head', 'side', 'leader', 'trailer', 'boy', 'girl',
    'center', 'end', 'very', 'couple', 'home', 'undo', 'reset',
    'color', 'dancer', 'black', 'blue', 'cyan', 'gray', 'grey',
    'green', 'magenta', 'orange', 'red', 'white', 'yellow'
  };

  //  Read an XML file or other from the assets
  static Future<String> getAsset(String filename) async =>
      await rootBundle.loadString('assets/$filename');
  static Future<ByteData> getBinaryAsset(String filename) async =>
      await rootBundle.load('assets/$filename');
  static Future<XmlDocument> getXMLAsset(String filename) async =>
      await rootBundle.loadString('assets/$filename.xml').then((text) =>
      XmlDocument.parse(text));

  //  Read data at start of program
  static Future<bool> init() async {

    var formationsDoc = await getXMLAsset('src/formations');
    formationsDoc.findAllElements('formation').forEach((f) {
      _formations[f('name')] = f;
    });
    var movesDoc = await getXMLAsset('src/moves');
    movesDoc.findAllElements('path').forEach((m) {
      _moves[m('name')] = m;
    });
    var rawCSS = await getAsset('src/tamination.css');
    css = '<style>' + rawCSS.replaceAll(r'/\*.*?\*/'.rd, '') + '</style>';
    framecode = await getAsset('src/framecode.js');

    var callsDoc = await getXMLAsset('src/calls');
    calldata = callsDoc.findAllElements('call').map((e) =>
        CallListDatum(
            e('title'),
            normalizeCall(e('title')).toLowerCase(),
            e('link'),
            e('languages'),
            e('audio'))
    ).toList();
    //  Add words in each call to set of all words
    for (var data in calldata) {
      var dataWords = data.title.split('\\s+'.r).map((w) => w.toLowerCase());
      words.addAll(dataWords);
      //  Index link to this call by its normalized name
      var norm = data.norm;
      if (callmap.containsKey(norm))
        callmap[norm]!.add(data);
      else
        callmap[norm] = [ data ];
    }
    return true;
  }

  static String callNameFromLink(String link) =>
      calldata.firstWhere((datum) => datum.link == link).title;

  ///  Get all tam and tamxref elements from an animation XML document
  static List<XmlElement> tamList(XmlDocument doc) => doc.firstElementChild!
      .children.toList()
      .whereType<XmlElement>().cast<XmlElement>()
      .where((element) =>
      (element.name.toString() == 'tam' || element.name.toString() == 'tamxref')).toList();

  //  Returns animation element, looking up cross-reference if needed.
  static Future<XmlElement> tamXref(XmlElement tam) {
    if (tam.getAttribute('xref-link') != null) {
      var link = tam('xref-link');
      var title = tam('xref-title');
      var from = tam('xref-from');
      var formation = tam('xref-formation');
      var futureTam = getXMLAsset(link).then((doc) {
        var tams = doc.findAllElements('tam');
        var first = tams.firstWhere((it) =>
            (title.isBlank || it('title') == title) &&
            (from.isBlank || it('from') == from) &&
            (formation.isBlank || it('formation') == formation));
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
      throw ArgumentError('Unable to find formation $fname');
    return f;
  }

  //  Return dancer numbers to use for a given animation
  //  which could be listed in the animation
  static List<String> getNumbers(XmlElement tam) {
    var paths = tam.childrenNamed('path');
    var retval = ['1','2','3','4','5','6','7','8',
      '','','','','','','',''];
    var np = min(paths.length, 4);
    for (var i=0; i<paths.length; i++) {
      var p = paths[i];
      var n = p('numbers');
      if (n.isNotBlank) {  //  numbers supplied in animation XML
        retval[i*2] = n.substring(0,1);
        retval[i*2+1] = n.substring(2,3);
      } else if (i > 3) {  //  phantoms
        retval[i*2] = ' ';
        retval[i*2+1] = ' ';
      } else {  // default numbers
        retval[i * 2] = '${i + 1}';
        retval[i * 2 + 1] = '${i + 1 + np}';
      }
    }
    return retval;
  }

  //  Return couple numbers to use for a given animation
  //  which could be listed in the animation
  static List<String> getCouples(XmlElement tam) {
    var retval = ['1','3','1','3',
      '2','4','2','4',
      '5','6','5','6',
      ' ',' ',' ',' '];
    var paths = tam.childrenNamed('path');
    for (var i=0; i<paths.length; i++) {
      var p = paths[i];
      var c = p('couples');
      if (c.isNotBlank) {
        retval[i*2] = c.substring(0,1);
        retval[i*2+1] = c.substring(2,3);
      }
    }
    return retval;
  }


  static List<Movement> _translate(XmlElement elem) {
    if (elem.tag == 'path')
      return translatePath(elem);
    else if (elem.tag == 'move')
      return _translateMove(elem);
    else if (elem.tag == 'movement')
      return _translateMovement(elem);
    else
      return [];
  }

  //  Takes a path, which is an XML element with children that
  //  are moves or movements.
  //  Returns an array of movements
  static List<Movement> translatePath(XmlElement path) {
    var elemList = path.children.toList()
        .whereType<XmlElement>().toList();
    //  Send the result to translate
    //  to recursively process 'move' elements
    return elemList.map((it) => _translate(it)).expand((e) => e).toList();
  }

  //  Accepts a movement element from a XML file, either an animation definition
  //  or moves.xml
  //  Returns an array of a single movement
  static List<Movement> _translateMovement(XmlElement move) => [Movement.fromElement(move)];

  //  Takes a move, which is an XML element that references another XML
  //  path with its 'select' attribute
  //  Returns an array of movements
  static List<Movement> _translateMove(XmlElement move) {
    //  First retrieve the requested path
    var moveName = move('select');
    var pathElem = _moves[moveName]!;
    //  Get the list of movements
    var movements = translatePath(pathElem);
    //  Get any modifications
    var scaleX = move('scaleX','1').d;
    var scaleY = move('scaleY','1').d *
        (move('reflect').isBlank ? 1 : -1);
    var offsetX = move('offsetX','0').d;
    var offsetY = move('offsetY','0').d;
    var hands = move('hands');
    //  Sum up the total beats so if beats is given as a modification
    //  we know how much to change each movement
    var oldBeats = movements.fold<double>(0.0, (b, m) => b + m.beats);
    var beatFactor = move('beats').isBlank ? 1.0 : move('beats').d / oldBeats;
    //  Now go through the movements applying the modifications
    //  The resulting list is the return value
    return movements.map((m) =>
        m.useHands(hands.isNotBlank ? Hands.getHands(hands) : m.hands)
        .scale(scaleX,scaleY)
        .skew(offsetX,offsetY)
        .time(m.beats * beatFactor)).toList();
  }

  ///   Gets a named path (move) from the file of moves
  static Path getMove(String name, {
    Vector? scale,
    Vector? skew,
    int? hands,
    double? beats,
    bool? reflect
  }) {
    var path = Path(_translate(_moves[name]!));
    if (scale != null)
      path.scale(scale.x,scale.y);
    if (skew != null)
      path.skew(skew.x,skew.y);
    if (hands != null)
      path.changehands(hands);
    if (beats != null)
      path.changebeats(beats);
    if ((reflect ?? false))
      path.reflect();
    return path;
  }



  /// Standardize a call name to match against other names  */
  static String normalizeCall(String callname) =>
  callname.capWords().trim()
      .replaceAll('\\(.*\\)'.ri,'')
      .replaceAll('&','and')
      .replaceAll('[^a-zA-Z0-9_ ]'.ri,'')
      .replaceAll('\\s+'.ri,' ')
  //  Through => Thru
      .replaceAll('\\bthrou?g?h?\\b'.ri,'Thru')
  //  One and a half
      .replaceAll('(onc?e and a half)|(1 12)|(15)'.ri,'112')
  //  Process fractions 1/2 3/4 1/4 2/3
  //  Non-alphanums are not used in matching
  //  so these fractions become 12 34 14 23
  //  Fortunately two-digit numbers are not used in calls
      .replaceAll('\\b12|(and.)?((a|one).)?half\\b'.ri,'12')
      .replaceAll('\\b(three.quarters?|34)\\b'.ri,'34')
      .replaceAll('\\b(((a|one).)?quarter|14)\\b'.ri,'14')
      .replaceAll('\\b23|two.thirds?\\b'.ri,'23')
  //  Process any other numbers
      .replaceAll('\\bzero\\b'.ri,'0')
      .replaceAll('\\b(1|onc?e)\\b'.ri,'1')
      .replaceAll('\\b(2|two)\\b'.ri,'2')
      .replaceAll('\\b(3|three)\\b'.ri,'3')
      .replaceAll('\\b(4|four)\\b'.ri,'4')
      .replaceAll('\\b(5|five)\\b'.ri,'5')
      .replaceAll('\\b(6|six)\\b'.ri,'6')
      .replaceAll('\\b(7|seven)\\b'.ri,'7')
      .replaceAll('\\b(8|eight)\\b'.ri,'8')
      .replaceAll('\\b(9|nine)\\b'.ri,'9')
  //  2.5, 3.5 etc
      .replaceAllMapped('\\b([1-9])5'.ri,
          (m) => '${m[1]}12')
  //  Standardize 6 by 2, 6-2, 6 2 Acey Deucey
      .replaceAll('(six|6)\\s*(by)?x?-?\\s*(two|2)'.ri,'62')
      .replaceAll('(three|3)\\s*(by)?x?-?\\s*(two|2)'.ri,'32')
  //  'Column' of Magic Column is optional
      .replaceAll('magic (?!column)(?!o)(?!expand)'.ri,'Magic Column ')
  //  Use singular form
      .replaceAllMapped('\\b(boy|girl|beau|belle|center|end|point|head|(out)?side)s\\b'.ri, (m) => m[1]!)
  //  Misc other variations
      .replaceAll('\\bswap(\\s+around)?\\b'.ri,'Swap')
      .replaceAll('\\bmen\\b'.ri,'Boy')
      .replaceAll('\\bwomen\\b'.ri,'Girl')
      .replaceAll('\\blead(er)?(ing)?s?\\b'.ri,'Lead')
      .replaceAll('\\btrail(er)?(ing)?s?\\b'.ri,'Trail')
      .replaceAll('\\bcentres?\\b'.ri,'Center')
      .replaceAllMapped('\\b(1|3)4 tag the line\\b'.ri,
          (m) => '${m[1]}4 Tag')
      .replaceAll('\\b12 square thru\\b'.ri,'Square Thru 2')
      .replaceAll('\\bbox recycle\\b'.ri,'Recycle')
      .replaceAll('\\ballamande?\\b'.ri,'Allemande')
      .replaceAllMapped('interlocked (flip|cut) the'.ri,
          (m) => '${m[1]} the Interlocked')
  //  'Dixie Style' -> 'Dixie Style to a Wave'
      .replaceAll('\\bdixie style(?! to)'.ri,'Dixie Style to a Wave')
  //  Accept both Left Chase and Chase Left
      .replaceAll('\\bchase left\\b'.ri,'Left Chase')
  //  Change (fraction) Circle Left/Right to Circle Left/Right (fraction)
      .replaceAllMapped('(14|12|34) circle (left|right)'.ri,
          (m) => 'Circle ${m[2]} ${m[1]}')
  //  Accept optional 'dancers' e.g. 'head dancers' == 'heads'
      .replaceAll('\\bdancers?\\b'.ri,'')
  //  Also handle 'Lead Couples' as 'Leads'
  //  but make sure not to clobber 'As Couples' or 'Couples Hinge'
      .replaceAllMapped('((head|side|lead|trail|center|end).)couple'.ri,
          (m) => m[1]!)
  //  Finally remove non-alphanums and strip spaces
      .replaceAll('\\W'.ri,'')
      .replaceAll('\\s'.ri,'');

  static String platform() {
    try {
      final platform = LocalPlatform();
      if (platform.isIOS)
        return 'ios';
      else if (platform.isAndroid)
        return 'android';
      else
        return 'unknown';
      //  Currently web returns LocalPlatform but does not have
      //  an operating system so isXX throws UnsupportedError
    } on UnsupportedError catch (_) { }
    return 'web';
  }

  static bool isTouchDevice() => platform() != 'web';

}
