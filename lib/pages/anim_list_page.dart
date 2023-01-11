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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;
import 'package:taminations/beat_notifier.dart';

import '../common.dart';
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
      {this.celltype = CellType.Plain,
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
          TamUtils.getXMLAsset(tamState.link!).then((doc) {
            pp.Provider.of<TitleModel>(context,listen: false).title =
                doc.rootElement('title');
          });
          return fm.Column(
              children: [
                fm.Expanded(
                  child: AnimListFrame(
                      tamState.link!, highlightSelected: false),
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
  Future<XmlDocument>? docFuture;
  var hasDifficulty = false;
  var selectedItem = -1;
  final scrollController = fm.ScrollController();

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

  void _loadList(XmlDocument doc) {
    animListItems = [];
    var prevTitle = '';
    var prevGroup = '';
    var animationsAdded = 0;
    for (final tam in TamUtils.tamList(doc)
        .where((it) => DebugSwitch.showHiddenAnimations.enabled ||
                       !(it('display','')).startsWith('n'))) {
      var tamTitle = tam('title');
      var group = tam('group','');
      var from = group.isNotEmpty ? '' : tam('from') + tam('xref-from');
      if (tam('difficulty').isNotBlank)
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
        if (group.isNotBlank)
          from = tamTitle.replaceFirst(group.replaceFirst('\\(.*\\\)'.r,'').trim(), ' ').trim();
      } else if (tamTitle != prevTitle) {
        // Not a group but a different call
        // Put out a header with this call
        animListItems.add(
            AnimListItem(celltype: CellType.Header, name: '$tamTitle from'));
      }
      //  Build list item for this animation
      prevTitle = tamTitle;
      prevGroup = group;
      final fullname = (tamTitle + (group.isNotBlank ? '' : (from.isNotBlank ? 'from':'') + from))
          .replaceAll('[^a-zA-Z0-9]'.r, '');
      animListItems.add(AnimListItem(
          celltype: group.isBlank && group.isNotEmpty
              ? CellType.Plain
              : CellType.Indented,
          title: tamTitle,
          name: from.isNotBlank ? from : tamTitle,
          fullname: fullname,
          group: group.isEmpty ? '$tamTitle from' : group,
          animnumber: animationsAdded,
          difficulty: tam('difficulty','0').i));
      animationsAdded += 1;
    };
  }

  void _selectAnimListItem(int index, TamState tamState, HighlightState highlightState) {
    selectedItem = index;
    final item = animListItems[index];
    later(() {
      highlightState.currentCall = item.title.replaceAll('[^a-zA-Z0-9]'.r, '');
      //  this syncs the title
      tamState.change(animnum: item.animnumber);
    });
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.FutureBuilder<XmlDocument>(
        future: docFuture,
        builder: (fm.BuildContext context,
            fm.AsyncSnapshot<XmlDocument> snapshot) {
          if (snapshot.hasData) {
            _loadList(snapshot.data!);
            var foundLink = false;
            return fm.Column(children: [
              fm.Expanded(
                  child: fm.Scrollbar(
                    thumbVisibility: TamUtils.platform() == 'web',
                    thickness: 16,
                    controller: scrollController,
                    child: fm.ListView.builder(
                        controller: scrollController,
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
                                child: pp.Consumer2<TamState,HighlightState>(
                                    builder: (context, tamState,highlightState,_) {
                                      var animRegex = ('.*' + (tamState.animname??'!') + '.*').ri;
                                      if (selectedItem != index) {
                                        //  Check for animation selected by name in link
                                        if (!foundLink && item.fullname.matches(animRegex)) {
                                          _selectAnimListItem(index, tamState, highlightState);
                                          foundLink = true;
                                        }
                                        //  In case of link by number instead of name
                                        else if (item.animnumber == tamState.animnum) {
                                          _selectAnimListItem(index, tamState, highlightState);
                                        }
                                        //  Otherwise select first animation
                                        else if (tamState.animnum < 0 &&
                                            tamState.animname == null &&
                                            item.animnumber == 0) {
                                          _selectAnimListItem(index, tamState, highlightState);
                                        }
                                      }
                                      return fm.Material(
                                        color: widget.highlightSelected &&
                                            selectedItem == index
                                            ? Color.BLUE
                                            : backColor,
                                        child: fm.InkWell(
                                          highlightColor: backColor.darker(),
                                          onTap: () {
                                            setState(() {
                                              _selectAnimListItem(index, tamState, highlightState);
                                            });
                                            tamState.change(
                                                mainPage: MainPage.ANIMATIONS,
                                                animnum: item.animnumber
                                            );
                                            pp.Provider.of<BeatNotifier>(context,listen: false).beat = 0.0;
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
                                      );
                                    }
                                ));
                          }
                        }),
                  )),
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
