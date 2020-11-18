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

import 'package:flutter/material.dart' as FM;
import 'package:provider/provider.dart' as PP;
import 'package:xml/xml.dart';

import '../button.dart';
import '../color.dart';
import '../extensions.dart';
import '../level_data.dart';
import '../main.dart';
import '../request.dart';
import '../tam_utils.dart';
import '../title_bar.dart';
import 'animation_page.dart';

enum CellType { Header, Separator, Indented, Plain }

class Difficulty {
  static const NONE = 0;
  static const COMMON = 1;
  static const HARDER = 2;
  static const EXPERT = 3;
}

class AnimListItem {
  final CellType celltype;
  final String title;
  final String name;
  final String group;
  final int animnumber;
  final String fullname;
  final int difficulty;

  AnimListItem(
      {this.celltype,
      this.title = "",
      this.name = "",
      this.group = "",
      this.animnumber = (-1),
      this.fullname = "",
      this.difficulty = Difficulty.NONE});
}

class AnimListPage extends FM.StatefulWidget {
  @override
  _AnimListPageState createState() => _AnimListPageState();
}

class _AnimListPageState extends FM.State<AnimListPage> {
  LevelDatum levelDatum;
  Future<XmlDocument> docFuture;
  Future<bool> hasDifficulty;
  String link;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var router =
        FM.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentPath;
    link = path.link;
    levelDatum = LevelData.find(path.link);
    docFuture = TamUtils.getXMLAsset(path.link);
  }

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Scaffold(
        appBar: FM.PreferredSize(
            preferredSize: FM.Size.fromHeight(56.0),
            child: FM.FutureBuilder<XmlDocument>(
                future: docFuture,
                builder: (FM.BuildContext context,
                    FM.AsyncSnapshot<XmlDocument> snapshot) {
                  if (snapshot.hasData) {
                    var doc = snapshot.data;
                    var title = doc
                        .findAllElements("tamination")
                        .first
                        .getAttribute("title");
                    return TitleBar(title: title, level: levelDatum.name);
                  }
                  return TitleBar(title: "");
                })),
        body: RequestHandler(
            handler: (request) {
              if (request.action == Action.ANIMATION) {
                FM.Router.of(context).routerDelegate.setNewRoutePath(
                    TaminationsRoute(
                        level: request("level"),
                        link: request("link"),
                        call: request("title"),
                        name: request("name"),
                        animnum: request("animnum").i));
              }
              if (request.action == Action.BUTTON_PRESS) {
                if (request("button") == "Definition") {
                  FM.Router.of(context).routerDelegate.setNewRoutePath(
                      TaminationsRoute(link: link, definition: true));
                }
                if (request("button") == "Settings") {
                  FM.Router.of(context).routerDelegate.setNewRoutePath(
                      TaminationsRoute(settings: true));
                }
              }
            },
            child: FM.Column(
                children: [
                  FM.Expanded(
                    child:AnimListFrame(link),
                  ),
                  FM.Row(children: [
                    FM.Expanded(
                      child: Button("Definition"),
                    ),
                    FM.Expanded(child: Button("Settings"))
                  ]),
                ])
        ));
  }
}

class AnimListFrame extends FM.StatefulWidget {
  final String link;

  AnimListFrame(this.link) : super(key: FM.ValueKey(link));

  @override
  FM.State<FM.StatefulWidget> createState() => _AnimListState(link);
}

class _AnimListState extends FM.State<AnimListFrame> {

  String link;
  List<AnimListItem> animListItems = [];
  Future<XmlDocument> docFuture;
  var hasDifficulty = false;

