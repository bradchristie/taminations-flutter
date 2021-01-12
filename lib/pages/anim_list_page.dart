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


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;
import 'package:xml/xml.dart';

import '../common.dart';
import '../title_bar.dart';
import 'page.dart';

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
      this.title = '',
      this.name = '',
      this.group = '',
      this.animnumber = (-1),
      this.fullname = '',
      this.difficulty = Difficulty.NONE});
}

class AnimListPage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(
      child: pp.Consumer<TamState>(
        builder: (context, tamState, _) {
          TamUtils.getXMLAsset(tamState.link).then((doc) {
            pp.Provider.of<TitleModel>(context,listen: false).title =
                doc.rootElement.getAttribute('title');
          });
          return fm.Column(
              children: [
                fm.Expanded(
                  child: AnimListFrame(
                      tamState.link, highlightSelected: false),
                ),
                fm.Container(
                  color: Color.FLOOR,
                  child: fm.Row(children: [
                    fm.Expanded(
                      child: Button('Definition', onPressed: () {
                        tamState.change(detailPage: DetailPage.DEFINITION);
                      }),
                    ),
                    fm.Expanded(child: Button('Settings', onPressed: () {
                      tamState.change(detailPage: DetailPage.SETTINGS);
                    },))
                  ]),
                ),
              ]); }
      ),
    );
  }
}

class AnimListFrame extends fm.StatefulWidget {
  final String link;
  final bool highlightSelected;
  AnimListFrame(this.link,{this.highlightSelected=true}) : super(key: fm.ValueKey(link));

  @override
  fm.State<fm.StatefulWidget> createState() => _AnimListState(link);
}

class _AnimListState extends fm.State<AnimListFrame> {

  String link;
  List<AnimListItem> animListItems = [];
  Future<XmlDocument> docFuture;
  var hasDifficulty = false;
  var selectedItem = -1;

  _AnimListState(this.link);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    docFuture = TamUtils.getXMLAsset(link);
  }

  fm.Widget oneLegendWidget(String text, Color c) =>
      fm.Expanded(
          child: fm.Container(
              color: c, child: fm.Center(
              child: AutoSizeText(text, maxLines: 1, style: fm.TextStyle(fontSize: 20))
          )
          )
      );

  void _loadList(XmlDocument doc) async {
    animListItems = [];
    var prevTitle = '';
    var prevGroup = '';
    var animationsAdded = 0;
    TamUtils.tamList(doc)
        .where((it) => !(it('display','')).startsWith('n'))
        .forEach((tam) {
      var tamTitle = tam('title');
      var from = 'from'; // updated later after tamxref is loaded
      var group = tam('group','');
      if (tam('difficulty') != null)
        hasDifficulty = true;
      if (group.isNotEmpty) {
        //  Add header for new group as needed
        if (group != prevGroup) {
          if (group.isBlank) {
            // Blank group, for calls with no common starting phrase
            // Add a separator unless it's the first group
            if (animListItems.isNotEmpty) {
              animListItems.add(AnimListItem(celltype: CellType.Separator));
            }
          } else {
            // Named group e.g. 'As Couples..'
            // Add a header with the group name, which starts
            // each call in the group
            animListItems
                .add(AnimListItem(celltype: CellType.Separator, title: group));
          }
        }
        from = tamTitle.replaceFirst(group, ' ').trim();
      } else if (tamTitle != prevTitle) {
        // Not a group but a different call
        // Put out a header with this call
        animListItems.add(
            AnimListItem(celltype: CellType.Header, name: '$tamTitle from'));
      }
      //  Build list item for this animation
      prevTitle = tamTitle;
      prevGroup = group;
      if (from == 'from') from = tam('from');
      animListItems.add(AnimListItem(
          celltype: group.isBlank && group.isNotEmpty
              ? CellType.Plain
              : CellType.Indented,
          title: tamTitle,
          name: from,
          group: group.isEmpty ? '$tamTitle from' : group,
          animnumber: animationsAdded,
          difficulty: tam('difficulty','0').i));
      animationsAdded += 1;
      if (selectedItem < 0)
        selectedItem = animListItems.length - 1;
    });
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.FutureBuilder<XmlDocument>(
        future: docFuture,
        builder: (fm.BuildContext context,
            fm.AsyncSnapshot<XmlDocument> snapshot) {
          if (snapshot.hasData) {
            _loadList(snapshot.data);
            return fm.Column(children: [
              fm.Expanded(
                  child: fm.ListView.builder(
                      itemCount: animListItems.length,
                      itemBuilder: (fm.BuildContext context, int index) {
                        var item = animListItems[index];
                        var backColor = Color.WHITE;
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
                            return fm.Container(
                                decoration: fm.BoxDecoration(
                                    color: fm.Color(0xff804080),
                                    border: fm.Border(
                                        bottom: fm.BorderSide(
                                            width: 1, color: fm.Colors.black))),
                                padding: fm.EdgeInsets.only(
                                    left: 20.0, top: 4, bottom: 4),
                                child: fm.Text(item.name,
                                    style: fm.TextStyle(
                                        fontSize: 20, color: fm.Colors.white)));
                          case CellType.Separator:
                            return fm.Container(
                                decoration: fm.BoxDecoration(
                                    color: fm.Color(0xff804080),
                                    border: fm.Border(
                                        bottom: fm.BorderSide(
                                            width: 1, color: fm.Colors.black))),
                                padding: fm.EdgeInsets.only(
                                    left: 20.0, top: 4, bottom: 4),
                                child: fm.Text(item.title,
                                    style: fm.TextStyle(
                                        color: Color.WHITE,
                                        fontSize: item.title.isBlank ? 2 : 20)));
                          case CellType.Indented:
                          case CellType.Plain:
                            return fm.Container(
                                child: pp.Consumer<TamState>(
                                  builder: (context, tamState, _) =>
                                      fm.Material(
                                        color: widget.highlightSelected &&
                                            selectedItem == index
                                            ? Color.BLUE
                                            : backColor,
                                        child: fm.InkWell(
                                          highlightColor: backColor.darker(),
                                          onTap: () {
                                            setState(() {
                                              selectedItem = index;
                                            });
                                            tamState.change(
                                                mainPage: MainPage.ANIMATIONS,
                                                animnum: item.animnumber
                                            );
                                          },
                                          child: fm.Container(
                                            decoration: fm.BoxDecoration(
                                                border: fm.Border(
                                                    bottom: fm.BorderSide(
                                                        width: 1,
                                                        color: fm.Colors.black))),
                                            padding: fm.EdgeInsets.only(
                                                left: item.celltype ==
                                                    CellType.Indented
                                                    ? 40.0
                                                    : 20.0,
                                                top: 4,
                                                bottom: 4),
                                            child: fm.Text(item.name,
                                                style: fm.TextStyle(
                                                    color: widget
                                                        .highlightSelected &&
                                                        selectedItem == index
                                                        ? backColor
                                                        : Color.BLACK,
                                                    fontSize: 20
                                                )),
                                          ),
                                        ),
                                      ),
                                ));
                        }
                        return fm.Text('Dummy text for ListView.builder');
                      })),
              if (hasDifficulty) fm.Container(
                  decoration: fm.BoxDecoration(
                      border: fm.Border.all(
                              width: 1,
                              color: Color.GRAY)),
                  child: fm.Row(
                    children: [
                      oneLegendWidget('Common', Color.COMMON),
                      oneLegendWidget('Harder', Color.HARDER),
                      oneLegendWidget('Expert', Color.EXPERT)
                    ]
                ),
              )
            ]);
          }
          return fm.Text('Loading...');
        });
  }

}
