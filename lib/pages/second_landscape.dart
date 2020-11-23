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

import 'package:flutter/material.dart' as FM;
import 'package:provider/provider.dart' as PP;
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
import 'anim_list.dart';
import 'animation_page.dart';
import 'settings_page.dart';
import 'web_page.dart';

class SecondLandscapePage extends FM.StatefulWidget {
  @override
  _SecondLandscapePageState createState() => _SecondLandscapePageState();
}

class _SecondLandscapePageState extends FM.State<SecondLandscapePage> {
  LevelData levelDatum;
  String link;
  int animnum;
  FM.Widget leftChild;
  FM.Widget centerChild;
  FM.Widget rightChild;
  DanceAnimationPainter painter;
  XmlDocument doc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var router =
        FM.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentPath;
    link = path.link;
    animnum = path.animnum;
    levelDatum = LevelData.find(path.level);
    leftChild = AnimListFrame(link);
    centerChild = AnimationFrame(link:link, animnum:animnum);
    var settings = PP.Provider.of<Settings>(context);
    if (rightChild == null)
      rightChild = WebFrame(settings.getLanguageLink(link) + ".html");

    painter = DanceAnimationPainter();
    TamUtils.getXMLAsset(link).then((doc) {
      this.doc = doc;
      painter.setAnimation(tamFromAnimnum());
    });
  }

  XmlElement tamFromAnimnum() => TamUtils.tamList(doc)
      .where((it) => !(it("display","").startsWith("n")))
      .toList()[max(0, animnum)];

  @override
  FM.Widget build(FM.BuildContext context) {
    return  RequestHandler(
      handler: (request) {
        if (request.action == Action.ANIMATION) {
          animnum = request("animnum").i;
          painter.setAnimation(tamFromAnimnum());
        }
      },
      child: PP.ChangeNotifierProvider.value(
        value: painter,
        child: FM.Scaffold(
            appBar: FM.PreferredSize(
                preferredSize: FM.Size.fromHeight(56.0),
                child: PP.Consumer<DanceAnimationPainter>(
                    builder: (context,painter2,child) =>
                        TitleBar(title: painter2.title, level: levelDatum.name)
                )),
            body: PP.Consumer<Settings>(
              builder: (context, settings, child) {
                return  SecondLandscapeFrame(
                        leftChild: leftChild,
                        centerChild: FM.Column(
                          children: [
                            FM.Expanded(child: centerChild),
                            FM.Row(
                              children: [
                                FM.Expanded(
                                    child: Button("Definition",
                                        onPressed: () {
                                          setState(() {
                                            rightChild = WebFrame(settings.getLanguageLink(link) + ".html");
                                          });
                                        })),
                                FM.Expanded(
                                    child: Button("Settings",
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

class SecondLandscapeFrame extends FM.StatelessWidget {
  final FM.Widget leftChild;
  final FM.Widget centerChild;
  final FM.Widget rightChild;

  SecondLandscapeFrame(
      {@FM.required this.leftChild,
      @FM.required this.centerChild,
      @FM.required this.rightChild});

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Row(
      crossAxisAlignment: FM.CrossAxisAlignment.stretch,
      children: [
        FM.Expanded(child: leftChild, flex: 1),
        FM.Expanded(child: centerChild, flex: 1),
        FM.Expanded(child: rightChild, flex: 1)
      ],
    );
  }
}
