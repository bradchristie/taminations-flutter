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

//  This program generates Dart classes from the XML animations
//  and supporting XML files

void main() async {
  await writeMoves();
  await writeFormations();
  await writeCalls();
}

String link2class(String link) {
  var className = link.replaceFirst('.*\\/'.r, '')
      .replaceAllMapped('_(\\w)'.r, (m) => m[1]!.toUpperCase())
      .replaceAllMapped('^(\\w)'.r, (m) => m[1]!.toUpperCase());
  if (className.startsWith('[0-9]'.r))
    className = 'Q' + className;
  return className;
}

///  Get all tam and tamxref elements from an animation XML document
List<XmlElement> tamList(XmlDocument doc) => doc.firstElementChild!
    .children.toList()
    .whereType<XmlElement>().cast<XmlElement>()
    .where((element) =>
     (element.name.toString() == 'tam' || element.name.toString() == 'tamxref')).toList();

String writeOneMovement(XmlElement m) {
  var move = 'Movement.fromData(';
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
    move += '    $b, $h, $cx1, $cy1, $cx2, $cy2, $x2, $y2, $cx3, $cx4, $cy4, $x4, $y4';
  } else {
    move += '    $b, $h, $cx1, $cy1, $cx2, $cy2, $x2, $y2';
  }
  move += '  )';
  return move;
}

//  This routine builds a list of Path objects
//  from the moves.xml file
Future<void> writeMoves() async {
  var movesDoc = await File('assets/src/moves.xml').readAsString()
      .then((text) => XmlDocument.parse(text));
  var movesDart = File('lib/moves.g.dart').openWrite();
  var movesMap = <String, String>{};
  movesDart.writeln('import \'../common.dart\';');
  movesDart.writeln();
  movesDoc.findAllElements('path').forEach((p) {
    var objName = p('name').id;
    movesMap[p('name')] = objName;
    var m = p
        .childrenNamed('movement')
        .firstOrNull;
    if (m != null) {
      movesDart.writeln(
          'final Path $objName = Path([');
      movesDart.write(writeOneMovement(m));
      movesDart.writeln('],\'${p('name')}\');');
    } else {
      final movestr = p.childrenNamed('move').map((m) {
        var objFrom = m('select').id;
        var mods = '';
        if (m('hands').isNotBlank)
          mods += '.changehands(Hands.${m('hands').toUpperCase()})';
        if (m('beats').isNotBlank)
          mods += '.changeBeats(${m('beats')})';
        if (m('reflect').isNotBlank)
          mods += '.scale(1,-1)';
        if ((m('scaleX') + m('scaleY')).isNotBlank)
          mods += '.scale(${m('scaleX', '1')},${m('scaleY', '1')})';
        return '($objFrom.clone()$mods)';
      }).join('+');
      movesDart.writeln('final Path $objName = $movestr;');
    }
  });

  await movesDart.flush();
  await movesDart.close();
}

void writeOneFormation(StringSink fDart, XmlElement f, {bool isAsymmetric=false}) {
  fDart.writeln('Formation(\'${f('name')}\', [');
  final dancers = f.childrenNamed('dancer');
  for (var i=0; i<dancers.length; i++) {
    var d = dancers[i];
    fDart.write('        Dancer.fromData(');
    fDart.write('gender:Gender.${d('gender').toUpperCase()},');
    fDart.write('x:${d('x')},');
    fDart.write('y:${d('y')},');
    fDart.write('angle:${d('angle')}');
    fDart.writeln('),');
  }
  fDart.write('  ]${isAsymmetric?',asymmetric:true':''})');
}

//  This routine builds a list of Formation class objects
//  from the formations.xml file
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
  fDart.writeln('static final Map<String,Formation> formationIndex = {');
  fMap.forEach((key, value) {
    fDart.writeln('    \'$key\' : $value,');
  });
  fDart.writeln('  };');
  fDart.writeln();

  fDart.writeln('}');  // end of Formations class

  await fDart.flush();
  await fDart.close();
}

