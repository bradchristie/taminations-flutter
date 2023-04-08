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

import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart';
import 'package:taminations/common_flutter.dart';

void main() async {

  fm.runApp(ListAnimations());
  await ListAnimations.listAnimations();

}

class ListAnimations extends fm.StatefulWidget {

  static Future<XmlDocument> getXMLAsset(String filename) async =>
      rootBundle.loadString('assets/${TamUtils.linkSSD(filename)}.xml').then((text) =>
          XmlDocument.parse(text));

  static Future<void> listAnimations() async {
    var callsDoc = await getXMLAsset('src/calls');
    for (var e in callsDoc.findAllElements('call')) {
      if (e('link').startsWith('ssd'))
        continue;
      var link = e('link').replaceFirst('\\?.*'.r, '');
      var oneDoc = await getXMLAsset(link);
      var oneCount = 0;
      for (var e2 in oneDoc.findAllElements('tam')) {
        if (e2('display').startsWith('n'))
          continue;
        print('$link\t${e2('title')}\t$oneCount\t${e2('from')}');
        oneCount += 1;
      }
    }
  }

  @override
  fm.State<fm.StatefulWidget> createState() => ListAnimationsState();

}

class ListAnimationsState extends fm.State<ListAnimations> {

  @override
  fm.Widget build(fm.BuildContext context) => fm.Container();

}