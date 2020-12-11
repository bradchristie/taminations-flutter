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
import '../color.dart';
import 'anim_list_page.dart';
import 'animation_page.dart';
import 'settings_page.dart';
import 'web_page.dart';

class SecondLandscapePage extends fm.StatefulWidget {
  @override
  _SecondLandscapePageState createState() => _SecondLandscapePageState();
}

class _SecondLandscapePageState extends fm.State<SecondLandscapePage> {
  String link;
  int animnum;
  DanceAnimationPainter painter;
  XmlDocument doc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var router =
        fm.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentConfiguration;
    link = path.link;
    animnum = path.animnum;

    painter = DanceAnimationPainter();
    TamUtils.getXMLAsset(link).then((doc) {
      this.doc = doc;
      painter.setAnimation(tamFromAnimnum(path.animnum));
    });
  }

  XmlElement tamFromAnimnum(int animnum) => TamUtils.tamList(doc)
      .where((it) => !(it('display','').startsWith('n')))
      .toList()[max(0, animnum)];

  @override
  fm.Widget build(fm.BuildContext context) {
    var router = fm.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentConfiguration;
    return  RequestHandler(
      handler: (request) {
        if (request.action == Action.ANIMATION) {
          router.setNewRoutePath(path+TaminationsRoute(animnum: request('animnum').i));
          //  TODO might be better to set this as a reaction to the new path
          painter.setAnimation(tamFromAnimnum(request('animnum').i));
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
                        TitleBar(title: painter2.title,
                            level: LevelData.find(path.level).name)
                )),
            body: SecondLandscapeFrame(
                leftChild: AnimListFrame(path.link),
                centerChild: fm.Column(
                  children: [
                    fm.Expanded(child: AnimationFrame(link:path.link, animnum:path.animnum)),
                    fm.Container(
                      color: Color.FLOOR,
                      child: fm.Row(
                        children: [
                          fm.Expanded(
                              child: Button('Definition',
                                  onPressed: () {
                                    router.setNewRoutePath(TaminationsRoute(
                                        level: path.level,
                                        link: path.link,
                                        animnum:  path.animnum,
                                        definition: true
                                    ));
                                  })),
                          fm.Expanded(
                              child: Button('Settings',
                                  onPressed: () {
                                    router.setNewRoutePath(path+TaminationsRoute(
                                        level: path.level,
                                        link: path.link,
                                        animnum:  path.animnum,
                                        settings: true
                                    ));

                                  })),
                        ],
                      ),
                    )
                  ],
                ),
                rightChild: path.settings
                    ? SettingsFrame()
                    : WebFrame(path.link)
            )
        ),
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
        fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
        fm.Expanded(child: centerChild, flex: 1),
        fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
        fm.Expanded(child: rightChild, flex: 1)
      ],
    );
  }
}
