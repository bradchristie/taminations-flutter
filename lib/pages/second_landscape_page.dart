/*

  Taminations Square Dance Animations
  Copyright (C) 2020 Brad Christie

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

import 'dart:math';

import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;
import 'package:xml/xml.dart';

import '../button.dart';
import '../dance_animation_painter.dart';
import '../extensions.dart';
import '../level_data.dart';
import '../main.dart';
import '../request.dart';
import '../tam_utils.dart';
import '../title_bar.dart';
import '../settings.dart';
import '../color.dart';
import 'anim_list.dart';
import 'animation_page.dart';
import 'settings_page.dart';
import 'web_page.dart';

class SecondLandscapePage extends fm.StatefulWidget {
  @override
  _SecondLandscapePageState createState() => _SecondLandscapePageState();
}

class _SecondLandscapePageState extends fm.State<SecondLandscapePage> {
  LevelData levelDatum;
  String link;
  int animnum;
  fm.Widget leftChild;
  fm.Widget centerChild;
  fm.Widget rightChild;
  DanceAnimationPainter painter;
  XmlDocument doc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var router =
        fm.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentPath;
    link = path.link;
    animnum = path.animnum;
    levelDatum = LevelData.find(path.level);
    leftChild = AnimListFrame(link);
    centerChild = AnimationFrame(link:link, animnum:animnum);
    var settings = pp.Provider.of<Settings>(context);
    rightChild ??= WebFrame(settings.getLanguageLink(link) + '.html');

    painter = DanceAnimationPainter();
    TamUtils.getXMLAsset(link).then((doc) {
      this.doc = doc;
      painter.setAnimation(tamFromAnimnum());
    });
  }

  XmlElement tamFromAnimnum() => TamUtils.tamList(doc)
      .where((it) => !(it('display','').startsWith('n')))
      .toList()[max(0, animnum)];

  @override
  fm.Widget build(fm.BuildContext context) {
    return  RequestHandler(
      handler: (request) {
        if (request.action == Action.ANIMATION) {
          animnum = request('animnum').i;
          painter.setAnimation(tamFromAnimnum());
        }
      },
      child: pp.ChangeNotifierProvider.value(
        value: painter,
        child: fm.Scaffold(
          backgroundColor: Color.LIGHTGRAY,
            appBar: fm.PreferredSize(
                preferredSize: fm.Size.fromHeight(56.0),
                child: pp.Consumer<DanceAnimationPainter>(
                    builder: (context,painter2,child) =>
                        TitleBar(title: painter2.title, level: levelDatum.name)
                )),
            body: pp.Consumer<Settings>(
              builder: (context, settings, child) {
                return  SecondLandscapeFrame(
                        leftChild: leftChild,
                        centerChild: fm.Column(
                          children: [
                            fm.Expanded(child: centerChild),
                            fm.Row(
                              children: [
                                fm.Expanded(
                                    child: Button('Definition',
                                        onPressed: () {
                                          setState(() {
                                            rightChild = WebFrame(settings.getLanguageLink(link) + '.html');
                                          });
                                        })),
                                fm.Expanded(
                                    child: Button('Settings',
                                        onPressed: () {
                                          setState(() {
                                            rightChild = SettingsFrame();
                                          });
                                        })),
                              ],
                            )
                          ],
                        ),
                        rightChild: rightChild);
              },
            )),
      ),
    );
  }
}

class SecondLandscapeFrame extends fm.StatelessWidget {
  final fm.Widget leftChild;
  final fm.Widget centerChild;
  final fm.Widget rightChild;

  SecondLandscapeFrame(
      {@fm.required this.leftChild,
      @fm.required this.centerChild,
      @fm.required this.rightChild});

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Row(
      crossAxisAlignment: fm.CrossAxisAlignment.stretch,
      children: [
        fm.Expanded(child: leftChild, flex: 1),
        fm.Expanded(child: centerChild, flex: 1),
        fm.Expanded(child: rightChild, flex: 1)
      ],
    );
  }
}
