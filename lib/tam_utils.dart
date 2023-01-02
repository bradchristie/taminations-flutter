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

import 'dart:async' show Future;
import 'dart:typed_data';

import 'package:flutter/services.dart' show rootBundle;
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

  //  Link ssd assets to assets in b1/b2/ms
  static Map<String,String> ssdDir = {
    'alamo_style' : 'b2',
    'all_around_the_corner' : 'b1',
    'allemande' : 'b1',
    'allemande_thar' : 'ms',
    'arm_turns' : 'b1',
    'bend_the_line' : 'b1',
    'box_the_gnat' : 'b2',
    'california_twirl' : 'b1',
    'cast_off_three_quarters' : 'ms',
    'centers_in' : 'ms',
    'chain_down_the_line' : 'b1',
    'circle' : 'b1',
    'circle_left' : 'b1',
    'circle_right' : 'b1',
    'circle_to_a_line' : 'b1',
    'circulate' : 'b1',
    'circulate_1' : 'b1',
    'circulate_2' : 'b1',
    'circulate_3' : 'b1',
    'circulate_4' : 'b1',
    'circulate_5' : 'b1',
    'circulate_6' : 'b1',
    'cloverleaf' : 'ms',
    'courtesy_turn' : 'b1',
    'cross_fold' : 'ms',
    'cross_run' : 'b2',
    'dive_thru' : 'b1',
    'dixie_syle' : 'ms',
    'dixie_style_to_an_ocean_wave' : 'ms',
    'do_paso' : 'b1',
    'dosado' : 'b1',
    'double_pass_thru' : 'b1',
    'eight_chain_thru' : 'ms',
    'extend' : 'b2',
    'extend-1' : 'b2',
    'extend-2' : 'b2',
    'extend-3' : 'b2',
    'extend-4' : 'b2',
    'extend-5' : 'b2',
    'extend-6' : 'b2',
    'extend-7' : 'b2',
    'extend-8' : 'b2',
    'extend-41' : 'b2',
    'extend-42' : 'b2',
    'extend-43' : 'b2',
    'extend-44' : 'b2',
    'extend-45' : 'b2',
    'extend-46' : 'b2',
    'extend-47' : 'b2',
    'extend-48' : 'b2',
    'face' : 'b1',
    'face_in' : 'b1',
    'face_out' : 'b1',
    'face_left' : 'b1',
    'face_right' : 'b1',
    'facing_couples_rule' : 'b2',
    'facing_couples_rule_1' : 'b2',
    'facing_couples_rule_2' : 'b2',
    'ferris_wheel' : 'b2',
    'first_couple_go' : 'b1',
    'first_couple_go_left_next_couple_go_right' : 'b1',
    'flutterwheel' : 'b2',
    'fold' : 'ms',
    'fold-1' : 'ms',
    'fold-2' : 'ms',
    'fold-3' : 'ms',
    'fold-4' : 'ms',
    'fold-5' : 'ms',
    'fold-6' : 'ms',
    'fold-7' : 'ms',
    'forward_and_back' : 'b1',
    'fraction_tag' : 'ms',
    'grand_square' : 'b1',
    'half_sashay' : 'b1',
    'half_tag' : 'ms',
    'hinge' : 'ms',
    'ladies_chain' : 'b1',
    'lead_right' : 'b1',
    'left_arm_turn' : 'b1',
    'left_hand_star' : 'b1',
    'ocean_wave' : 'b2',
    'ocean_wave_rule' : 'b2',
    'pass_the_ocean' : 'b2',
    'pass_thru' : 'b1',
    'pass_to_the_center' : 'ms',
    'passing_rule' : 'b1',
    'promenade' : 'b1',
    'pull_by' : 'b1',
    'recycle' : 'ms',
    'reverse_flutterwheel' : 'b2',
    'right_and_left_grand' : 'b1',
    'right_and_left_thru' : 'b1',
    'right_hand_star' : 'b1',
    'rollaway' : 'b1',
    'run' : 'b2',
    'same_position_rule' : 'b1',
    'sashay' : 'b1',
    'scoot_back' : 'ms',
    'see_saw' : 'b1',
    'separate' : 'b1',
    'shoot_the_star' : 'ms',
    'slide_thru' : 'ms',
    'slip_the_clutch' : 'ms',
    'spin_chain_thru' : 'ms',
    'spin_the_top' : 'ms',
    'split_circulate' : 'b1',
    'split_the_outside_couple' : 'b1',
    'split_two' : 'b1',
    'square_thru' : 'b1',
    'star' : 'b1',
    'star_thru' : 'b1',
    'step_thru' : 'b1',
    'sweep_a_quarter' : 'b2',
    'swing' : 'b1',
    'swing_thru' : 'b2',
    'tag' : 'ms',
    'tag_the_line' : 'ms',
    'thar' : 'ms',
    'three_quarters_tag_the_line' : 'ms',
    'touch_a_quarter' : 'b2',
    'trade' : 'b2',
    'trade_by' : 'b2',
    'turn_back' : 'b1',
    'turn_thru' : 'ms',
    'veer' : 'b1',
    'veer_left' : 'b1',
    'veer_right' : 'b1',
    'walk_and_dodge' : 'ms',
    'walk_around_the_corner' : 'b1',
    'weave_the_ring' : 'b1',
    'wheel_and_deal' : 'b2',
    'wheel_around' : 'b2',
    'wrong_way_grand' : 'b1',
    'wrong_way_thar' : 'ms',
    'zoom' : 'b2'
  };
  static String linkSSD(String filename) {
    if (filename.startsWith('ssd/')) {
      final name = filename.replaceFirst('ssd/','')
          .replaceFirst('\\..*'.r, '');
      final dir = ssdDir[name] ?? 'ssd';
      return filename.replaceFirst('ssd', dir);
    }
    return filename;
  }

  //  Read an XML file or other from the assets
  static Future<String> getAsset(String filename) async =>
      rootBundle.loadString('assets/${linkSSD(filename)}');
  static Future<ByteData> getBinaryAsset(String filename) async =>
      rootBundle.load('assets/${linkSSD(filename)}');
  static Future<XmlDocument> getXMLAsset(String filename) async =>
      rootBundle.loadString('assets/${linkSSD(filename)}.xml').then((text) =>
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
      } else if (i > 3) { //  phantoms
        retval[i * 2] = ' ';
        retval[i * 2 + 1] = ' ';
      } else if (tam('asymmetric').isNotBlank) {
        retval[i] = '${i + 1}';
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
    if (tam('asymmetric').isNotBlank)
      retval = ['1','1','3','3','2','2','4','4'];
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
    var path = Path(_translate(_moves[name]!),name);
    if (scale != null)
      path.scale(scale.x,scale.y);
    if (skew != null)
      path.skew(skew.x,skew.y);
    if (hands != null)
      path.changehands(hands);
    if (beats != null)
      path.changeBeats(beats);
    if ((reflect ?? false))
      path.reflect();
    return path;
  }

  static String platform() {
    try {
      final platform = LocalPlatform();
      return platform.operatingSystem;
      //  Currently web returns LocalPlatform but does not have
      //  an operating system so .operatingSystem throws UnsupportedError
    } on UnsupportedError catch (_) { }
    return 'web';
  }

  static bool get isTouchDevice => platform().matches('(android|ios)'.r);
  static bool get canListen => platform().matches('(android|ios)'.r);
  static bool get canSpeak => platform().matches('(android|ios|web|macos)'.r);

}

extension TamUtilsString on String {
  String get norm => normalizeCall(this);
}