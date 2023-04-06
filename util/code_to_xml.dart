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

import 'dart:io';

import 'package:taminations/call_index.g.dart';
import 'package:taminations/formations.g.dart';
import 'package:taminations/moves.g.dart';

void main() async {
  clean();
  await writeMoves();
  await writeFormations();
  await writeAnimations();
}

void clean() {
  final dirs = ['b1','b2','ms','plus','a1','a2','c1','c2','c3a','c3b'];
  try {
    Directory('assets/generated/').deleteSync(recursive: true);
  } catch(e) {
    if (!(e is FileSystemException))
      rethrow;
  }
  Directory('assets/generated').createSync();
  for (var dir in dirs) {
    Directory('assets/generated/$dir').createSync();
  }
}

Future<void> writeMoves() async {
  var movesXML = File('assets/generated/moves.g.xml').openWrite();
  movesXML.writeln('<?xml version="1.0"?>');
  movesXML.writeln('<!DOCTYPE moves SYSTEM "tamination.dtd">');
  movesXML.writeln('<moves>');
  for (var move in AllMoves) {
    movesXML.writeln('  <path name="${move.name}">');
    for (var movement in move.movelist) {
      movesXML.writeln('    ${movement.toXML()}');
    }
    movesXML.writeln('  </path>');
  }
  movesXML.writeln('</moves>');
  await movesXML.flush();
  await movesXML.close();
}

Future<void> writeFormations() async {
  var formationsXML = File('assets/generated/formations.g.xml').openWrite();
  formationsXML.writeln('<?xml version="1.0"?>');
  formationsXML.writeln('<!DOCTYPE formations SYSTEM "tamination.dtd">');
  formationsXML.writeln('<formations>');
  for (var formation in Formations.formationIndex.values) {
    formationsXML.writeln('  '+formation.toXML().toXmlString(pretty: true, level: 1));
  }
  formationsXML.writeln('</formations>');
  await formationsXML.flush();
  await formationsXML.close();
}

Future<void> writeAnimations() async {
  for (var callEntry in callIndex) {
    print(callEntry.title);
    var callXML = File('assets/generated/'+callEntry.link+'.xml').openWrite();
    callXML.writeln('<?xml version="1.0"?>');
    callXML.writeln('<!DOCTYPE tamination SYSTEM "tamination.dtd">');
    callXML.writeln('<tamination title="${callEntry.title}">');
    for (var call in callEntry.calls)
      callXML.writeln('\n  '+call.toXml().toXmlString(pretty: true, level: 1));
    callXML.writeln('\n</tamination>');
    await callXML.flush();
    await callXML.close();
  }
}
