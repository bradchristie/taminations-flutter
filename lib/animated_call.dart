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

import 'extensions.dart';
import 'formation.dart';
import 'level_data.dart';
import 'math/path.dart';

class AnimatedCall {

  String title;
  String group;
  Formation formation;
  List<Path> paths;
  bool isExact;
  bool isAsymmetric;
  bool isPerimeter;
  bool isGenderSpecific;
  int difficulty;
  bool noDisplay;
  bool notForSequencer;
  String actives;
  LevelData level;
  String from;
  String parts;
  String fractions;
  List<String> numbers;
  List<String> coupleNumbers;
  String taminator;

  AnimatedCall(this.title,
      { required Formation formation,
        required List<Path> paths,
        this.from = '',
        this.group = '',
        this.parts = '',
        this.fractions = '',
        this.difficulty = 0,
        this.actives = '',
        this.level = LevelData.B1,
        this.isPerimeter = false,
        this.isExact = false,
        this.isAsymmetric = false,
        this.isGenderSpecific = false,
        this.notForSequencer = false,
        this.noDisplay = false,
        this.numbers = const ['1', '5', '2', '6', '3', '7', '4', '8',
          ' ',' ',' ',' ',' ',' ',' ',' '],
        this.coupleNumbers = const ['1', '3', '1', '3', '2', '4', '2', '4',
          ' ',' ',' ',' ',' ',' ',' ',' '],
        this.taminator = ''
      })
      : formation = formation.copy(), paths = paths.clone() {
    if (formation.asymmetric)
      isAsymmetric = true;
    if (paths.length == formation.dancers.length) {
      for (var i = 0; i < formation.dancers.length; i++)
        formation.dancers[i].path = paths[i];
    } else if (paths.length * 2 == formation.dancers.length) {
      for (var i = 0; i < formation.dancers.length; i++)
        formation.dancers[i].path = paths[i ~/ 2];
    } else
      throw ArgumentError('Animated Call length mismatch: ${paths.length} ${formation.dancers.length}.');
  }

  AnimatedCall xref({ String? title, String? group,
    int? difficulty, bool? notForSequencer }) {
    return AnimatedCall(title ?? this.title,
      formation: formation,
      paths: paths,
      from: from,
      group: group ?? this.group,
      parts: parts,
      fractions: fractions,
      difficulty: difficulty ?? this.difficulty,
      actives: actives,
      isPerimeter: isPerimeter,
      isExact: isExact,
      isAsymmetric: isAsymmetric,
      isGenderSpecific: isGenderSpecific,
      notForSequencer: notForSequencer ?? this.notForSequencer,
      noDisplay: noDisplay,
      numbers: numbers,
      coupleNumbers: coupleNumbers
    );
  }

  XmlElement toXml() => XmlElement('tam'.xml,<XmlAttribute>[
    XmlAttribute('title'.xml, title),
    if (from.isNotEmpty)
      XmlAttribute('from'.xml, from),
    if (formation.name.isNotEmpty)
      XmlAttribute('formation'.xml, formation.name),
    if (group.isNotEmpty)
      XmlAttribute('group'.xml, group),
    if (parts.isNotEmpty)
      XmlAttribute('parts'.xml, parts),
    if (fractions.isNotEmpty)
      XmlAttribute('fractions'.xml, fractions),
    if (difficulty != 0)
      XmlAttribute('difficulty'.xml, difficulty.s),
    if (actives.isNotEmpty)
      XmlAttribute('actives'.xml, actives),
    if (isPerimeter)
      XmlAttribute('sequencer'.xml, 'perimeter'),
    if (isExact)
      XmlAttribute('sequencer'.xml, 'exact'),
    if (isAsymmetric)
      XmlAttribute('asymmetric'.xml, 'true'),
    if (isGenderSpecific)
      XmlAttribute('sequencer'.xml, 'gender-specific'),
    if (noDisplay)
      XmlAttribute('display'.xml, 'no'),
    if (notForSequencer)
      XmlAttribute('sequencer'.xml, 'no'),
  ], <XmlElement>[
    if (formation.name.isEmpty)
      formation.toXML(),
    for (var p in paths)
      p.toXML(),
    if (taminator.isNotEmpty)
      XmlElement('taminator'.xml,[],[XmlText(taminator)])
  ]);

}