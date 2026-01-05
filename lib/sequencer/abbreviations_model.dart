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

import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart' as fs;
import 'package:shared_preferences/shared_preferences.dart';
import 'words.dart';

import '../common_flutter.dart';

class Abbreviation {
  String abbr;
  String expa;
  bool isError=false;
  Abbreviation(this.abbr,this.expa);
}

enum SortOrder { asc, desc, none }
enum SortField { abbr, expa }

class AbbreviationsModel extends fm.ChangeNotifier {

  static late SharedPreferences prefs;
  var sortOrder = SortOrder.asc;
  var sortField = SortField.abbr;

  static final initialAbbreviations = {
    'g' : 'Girls',
    'b' : 'Boys',
    'c' : 'Centers',
    'e' : 'Ends',
    'h' : 'Heads',
    's' : 'Sides',
    'ct' : 'Courtesy Turn',
    'hs' : 'Half Sashay',
    'pt' : 'Pass Thru',
    'al' : 'Allemande Left',
    'btl' : 'Bend the Line',
    'rlg' : 'Right and Left Grand',
    'rlt' : 'Right and Left Thru',
    'sq2' : 'Square Thru 2',
    'sq3' : 'Square Thru 3',
    'sq4' : 'Square Thru 4',
    'dpt' : 'Double Pass Thru',
    'vl' : 'Veer Left',
    'vr' : 'Veer Right',
    'x' : 'Cross',
    'xt' : 'Extend',
    'fw' : 'Ferris Wheel',
    'fl' : 'Flutterwheel',
    'rf' : 'Reverse Flutterwheel',
    'pto' : 'Pass the Ocean',
    'st' : 'Swing Thru',
    'tq' : 'Touch a Quarter',
    'tb' : 'Trade By',
    'whd' : 'Wheel and Deal',
    'wa' : 'Wheel Around',
    'zo' : 'Zoom',
    'c34' : 'Cast Off 3/4',
    'circ' : 'Circulate',
    'ci' : 'Centers In',
    'cl' : 'Cloverleaf',
    'dx' : 'Dixie Style to a Wave',
    'ht' : 'Half Tag',
    'ptc' : 'Pass to the Center',
    'sb' : 'Scoot Back',
    'stt' : 'Spin the Top',
    'ttl' : 'Tag the Line',
    'wad' : 'Walk and Dodge',
    'dyp' : 'Do Your Part'
  };


  static List<Abbreviation> currentAbbreviations = [];

  AbbreviationsModel() {
    _load();
  }

  Future<void> _load() async {
    prefs = await SharedPreferences.getInstance();
    if (prefs.getString('+abbrev stored') == null) {
      for (var k in initialAbbreviations.keys)
        await prefs.setString('abbrev $k',initialAbbreviations[k]!);
      await prefs.setString('+abbrev stored', 'true');
    }
    currentAbbreviations = [];
    for (var k in prefs.getKeys()) {
      if (k.startsWith('abbrev ')) {
        currentAbbreviations.add(
            Abbreviation(k.replaceFirst('abbrev ', ''),
                prefs.getString(k)!));
      }
    }
    currentAbbreviations.add(Abbreviation('',''));
    _detectSort();
  }

  Future<void> setAbbreviation(int index, String abbr) async {
    currentAbbreviations[index].abbr = abbr;
    await _save();
  }

  Future<void> setExpansion(int index, String expan) async {
    currentAbbreviations[index].expa = expan;
    await _save();
  }

  Future<void> _clearStorage() async {
    for (var k in prefs.getKeys()) {
      if (k.startsWith('abbrev ')) {
        await prefs.remove(k);
      }
    }
  }
  void clear() async {
    await _clearStorage();
    currentAbbreviations = [Abbreviation('','')];
    await _save();
    notifyListeners();
  }

  Future<void> _save() async {
    if (!_checkForErrors()) {
      await _clearStorage();
      for (var p in currentAbbreviations) {
        if (p.abbr.isNotBlank && !p.isError) {
          await prefs.setString('abbrev ${p.abbr.trim()}', p.expa);
        }
      }
    }
    _detectSort();
  }

  bool _checkForErrors() {
    final errorCount = currentAbbreviations.where((e) => e.isError).length;
    for (var i=0; i<currentAbbreviations.length; i++) {
      var p = currentAbbreviations[i];
      p.isError = false;
      //  Check for invalid entries
      if (p.abbr.isNotBlank && p.expa.isNotBlank) {
        if (p.abbr.isBlank || p.expa.isBlank)
          p.isError = true;
        if(p.abbr.trim().contains(' '))
          p.isError = true;
      }
      //  Check for words used in calling
      if (Words.words.contains(p.abbr))
        p.isError = true;
      //  Check for duplicates
      //  Assumes abbreviations have already been lowercased
      if (!p.isError && p.abbr.isNotBlank) {
        for (var j = 0; j < i; j++) {
          if (currentAbbreviations[j].abbr == p.abbr) {
            p.isError = true;
            currentAbbreviations[j].isError = true;
          }
        }
      }
    }
    //  Add blank entry at end if it's not already there
    if (currentAbbreviations.last.abbr.isNotBlank ||
        currentAbbreviations.last.expa.isNotBlank)
      currentAbbreviations.add(Abbreviation('',''));

    if (currentAbbreviations.where((e) => e.isError).isNotEmpty || errorCount > 0)
      notifyListeners();
    return currentAbbreviations.any((item) => item.isError);
  }

