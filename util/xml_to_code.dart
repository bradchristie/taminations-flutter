/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'package:xml/xml.dart';
import 'dart:io';
import 'package:taminations/extensions.dart';

void main() async {

  var movesDoc = await File('src/moves.xml').readAsString()
      .then((text)=>XmlDocument.parse(text));
  var movesMap = <String,String>{};
  print('import \'../common.dart\';');
  print('class Paths {');
  movesDoc.findAllElements('path').forEach((p) {
    var objName = p('name').ident;
    movesMap[p('name')] = objName;
    var m = p.childrenNamed('movement').firstOrNull;
    if (m != null) {
      print('static final Path $objName = Path([Movement.fromData(');
      var b = 'beats: ' + m('beats');
      var h = 'hands: Hands.' + m('hands').toUpperCase();
      var cx1 = 'cx1: ' + m('cx1');
      var cy1 = 'cy1: ' + m('cy1');
      var cx2 = 'cx2: ' + m('cx2');
      var cy2 = 'cy2: ' + m('cy2');
      var x2 = 'x2: ' + m('x2');
      var y2 = 'y2: ' + m('y2');
      if (m('cx3').isNotBlank) {
        var cx3 = 'cx3: ' + m('cx3');
        var cx4 = 'cx4: ' + m('cx4');
        var cy4 = 'cy4: ' + m('cy4');
        var x4 = 'x4: ' + m('x4');
        var y4 = 'y4: ' + m('y4');
        print('  $b, $h, $cx1, $cy1, $cx2, $cy2, $x2, $y2, $cx3, $cx4, $cy4, $x4, $y4');
      } else {
        print('  $b, $h, $cx1, $cy1, $cx2, $cy2, $x2, $y2');
      }
      print(')],\'${p('name')}\');');
    } else {
      m = p.childrenNamed('move').firstOrNull;
      if (m != null) {
        var objFrom = m('select').ident;
        var mods = '';
        if (m('hands').isNotBlank)
          mods += '..changehands(Hands.${m('hands').toUpperCase()})';
        if (m('reflect').isNotBlank)
          mods += '..scale(1,-1)';
        if ((m('scaleX')+m('scaleY')).isNotBlank)
          mods += '..scale(${m('scaleX','1')},${m('scaleY','1')})';
        print('static final Path $objName = $objFrom$mods;');
      }
    }
  });

  print('static final Map<String,Path> pathMap = {');
  movesMap.forEach((key, value) {
    print('    \'$key\' : $value,');
  });
  print('};');

  print('}');
}