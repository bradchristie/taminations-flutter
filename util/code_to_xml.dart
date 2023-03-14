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

import 'package:taminations/extensions.dart';
import 'package:xml/xml.dart';
import 'package:taminations/formations.g.dart';
import 'package:taminations/moves.g.dart';

void main() async {
  await writeMoves();
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
  formationsXML.writeln('<!DOCTYPE moves SYSTEM "tamination.dtd">');
  formationsXML.writeln('<formations>');


  formationsXML.writeln('</formations>');
  await formationsXML.flush();
  await formationsXML.close();
}
