/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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
import 'package:taminations/animated_call.dart';
import 'package:taminations/beat_notifier.dart';

import '../call_entry.dart';
import '../call_index.dart';
import '../common_flutter.dart';
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

fm.Color _headerColor(int indent) {
  return indent > 0 ? fm.Color(0xffc080c0) : fm.Color(0xff804080);
}

void _selectAnimListItemNew({required String name, String? group, String? from, required TamState tamState, required HighlightState highlightState}) {
  later(() {
    highlightState.currentCall = ((group??'')+name)
        .replaceAll('[^a-zA-Z0-9]'.r, '');
    tamState.change(animname: name, animgroup: group, animfrom: from, animnum: -1);
  });
}

List<fm.Widget> _widgetsFromList(List<AnimatedCallItem> callList, int indent) {
  return callList
      .where((call) => !call.noDisplay)
      .map((call) {
    return switch (call) {
      AnimatedCallGroup() => AnimListGroupWidget(call,indent+1),
      AnimatedCallHeader() => AnimListHeaderWidget(call,indent+1),
      AnimatedCall() => AnimListItemWidget(call,indent+1)
    };
  }).toList();
}

class AnimListPage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(
      child: pp.Consumer<TamState>(
        builder: (context, tamState, _) {
          pp.Provider.of<TitleModel>(context,listen: false).title =
              titleFromLink(tamState.link);
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

class AnimListHeaderWidget extends fm.StatefulWidget {
  final AnimatedCallHeader header;
  final int indent;
  AnimListHeaderWidget(this.header, this.indent);

  @override
  fm.State<fm.StatefulWidget> createState() =>
      AnimListHeaderWidgetState();
}

class AnimListHeaderWidgetState extends fm.State<AnimListHeaderWidget> {
  final controller = fm.ExpansibleController();
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.ChangeNotifierProvider.value(
      value: controller,
      child: fm.ExpansionTile(
        title: _AnimListTitleText(widget.header.title),
        initiallyExpanded: true,
        controller: controller,
        collapsedBackgroundColor: _headerColor(widget.indent),
        collapsedTextColor: Color.WHITE,
        collapsedIconColor: Color.WHITE,
        backgroundColor:  _headerColor(widget.indent),
        textColor: Color.WHITE,
        iconColor: Color.WHITE,
        tilePadding: fm.EdgeInsets.only(left: 10+40.0*widget.indent),
        children: _widgetsFromList(widget.header.calls,widget.indent)));
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class _AnimListTitleText extends fm.StatefulWidget {
  final String title;
  _AnimListTitleText(this.title);
  @override
  fm.State<fm.StatefulWidget> createState() {
    return _AnimListTitleTextState();
  }
}
class _AnimListTitleTextState extends fm.State<_AnimListTitleText> {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<fm.ExpansibleController>(
      builder: (context,controller,_) {
        var from = controller.isExpanded ? ' from' : '';
        return fm.Text(widget.title + from, style: fm.TextStyle(fontSize: 20));
      }
    );
  }

}

class AnimListGroupWidget extends fm.ExpansionTile {
  final AnimatedCallGroup group;
  AnimListGroupWidget(this.group, int indent) : super(
      title: fm.Text(group.group,style:fm.TextStyle(fontSize: 20)),
      initiallyExpanded: true,
      collapsedBackgroundColor: _headerColor(indent),
      collapsedTextColor: Color.WHITE,
      collapsedIconColor: Color.WHITE,
      backgroundColor:  _headerColor(indent),
      textColor: Color.WHITE,
      iconColor: Color.WHITE,
      tilePadding: fm.EdgeInsets.only(left: 10+40.0*indent),
      children: _widgetsFromList(group.calls,indent));
}

class AnimListItemWidget extends fm.StatefulWidget {
  final AnimatedCall call;
  final int indent;
  final bool highlightSelected = true;
  AnimListItemWidget(this.call,this.indent);
  @override
  fm.State<fm.StatefulWidget> createState() =>
      _AnimListItemState();

}

class _AnimListItemState extends fm.State<AnimListItemWidget> {

  @override
  fm.Widget build(fm.BuildContext context) {
    var backColor = Color.WHITE;
    switch (widget.call.difficulty) {
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
    return fm.Container(
        child: pp.Consumer2<TamState, HighlightState>(
            builder: (context, tamState, highlightState, _) {
              var isSelected = context.watch<AnimatedCall?>() == widget.call;
              var text = widget.call.title;
              if (widget.call.from.isNotBlank)
                text = widget.call.from;
              else if (widget.call.group.isNotBlank)
                text = text.replaceFirst(widget.call.group, '').trim();
              return fm.ListTile(
                title: fm.Text(text,
                    style: fm.TextStyle(fontSize: 20,
                        color: isSelected ? Color.WHITE : Color.BLACK)),
                  tileColor: isSelected ? Color.BLUE : backColor,
                  hoverColor: isSelected ? Color.BLUE : backColor.darker(),
                  dense: true,
                  enabled: true,
                  shape: fm.BoxBorder.fromLTRB(
                      bottom: fm.BorderSide(color: Color.BLACK)
                  ),
                contentPadding: fm.EdgeInsets.only(left: 10+40.0*widget.indent),
                onTap: () {
                    setState(() {
                      context.read<_AnimListState>().setSelectedItem(widget.call);
                      _selectAnimListItemNew(
                          name: widget.call.title,
                          group: widget.call.group,
                          from: widget.call.from,
                          tamState: tamState,
                          highlightState: highlightState);
                    });
                },
              );
            }
        ));
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
  CallEntry? callEntry;
  var hasDifficulty = false;
  var selectedItem = -1;
  final scrollController = fm.ScrollController();
  List<fm.ExpansibleController> controllers = [];
  AnimatedCall? _selectedCall;

  _AnimListState(this.link);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    callEntry = callIndex.firstWhere((element) => element.link == link);
    for (var c in controllers)
      c.dispose();
    controllers = List.generate(callEntry!.calls.length, (_) {
      var c = fm.ExpansibleController();
      c.addListener(() {
        if (c.isExpanded) {
          for (var c2 in controllers)
            if (c2 != c && c2.isExpanded) {
              c2.collapse();
            }
        }
      });
      return c;
    });
  }

  @override
  void dispose() {
    for (var c in controllers)
      c.dispose();
    super.dispose();
  }

  void setSelectedItem(AnimatedCall call) {
    setState(() {
      _selectedCall = call;
    });
  }

  fm.Widget oneLegendWidget(String text, Color c) =>
      fm.Expanded(
          child: fm.Container(
              color: c, child: fm.Center(
              child: AutoSizeText(text, maxLines: 1, style: fm.TextStyle(fontSize: 20))
          )
          )
      );

  void _loadList(List<AnimatedCall> doc) {
    animListItems = [];
    var prevTitle = '';
    var prevGroup = '';
    var animationsAdded = 0;
    for (final tam in doc
        .where((it) => DebugSwitch.showHiddenAnimations.enabled || !it.noDisplay)) {
      var tamTitle = tam.title;
      var group = tam.group;
      var from = group.isNotEmpty ? '' : tam.from;
      if (tam.difficulty > 0)
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
          difficulty: tam.difficulty));
      animationsAdded += 1;
    };
  }

  void _selectAnimListItem(int index, TamState tamState, HighlightState highlightState) {
    selectedItem = index;
    final item = animListItems[index];
    later(() {
      highlightState.currentCall = item.title.replaceAll('[^a-zA-Z0-9]'.r, '');
      tamState.change(animnum: item.animnumber, animname: item.fullname);
    });
  }

  fm.Widget buildNew(fm.BuildContext context) {
    return pp.Provider.value(
      value: _selectedCall,
      child: pp.Provider.value(
        value: this,
        child: fm.Column(children: [
          fm.Expanded(
              child: fm.Scrollbar(
                  thumbVisibility: TamUtils.platform() == 'web',
                  thickness: 16,
                  controller: scrollController,
                  child: fm.ListView(
                    controller: scrollController,
                    children: _widgetsFromList(callEntry!.calls,-1),
                  )
          ))
        ]),
      ),
    );
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    if (callEntry!.calls.any((call) => call is! AnimatedCall))
      return buildNew(context);

    if (callEntry != null)
      _loadList(flattenAnimatedCallList(callEntry!.calls));

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
                          child: pp.Consumer2<TamState, HighlightState>(
                              builder: (context, tamState, highlightState, _) {
                                var animRegex = (tamState.animname ?? 'XXX').ri;
                                if (selectedItem != index) {
                                  //  Check for animation selected by name in link
                                  var selectedNameIndex =
                                      animListItems.firstWhereOrNull((it) =>
                                      it.fullname.matches(animRegex))
                                      ?.animnumber ?? -1;
                                  if (tamState.animnum < 0 &&
                                      item.animnumber == selectedNameIndex) {
                                    _selectAnimListItem(
                                        index, tamState, highlightState);
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
                                var onTapFunction = () {
                                  setState(() {
                                    _selectAnimListItem(
                                        index, tamState, highlightState);
                                  });
                                  tamState.change(
                                      mainPage: MainPage.ANIMATIONS,
                                      animnum: item.animnumber
                                  );
                                  pp.Provider
                                      .of<BeatNotifier>(
                                      context, listen: false)
                                      .beat = 0.0;
                                };
                                return fm.Material(
                                  color: widget.highlightSelected && selectedItem == index
                                      ? Color.BLUE
                                      : backColor,
                                  child: fm.Semantics(
                                    button: true,
                                    enabled: true,
                                    excludeSemantics: true,
                                    label: item.group.replaceAll(r'\(.*?\)'.r, '') + ' ' + item.name,
                                    onTap: onTapFunction,
                                    child: fm.InkWell(
                                      highlightColor: backColor.darker(),
                                      onTap: () {
                                        setState(() {
                                          _selectAnimListItem(
                                              index, tamState, highlightState);
                                        });
                                        tamState.change(
                                            mainPage: MainPage.ANIMATIONS,
                                            animnum: item.animnumber
                                        );
                                        pp.Provider
                                            .of<BeatNotifier>(
                                            context, listen: false)
                                            .beat = 0.0;
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

}
