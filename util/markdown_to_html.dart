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

import 'package:markdown/markdown.dart';
import 'package:taminations/extensions.dart';

void main() async {
  var dirs = ['b1','b2','ms','plus','a1','a2','c1','c2','c3a','c3b'];
  try {
    Directory('html').deleteSync(recursive: true);
  } catch(e) {
    if (!(e is FileSystemException))
      rethrow;
  }
  Directory('html').createSync();
  for (var dir in dirs) {
    Directory('html/$dir').createSync();
  }
  for (var dir in dirs) {
    await for (var ent in Directory('assets/$dir').list()) {
      var filename = ent.path;
      if (filename.endsWith('md')) {
        print('Translating $filename');
        var md = await File(filename).readAsString();
        //  pre-processing
        md = md.replaceAll('.md', '.html');
        //  convert to HTML
        var html = markdownToHtml(md);
        //  post-processing
        var title = html.split('</?h1>'.r)[1];
        html = '''<!DOCTYPE html>     
<html>
<head>
  <meta name="viewport" content="width=device-width, height=device-height, interactive-widget=resizes-content, initial-scale=1.0">
  <link rel="stylesheet" href="https://www.tamtwirlers.org/taminations-test/definition.css">
  <title>$title</title>
</head>
<body>
''' + html + '</body></html>\n';
        //  save it
        var outfile = File(filename.replaceFirst('assets', 'html').replaceFirst(
            '.md', '.html')).openWrite();
        outfile.write(html);
        await outfile.flush();
        await outfile.close();
      }
      else if (filename.endsWith('png')) {
        print('Copying $filename');
        var fileto = filename.replaceFirst('assets', 'html');
        await File(filename).copy(fileto);
      }
    }
  }

  //  Duplicate files for SSD
  Directory('html/ssd').createSync();
  for (var dir in ['b1','b2','ms']) {
    await for (var ent in Directory('html/$dir').list()) {
      var from = ent.path;
      var to = from.replaceFirst(dir, 'ssd');
      await File(from).copy(to);
    }
  }

}