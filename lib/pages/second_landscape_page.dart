/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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

import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;

import '../call_index.dart';
import '../common_flutter.dart';
import '../dance_model.dart';
import 'anim_list_page.dart';
import 'animation_page.dart';
import 'markdown_page.dart';
import 'settings_page.dart';

class SecondLandscapePage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.MultiProvider(
          providers: [
            pp.ChangeNotifierProvider(create: (context) => DanceModel(context)),
            pp.ChangeNotifierProvider(create: (_) => TitleModel())
          ],
          child: pp.Consumer<TamState>(
            builder: (context,tamState,_) {
              if (tamState.link == null)  // sanity check
                return fm.Container();
              final titleModel = pp.Provider.of<TitleModel>(context, listen: false);
              final model = pp.Provider.of<DanceModel>(context, listen: false);
              final settings = pp.Provider.of<Settings>(context, listen: false);

              //  TODO this duplicates the same code in animation_page _startModel
              var callEntry = callIndex.firstWhere((element) => element.link == tamState.link);
              var tamList = callEntry.calls
                  .where((it) => DebugSwitch.showHiddenAnimations.enabled || !it.noDisplay).toList();
              var tam = tamList[0];
              if (tamState.animnum >= 0 && tamState.animnum < tamList.length)
                tam = tamList[tamState.animnum];
              else if (tamState.animname != null)
                tam = tamList.firstWhere((it) {
                  var fullname = it.title;
                  if (it.group.isEmpty && it.from.isNotBlank)
                    fullname += 'from' + it.from;
                  fullname = fullname.replaceAll('[^a-zA-Z0-9]'.r, '');
                  return fullname == tamState.animname;
                },orElse: () => tam);
              model.setAnimatedCall(tam,
                  geometryType: Geometry.fromString(settings.geometry).geometry);
              titleModel.title = tam.title;
              titleModel.level = LevelData.find(tamState.link!)?.name ?? '';

              return fm.Scaffold(
                backgroundColor: Color.LIGHTGRAY,
                appBar: fm.PreferredSize(
                    preferredSize: fm.Size.fromHeight(56.0),
                    child: TitleBar()),
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
        fm.Expanded(flex: 1, child: leftChild),
        fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
        //  We want the animation list (which is the left child)
        //  to control the title.  So add dummy titles
        //  to intercept consumers from center and right children
        fm.Expanded(flex: 1, child: centerChild),
        fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
        pp.ChangeNotifierProvider(
            create: (_) => TitleModel(),
            child: fm.Expanded(flex: 1, child: rightChild)
        )
      ],
    );
  }
}