  _AnimListState(this.link);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    docFuture = TamUtils.getXMLAsset(link);
  }

  FM.Widget oneLegendWidget(String text, Color c) =>
      FM.Expanded(
          child: FM.Container(
              color: c, child: FM.Center(
              child: FM.Text(text, style: FM.TextStyle(fontSize: 20))
          )
          )
      );

  void _loadList(XmlDocument doc) async {
    animListItems = [];
    var prevTitle = "";
    var prevGroup = "";
    var animationsAdded = 0;
    TamUtils.tamList(doc)
        .where((it) => !(it("display","")).startsWith("n"))
        .forEach((tam) {
      var tamTitle = tam("title");
      var from = "from"; // updated later after tamxref is loaded
      var group = tam("group","");
      if (tam("difficulty") != null)
        hasDifficulty = true;
      if (group.isNotEmpty) {
        //  Add header for new group as needed
        if (group != prevGroup) {
          if (group.isBlank()) {
            // Blank group, for calls with no common starting phrase
            // Add a separator unless it's the first group
            if (animListItems.length > 0) {
              animListItems.add(AnimListItem(celltype: CellType.Separator));
            }
          } else {
            // Named group e.g. "As Couples.."
            // Add a header with the group name, which starts
            // each call in the group
            animListItems
                .add(AnimListItem(celltype: CellType.Separator, title: group));
          }
        }
        from = tamTitle.replaceFirst(group, " ").trim();
      } else if (tamTitle != prevTitle) {
        // Not a group but a different call
        // Put out a header with this call
        animListItems.add(
            AnimListItem(celltype: CellType.Header, name: "$tamTitle from"));
      }
      //  Build list item for this animation
      prevTitle = tamTitle;
      prevGroup = group;
      if (from == "from") from = tam("from");
      animListItems.add(AnimListItem(
          celltype: group.isBlank() && group.isNotEmpty
              ? CellType.Plain
              : CellType.Indented,
          title: tamTitle,
          name: from,
          group: group.isEmpty ? "$tamTitle from" : group,
          animnumber: animationsAdded,
          difficulty: tam("difficulty","0").i));
      animationsAdded += 1;
    });
  }

  @override
  FM.Widget build(FM.BuildContext context) {
    var router =
        FM.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentPath;
    return FM.FutureBuilder<XmlDocument>(
        future: docFuture,
        builder:
            (FM.BuildContext context, FM.AsyncSnapshot<XmlDocument> snapshot) {
          if (snapshot.hasData) {
            _loadList(snapshot.data);
            PP.Provider.of<AnimationState>(context, listen:false).title =
                animListItems.firstWhere((item) => item.title.isNotEmpty).title;
            return FM.Column(children: [
              FM.Expanded(
                  child: FM.ListView.builder(
                      itemCount: animListItems.length,
                      itemBuilder: (FM.BuildContext context, int index) {
                        var item = animListItems[index];
                        var backColor = FM.Colors.white;
                        switch (item.difficulty) {
                          case Difficulty.COMMON:
                            backColor = Color.COMMON;
                            break;
                          case Difficulty.HARDER:
                            backColor = Color.HARDER;
                            break;
                          case Difficulty.EXPERT:
                            backColor = Color.EXPERT;
                            break;
                        }
                        switch (item.celltype) {
                          case CellType.Header:
                            return FM.Container(
                                decoration: FM.BoxDecoration(
                                    color: FM.Color(0xff804080),
                                    border: FM.Border(
                                        bottom: FM.BorderSide(
                                            width: 1, color: FM.Colors.black))),
                                padding: FM.EdgeInsets.only(
                                    left: 20.0, top: 4, bottom: 4),
                                child: FM.Text(item.name,
                                    style: FM.TextStyle(
                                        fontSize: 20, color: FM.Colors.white)));
                          case CellType.Separator:
                            return FM.Container(
                                decoration: FM.BoxDecoration(
                                    color: FM.Color(0xff804080),
                                    border: FM.Border(
                                        bottom: FM.BorderSide(
                                            width: 1, color: FM.Colors.black))),
                                padding: FM.EdgeInsets.only(
                                    left: 20.0, top: 4, bottom: 4),
                                child: FM.Text(item.title,
                                    style: FM.TextStyle(
                                        color: Color.WHITE, fontSize: 20)));
                          case CellType.Indented:
                          case CellType.Plain:
                            return FM.GestureDetector(
                                onTap: () {
                                  RequestHandler.of(context).processRequest(
                                      Request(
                                          action: Action.ANIMATION,
                                          params: {
                                        "level": path.level,
                                        "link": path.link,
                                        "call": item.title,
                                        "name": item.title,
                                        "animnum": item.animnumber.s
                                      }));
                                  PP.Provider.of<AnimationState>(context, listen:false).title = item.title;
                                },
                                child: FM.Container(
                                    decoration: FM.BoxDecoration(
                                        color: backColor,
                                        border: FM.Border(
                                            bottom: FM.BorderSide(
                                                width: 1,
                                                color: FM.Colors.black))),
                                    padding: FM.EdgeInsets.only(
                                        left: item.celltype == CellType.Indented
                                            ? 40.0
                                            : 20.0,
                                        top: 4,
                                        bottom: 4),
                                    child: FM.Text(item.name,
                                        style: FM.TextStyle(fontSize: 20))));
                        }
                        return FM.Text("Dummy text for ListView.builder");
                      })),
              if (hasDifficulty) FM.Row(
                children: [
                  oneLegendWidget("Common", Color.COMMON),
                  oneLegendWidget("Harder", Color.HARDER),
                  oneLegendWidget("Expert", Color.EXPERT)
                ]
              )
            ]);
          }
          return FM.Text("Loading...");
        });
  }
}
