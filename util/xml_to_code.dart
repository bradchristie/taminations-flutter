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

import 'dart:io';

import 'package:taminations/extensions.dart';
import 'package:taminations/math/movement.dart';
import 'package:taminations/normalize_call.dart';
import 'package:xml/xml.dart';

void main() async {
  await writeMoves();
  await writeFormations();
  await writeCalls();
}

void writeOneMovement(IOSink mDart, XmlElement m) {
  mDart.writeln('Movement.fromData(');
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
    mDart.writeln(
        '    $b, $h, $cx1, $cy1, $cx2, $cy2, $x2, $y2, $cx3, $cx4, $cy4, $x4, $y4');
  } else {
    mDart.writeln('    $b, $h, $cx1, $cy1, $cx2, $cy2, $x2, $y2');
  }
  mDart.write('  )');
}

Future<void> writeMoves() async {
  var movesDoc = await File('assets/src/moves.xml').readAsString()
      .then((text) => XmlDocument.parse(text));
  var movesDart = File('lib/moves.g.dart').openWrite();
  var movesMap = <String, String>{};
  movesDart.writeln('import \'../common.dart\';');
  movesDart.writeln();
  movesDart.writeln('class Paths {');
  movesDoc.findAllElements('path').forEach((p) {
    var objName = p('name').id;
    movesMap[p('name')] = objName;
    var m = p
        .childrenNamed('movement')
        .firstOrNull;
    if (m != null) {
      movesDart.writeln(
          '  static final Path $objName = Path([');
      writeOneMovement(movesDart, m);
      movesDart.writeln('],\'${p('name')}\');');
    } else {
      final movestr = p.childrenNamed('move').map((m) {
        var objFrom = m('select').id;
        var mods = '';
        if (m('hands').isNotBlank)
          mods += '..changehands(Hands.${m('hands').toUpperCase()})';
        if (m('reflect').isNotBlank)
          mods += '..scale(1,-1)';
        if ((m('scaleX') + m('scaleY')).isNotBlank)
          mods += '..scale(${m('scaleX', '1')},${m('scaleY', '1')})';
        return '($objFrom.clone()$mods)';
      }).join('+');
      movesDart.writeln('  static final Path $objName = $movestr;');
    }
  });

  //  Map to look up move (Path object) by name
  movesDart.writeln();
  movesDart.writeln('static final Map<String,Path> pathMap = {');
  movesMap.forEach((key, value) {
    movesDart.writeln('    \'$key\' : $value,');
  });
  movesDart.writeln('  };');

  movesDart.writeln('}');  // end of Paths class
  await movesDart.flush();
  await movesDart.close();
}

void writeOneFormation(IOSink fDart, XmlElement f) {
  fDart.writeln('Formation(\'${f('name')}\', [');
  final asymmetric = f('asymmetric').isNotBlank;
  var numberArray =  ['1','5','2','6','3','7','4','8',
    '','','','','','','',''];
  var coupleArray = asymmetric
      ? ['1','1','3','3','2','2','4','4',' ',' ',' ',' ',' ',' ',' ',' ']
      : ['1','3','1','3','2','4','2','4',' ',' ',' ',' ',' ',' ',' ',' '];
  final dancers = f.childrenNamed('dancer');
  for (var i=0; i<dancers.length; i++) {
    var d = dancers[i];
    fDart.write('        Dancer.fromData(');
    fDart.write('number:\'${numberArray[i*2]}\',');
    fDart.write('couple:\'${coupleArray[i*2]}\',');
    fDart.write('gender:Gender.${d('gender').toUpperCase()},');
    fDart.write('x:${d('x')},');
    fDart.write('y:${d('y')},');
    fDart.write('angle:${d('angle')},');
    fDart.write('geom: SquareGeometry(0)');
    fDart.writeln('),');
    if (!asymmetric) {
      fDart.write('        Dancer.fromData(');
      fDart.write('number:\'${numberArray[i*2+1]}\',');
      fDart.write('couple:\'${coupleArray[i*2+1]}\',');
      fDart.write('gender:Gender.${d('gender').toUpperCase()},');
      fDart.write('x:${d('x')},');
      fDart.write('y:${d('y')},');
      fDart.write('angle:${d('angle')},');
      fDart.write('geom: SquareGeometry(1)');
      fDart.writeln('),');
    }
  }
  fDart.write('  ])');
}

Future<void> writeFormations() async {
  var fDoc = await File('assets/src/formations.xml').readAsString()
      .then((text) => XmlDocument.parse(text));
  var fDart = File('lib/formations.g.dart').openWrite();
  var fMap = <String,String>{};
  fDart.writeln('import \'../common.dart\';');
  fDart.writeln();
  fDart.writeln('class Formations {');
  fDoc.findAllElements('formation').forEach((f) {
    var objName = f('name').id;
    fMap[f('name')] = objName;
    fDart.writeln('  static final Formation $objName = ');
    writeOneFormation(fDart, f);
    fDart.writeln(';');
  });


  //  Map to look up move formation by name
  fDart.writeln();
  fDart.writeln('static final Map<String,Formation> formationMap = {');
  fMap.forEach((key, value) {
    fDart.writeln('    \'$key\' : $value,');
  });
  fDart.writeln('  };');
  fDart.writeln();

  fDart.writeln('}');  // end of Formations class

  await fDart.flush();
  await fDart.close();
}