//  This fetches every animation xml file
//  and creates a corresponding file containing
//  a list of AnimatedCall objects
//  Also, for each directory, an index file calls_index.g.dart
//  is built that maps normalized call names to lists of AnimatedCall objects
Future<void> writeCalls() async {
  final dirs = ['b1','b2','ms','plus','a1','a2','c1','c2','c3a','c3b'];
  try {
    Directory('lib/calls').deleteSync(recursive: true);
  } catch(e) {
    if (!(e is FileSystemException))
      rethrow;
  }
  Directory('lib/calls').createSync();
  for (var dir in dirs) {
    Directory('lib/calls/$dir').createSync();
  }
  var callsDoc = await File('assets/src/calls.xml').readAsString()
      .then((text) => XmlDocument.parse(text));
  var callIndex = <String,List<String>>{};
  var importSet = <String>{};
  var cIndex = <String>[];
  var cInclude = <String>{};
  var titles = <String,String>{};
  await Future.forEach(callsDoc.findAllElements('call'),(c) async {
    var call = c as XmlElement;
    var link = call('link').replaceFirst('\\?.*'.r, '');
    var dir = link.split('/').first;
    var imports = <String>{};
    var className = link2class(link);

    //  Add entry for call index
    var languages = call('languages').split('\\s'.r).map((a) => "'$a'").join(',');
    if (languages == "''")
      languages = '';
    var audio = call('audio');
    if (audio.isNotBlank)
      audio = ",'$audio'";
    var title = call('title').replaceAll("'","\\'");
    cIndex.add("CallEntry('$title','$dir','$link',$dir.$className,[$languages]$audio)");
    var importLink = link;
    if(importLink.startsWith('ssd')) {
      var importLinkb1 = importLink.replaceAll('ssd', 'b1');
      var importLinkb2 = importLink.replaceAll('ssd', 'b2');
      var importLinkms = importLink.replaceAll('ssd', 'ms');
      if (cInclude.contains("import 'calls/$importLinkb1.g.dart' as b1;"))
        importLink = importLinkb1;
      else if (cInclude.contains("import 'calls/$importLinkb2.g.dart' as b2;"))
        importLink = importLinkb2;
      else if (cInclude.contains("import 'calls/$importLinkms.g.dart' as ms;"))
        importLink = importLinkms;
    }
    cInclude.add("import 'calls/$importLink.g.dart' as $dir;");

    if (dir == 'ssd')
      return;

    var callDoc = await File('assets/$link.xml').readAsString()
        .then((text) => XmlDocument.parse(text));
    if (callDoc.findAllElements('tam').isEmpty &&
        callDoc.findAllElements('tamxref').isEmpty)
      return;

    print('Building $className');
    titles[link] = callDoc.rootElement('title');

    importSet.add("import '$link.g.dart';");
    imports.add("import '../../common.dart';");
    imports.add("import '../../formations.g.dart';");
    imports.add("import '../../moves.g.dart';");
    imports.add("import '../../sequencer/calls/animated_call.dart';");

    var callBuffer = StringBuffer();
    callBuffer.writeln('  final List<AnimatedCall> $className = [ ');
    var count = 0;

    tamList(callDoc).forEach((tam) {

      if (tam.name.toString() == 'tamxref') {
        var xreflink = tam('xref-link');
        var xrefdir = xreflink.split('/').first;
        var prefix = '';
        imports.add("import '../$xreflink.g.dart' as $xrefdir;");
        prefix = '$xrefdir.';
        callBuffer.writeln('    $prefix${link2class(xreflink)}.where((tam) =>');
        var where = "      tam.title == '${tam('xref-title')}'";
        if (tam('xref-from').isNotBlank)
          where += " && tam.from == '${tam('xref-from')}'";
        callBuffer.write('$where).first');

        if (tam('title').isNotEmpty)
          callBuffer.write(".xref(title: '${tam('title')}')");
        if (tam('group').isNotEmpty)
          callBuffer.write(".xref(group: '${tam('group')}')");
        if (tam('difficulty').isNotBlank)
          callBuffer.write('.xref(difficulty: ${tam('difficulty')})');
        callBuffer.writeln(',');
        count += 1;
        return;
      }

      callBuffer.writeln('\n    AnimatedCall(${tam('title').q},');
      if (tam.childrenNamed('formation').isNotEmpty) {
        //  custom formation
        callBuffer.write('      formation:');
        writeOneFormation(callBuffer, tam.childrenNamed('formation').first,
            isAsymmetric: tam('asymmetric').isNotBlank);
        callBuffer.writeln(',');
      }
      else
        callBuffer.writeln('      formation:Formations.${tam('formation').id},');
      final fromParam = tam('from').isNotBlank ? "from:'${tam('from')}'" : '';
      final groupParam = tam('group').isNotEmpty? "group:'${tam('group')}'" : '';
      final genderParam = tam('sequencer') == 'gender-specific' ? 'isGenderSpecific:true' : '';
      final exactParam = tam('sequencer') == 'exact' ? 'isExact:true' : '';
      final perimeterParam = tam('sequencer') == 'perimeter' ? 'isPerimeter:true' : '';
      final partsParam = tam('parts').isNotBlank ? "parts:'${tam('parts')}'" : '';
      final fractionsParam = tam('fractions').isNotBlank
          ? "fractions:'${tam('fractions')}'" : '';
      final difficultyParam = tam('difficulty').isNotBlank
          ? 'difficulty: ${tam('difficulty')}' : '';
      final activesParam = tam('actives').isNotBlank ? "actives:'${tam('actives')}'" : '';
      final notSequencerParam = tam('sequencer').contains('no') ? 'notForSequencer: true' : '';
      final noDisplayParam = tam('display').isNotBlank ? 'noDisplay: true' : '';
      final allParams = [fromParam,groupParam,genderParam,exactParam,perimeterParam,
        partsParam,fractionsParam,difficultyParam,
        activesParam,notSequencerParam,noDisplayParam]
          .where((param) => param.isNotEmpty).join(',');
      callBuffer.writeln('      $allParams,');
      callBuffer.writeln('      paths:[');
      tam.findElements('path').forEach((path) {
        var paths = path.childElements.map((move) {
          var onePath = '';
          if (move.tag == 'move') {
            onePath = '          ${move('select').id}';
            if (move('beats').isNotBlank)
              onePath += '.changeBeats(${move('beats')})';
            if (move('hands').isNotBlank) {
              var h = Hands.getHands(move('hands'));
              onePath += '.changehands($h)';
            }
            if (move('scaleX').isNotBlank || move('scaleY').isNotBlank || move('reflect').isNotBlank) {
              var sx = move('scaleX','1').d;
              var sy = move('scaleY','1').d;
              if (move('reflect').isNotBlank)
                sy = -sy;
              onePath += '.scale($sx,$sy)';
            }
            if (move('offsetX').isNotBlank || move('offsetY').isNotBlank) {
              var sx = move('offsetX','0').d;
              var sy = move('offsetY','0').d;
              onePath += '.skew($sx,$sy)';
            }
            // end of one move
          }
          else if (move.tag == 'movement') {
            onePath = '      Path.fromMovement(' + writeOneMovement(move) + ')';
          }
          return onePath;
        });
        if (paths.isNotEmpty)
          callBuffer.writeAll(paths,' +\n');
        else
          callBuffer.write('          Path()');
        callBuffer.writeln(',\n');
        //  end of one path
      });
      callBuffer.writeln('      ]),');  //  end of all paths for one animation
      var norm = normalizeCall(tam('title'));
      if (!callIndex.containsKey(norm))
        callIndex[norm] = [];
      callIndex[norm]!.add('$dir/$className[$count]');
      count += 1;
    });
    callBuffer.writeln('  ];');  //  end of animation list

    var cDart = File('lib/calls/$link.g.dart').openWrite();
    cDart.writeAll(imports,'\n');
    cDart.writeln('\n');
    cDart.writeln(callBuffer);
    await cDart.flush();
    await cDart.close();

    var cIndexDart = File('lib/call_index.g.dart').openWrite();
    for (var line in cInclude)
      cIndexDart.writeln(line);
    cIndexDart.writeln("import 'call_entry.dart';");
    cIndexDart.write('\nvar callIndex = [\n  ');
    cIndexDart.writeln(cIndex.join(',\n  '));
    cIndexDart.writeln('];');
    cIndexDart.writeln('\nvar titleIndex = <String,String>{');
    for (var link in titles.keys) {
      var t = titles[link]!.replaceAll("'","\\'");
      cIndexDart.writeln("    '$link' : '$t',");
    }
    cIndexDart.writeln('};');
    await cIndexDart.flush();
    await cIndexDart.close();


  });  // end of call

  //  Generated indexes
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
