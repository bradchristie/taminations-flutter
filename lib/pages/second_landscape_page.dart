/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

import '../common.dart';
import 'anim_list_page.dart';
import 'animation_page.dart';
import 'markdown_page.dart';
import 'settings_page.dart';

class SecondLandscapePage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.MultiProvider(
          providers: [
            pp.ChangeNotifierProvider(create: (_) => DanceAnimationPainter()),
            pp.ChangeNotifierProvider(create: (_) => TitleModel())
          ],
          child: pp.Consumer<TamState>(
            builder: (context,tamState,_) {
              if (tamState.link == null)  // sanity check
                return fm.Container();
              final title = pp.Provider.of<TitleModel>(
                  context, listen: false);
              final painter = pp.Provider.of<DanceAnimationPainter>(
                  context, listen: false);
              TamUtils.getXMLAsset(tamState.link!).then((doc) {
                var tam = TamUtils.tamList(doc)
                    .where((it) => !(it('display', '').startsWith('n')))
                    .toList()[max(0, tamState.animnum)];
                painter.setAnimation(tam);
                if (tamState.animnum >= 0)
                  title.title = tam('title');
                else
                  title.title = doc.rootElement('title');
              });
              title.level = LevelData.find(tamState.link!)?.name ?? '';
              return fm.Scaffold(
                backgroundColor: Color.LIGHTGRAY,
                appBar: fm.PreferredSize(
                    preferredSize: fm.Size.fromHeight(56.0),
                    child: pp.Consumer<DanceAnimationPainter>(
                        builder: (context, painter, child) =>
                            TitleBar()
                    )),
                body:
                      SecondLandscapeFrame(
                          leftChild: AnimListFrame(tamState.link!),
                          centerChild: fm.Column(
                            children: [
                              fm.Expanded(child: AnimationFrame()),
                              fm.Container(
                                color: Color.FLOOR,
                                child: fm.Row(
                                  children: [
                                    fm.Expanded(
                                        child: Button('Definition', onPressed: () {
                                          tamState.change(
                                              detailPage: DetailPage.DEFINITION);
                                        })),
                                    fm.Expanded(
                                        child: Button('Settings', onPressed: () {
                                          tamState.change(
                                              detailPage: DetailPage.SETTINGS);
                                        })),
                                  ],
                                ),
                              )
                            ],
                          ),
                          rightChild: tamState.detailPage == DetailPage.SETTINGS
                              ? SettingsFrame()
                              : MarkdownFrame(tamState.link!)
                      ),
            ); }
          )
      );
  }
}

class SecondLandscapeFrame extends fm.StatelessWidget {
  final fm.Widget leftChild;
  final fm.Widget centerChild;
  final fm.Widget rightChild;

  SecondLandscapeFrame(
      {required this.leftChild,
      required this.centerChild,
      required this.rightChild});

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Row(
      crossAxisAlignment: fm.CrossAxisAlignment.stretch,
      children: [
        fm.Expanded(child: leftChild, flex: 1),
        fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
        //  We want the animation list (which is the left child)
        //  to control the title.  So add dummy titles
        //  to intercept consumers from center and right children
        fm.Expanded(child: centerChild, flex: 1),
        fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
        pp.ChangeNotifierProvider(
            create: (_) => TitleModel(),
            child: fm.Expanded(child: rightChild, flex: 1)
        )
      ],
    );
  }
}