Future<void> writeCalls() async {
  final dirs = ['b1','b2','ms','plus','a1','a2','c1','c2','c3a','c3b'];
  for (var dir in dirs) {
    for (var file in Directory('lib/calls/$dir').listSync()) {
      file.deleteSync();
    }
  }
  var callsDoc = await File('assets/src/calls.xml').readAsString()
      .then((text) => XmlDocument.parse(text));
  var callIndex = <String,List<String>>{};
  var importSet = <String>{};
  await Future.forEach(callsDoc.findAllElements('call'),(c) async {
    var call = c as XmlElement;
    var link = call('link').replaceFirst('\\?.*'.r, '');
    var dir = link.split('/').first;
    if (link.contains('ssd'))
      return;
    var callDoc = await File('assets/$link.xml').readAsString()
        .then((text) => XmlDocument.parse(text));
    if (callDoc.findAllElements('tam').isEmpty)
      return;
    var className = link.replaceFirst('.*\\/'.r, '')
        .replaceAllMapped('_(\\w)'.r, (m) => m[1]!.toUpperCase())
        .replaceAllMapped('^(\\w)'.r, (m) => m[1]!.toUpperCase());
    if (className.startsWith('[0-9]'.r))
      className = 'Q' + className;
    print('Building $className');

    var cDart = File('lib/calls/$link.g.dart').openWrite();
    final thisImport = 'import \'$link.g.dart\';';
    //if (importSet.contains(thisImport))
    //  return;
    importSet.add(thisImport);
    cDart.writeln('import \'../../common.dart\';');
    cDart.writeln('import \'../../formations.g.dart\';');
    cDart.writeln('import \'../../moves.g.dart\';');
    cDart.writeln('import \'../../sequencer/calls/animated_call.dart\';');
    cDart.writeln();
    cDart.writeln('  final List<AnimatedCall> $className = [ ');
    var count = 0;
    callDoc.findAllElements('tam')
        .where((tam) => !(tam('sequencer').contains('no')))
        .forEach((tam) {
      cDart.writeln('    AnimatedCall(${tam('title').q},');
      if (tam.childrenNamed('formation').isNotEmpty) {
        //  custom formation
        cDart.write('      ');
        writeOneFormation(cDart, tam.childrenNamed('formation').first);
        cDart.writeln(',');
      }
      else
        cDart.writeln('      Formations.${tam('formation').id},');
      cDart.writeln('      [');
      tam.findElements('path').forEach((path) {
        cDart.writeln('        Path.fromPaths([');
        path.childElements.forEach((move) {
          if (move.tag == 'move') {
            cDart.write('          Paths.${move('select').id}.clone()');
            if (move('beats').isNotBlank)
              cDart.write('..changeBeats(${move('beats')})');
            if (move('hands').isNotBlank) {
              var h = Hands.getHands(move('hands'));
              cDart.write('..changehands($h)');
            }
            if (move('scaleX').isNotBlank || move('scaleY').isNotBlank) {
              var sx = move('scaleX','1').d;
              var sy = move('scaleY','1').d;
              cDart.write('..scale($sx,$sy)');
            }
            if (move('offsetX').isNotBlank || move('offsetY').isNotBlank) {
              var sx = move('offsetX','0').d;
              var sy = move('offsetY','0').d;
              cDart.write('..skew($sx,$sy)');
            }
            cDart.writeln(',');  // end of one move
          }
          else if (move.tag == 'movement') {
            cDart.write('      Path.fromMovement(');
            writeOneMovement(cDart, move);
            cDart.writeln('),');
          }
        });
        cDart.writeln('        ]),');  //  end of one path
      });
      cDart.writeln('      ],');  //  end of all paths for one animation
      cDart.writeln('      parts:\'${tam('parts')}\'),');
      var norm = normalizeCall(tam('title'));
      if (!callIndex.containsKey(norm))
        callIndex[norm] = [];
      callIndex[norm]!.add('$dir/$className[$count]');
      count += 1;
    });
    cDart.writeln('  ];');  //  end of animation list
    await cDart.flush();
    await cDart.close();
  });  // end of call

  for (var dir in dirs) {
    var iDart = File('lib/calls/$dir/calls_index.g.dart').openWrite();
    iDart.writeln('import \'../../sequencer/calls/animated_call.dart\';');
    importSet.forEach((imp) {
      if (imp.contains('$dir/'))
        iDart.writeln(imp.replaceFirst('$dir/', ''));
    });
    iDart.writeln('class CallsIndex {');
    iDart.writeln('  static Map<String,List<AnimatedCall>> index = {');
    callIndex.forEach((norm, calls) {
      final thesecalls = calls
          .where((call) => call.startsWith(dir))
          .map((call) => call.replaceFirst('$dir/', ''));
      if (thesecalls.isNotEmpty) {
        var callstr = thesecalls.join(',');
        iDart.writeln('      ${norm.q} : [ $callstr ],');
      }
    });
    iDart.writeln('  };');
    iDart.writeln('}');
    await iDart.flush();
    await iDart.close();

  }

}