  void _detectSort() {
    var isAbbrAsc = true;
    var isAbbrDesc = true;
    var isExpaAsc = true;
    var isExpaDesc = true;
    //  be sure to skip the last line, which is blank for new entries
    for (var i=1; i<currentAbbreviations.length-1; i++) {
      if (currentAbbreviations[i].abbr.lc > currentAbbreviations[i-1].abbr.lc)
        isAbbrDesc = false;
      if (currentAbbreviations[i].abbr.lc < currentAbbreviations[i-1].abbr.lc)
        isAbbrAsc = false;
      if (currentAbbreviations[i].expa.lc > currentAbbreviations[i-1].expa.lc)
        isExpaDesc = false;
      if (currentAbbreviations[i].expa.lc < currentAbbreviations[i-1].expa.lc)
        isExpaAsc = false;
    }
    if (isAbbrAsc) {
      sortField = SortField.abbr;
      sortOrder = SortOrder.asc;
    }
    else if (isAbbrDesc) {
      sortField = SortField.abbr;
      sortOrder = SortOrder.desc;
    }
    else if (isExpaAsc) {
      sortField = SortField.expa;
      sortOrder = SortOrder.asc;
    }
    else if (isExpaDesc) {
      sortField = SortField.expa;
      sortOrder = SortOrder.desc;
    } else
      sortOrder = SortOrder.none;
  }

  Future<void> sort() async {
    currentAbbreviations.sort((a,b) {
      if (a.abbr.isBlank)
        return 1;
      else if (b.abbr.isBlank)
        return -1;
      return switch ((sortOrder, sortField)) {
        (SortOrder.asc, SortField.abbr) => a.abbr.lc.compareTo(b.abbr.lc),
        (SortOrder.asc, SortField.expa) => a.expa.lc.compareTo(b.expa.lc),
        (SortOrder.desc, SortField.abbr) => b.abbr.lc.compareTo(a.abbr.lc),
        (SortOrder.desc, SortField.expa) => b.expa.lc.compareTo(a.expa.lc),
        (SortOrder.none, _) => 0
      };
    }
    );
    await _save();
    await _load();
    notifyListeners();
  }

  void copy() {
    final text = currentAbbreviations
        .where((e) => e.abbr.isNotBlank).map((e) => '${e.abbr}\t${e.expa}').join('\n');
    final clip = fs.ClipboardData(text:text);
    fs.Clipboard.setData(clip);
  }

  Future<void> paste(String text) async {
    //  Process each line of pasted abbreviations
    for (final line in text.split('\\n'.r)) {
      final breakup = line.divide('\\s+'.r);
      if (breakup.length != 2)
        continue;
      final abbr = breakup[0].replaceAll('\\W'.r, '').trim();
      final expansion = breakup[1].replaceAll('\\s'.r, ' ').trim();
      //  Check for valid abbreviation
      if (abbr.isBlank || expansion.isBlank)
        continue;
      if (Words.words.contains(abbr.toLowerCase()))
        continue;
      //  Look for and replace existing abbreviation
      var found = false;
      for (var i = 0; i < currentAbbreviations.length; i++) {
        if (currentAbbreviations[i].abbr == abbr.toLowerCase()) {
          currentAbbreviations[i] = Abbreviation(abbr, expansion);
          found = true;
        }
      }
      //  Add a new abbreviation
      if (!found) {
        final insertPoint = max(currentAbbreviations.length - 1,0);
        currentAbbreviations.insert(insertPoint,Abbreviation(abbr, expansion));
      }
    }
    await _save();
    notifyListeners();
  }

  //  Replace any abbreviations with their expanded equivalents
  //  and return the new string
  static String replaceAbbreviations(String text) {
    var replaced = text;
    for (final a in currentAbbreviations) {
      replaced = replaced.replaceAll('\\b${a.abbr}\\b'.ri, a.expa);
    }
    return replaced;
  }

  Future<void> defaultAbbreviations() async {
    await _clearStorage();
    for (var k in initialAbbreviations.keys)
      await prefs.setString('abbrev $k',initialAbbreviations[k]!);
    await _load();
    notifyListeners();
  }

}