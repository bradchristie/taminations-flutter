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
import '../level_data.dart';
import '../main.dart';
import '../tam_utils.dart';
import '../title_bar.dart';
import '../color.dart';

//  CallsPage contains title bar and frame
//  Only used in portrait mode
class CallsPage extends FM.StatefulWidget {

  @override
  _CallsPageState createState() => _CallsPageState();

}

class _CallsPageState extends FM.State<CallsPage> {

  LevelData levelDatum;

  @override
  //  Get the info needed to select what calls to show, save for build
  void didChangeDependencies() {
    super.didChangeDependencies();
    var router = FM.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentPath;
    levelDatum = LevelData.find(path.level);
  }

  @override
  //  Build title bar and frame, sending info on the calls to the frame
  FM.Widget build(FM.BuildContext context) {
    return FM.Scaffold(
            appBar: FM.PreferredSize(
                preferredSize: FM.Size.fromHeight(56.0),
                child: TitleBar(title:levelDatum.name)
            ),
            body: CallsFrame(levelDatum.name)
        );

  }

}

//  CallsFrame contains a list or grid of calls
//  and a search entry above to filter the calls
class CallsFrame extends FM.StatefulWidget {

  final String level;
  CallsFrame(this.level) : super(key:FM.ValueKey(level));
  _CallsState createState() => _CallsState(level);

}

class _CallsState extends FM.State<CallsFrame> {

  final String level;
  List<CallListDatum> calls = [];
  List<CallListDatum> callsSearched = [];
  LevelData levelDatum;
  _CallsState(this.level);
  String search = "";

  @override
  //  Get the initial list of calls to show
  //  Might be filtered later if the user enters a search
  void didChangeDependencies() {
    super.didChangeDependencies();
    levelDatum = LevelData.find(level);
    calls = TamUtils.calldata.where((element) =>
        levelDatum.selector(element.link)).toList();
  }

  @override
  //  Build list or grid of calls
  FM.Widget build(FM.BuildContext context) {
    //  First do any search to filter the calls
    callsSearched = calls.where((call) => call.title.toLowerCase().contains(search)).toList();
    //  Return column of 2 items, search field and list/grid of calls
    return FM.Column(
        children: [
          FM.TextField(
            decoration: FM.InputDecoration.collapsed(hintText: "Search calls"),
            enableSuggestions: false,
            style: FM.TextStyle(fontSize: 24),
            onChanged: (value) {
              setState(() {
                search = value.toLowerCase();
              });
            },
          ),
          FM.Expanded(
            //  Test to see if we are landscape or portrait
            //  Landscape gets a grid, portrait gets a list
              child: FM.OrientationBuilder(
                  builder: (context, orientation) {
                    if (orientation == FM.Orientation.landscape) {
                      return FM.GridView.builder(
                          scrollDirection: FM.Axis.horizontal,
                          gridDelegate: FM.SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 40,
                              mainAxisSpacing: 1,
                              childAspectRatio: 0.1
                          ),
                          itemCount: callsSearched.length,
                          itemBuilder: itemBuilder
                      );
                    }
                    else {
                      return FM.ListView.builder(
                        itemCount: callsSearched.length,
                        itemBuilder: itemBuilder,
                      );
                    }
                  }
          ))
        ]);
  }

  //  Builder for one item of the list or grid
  FM.Widget itemBuilder(FM.BuildContext context, int index) {
    return FM.GestureDetector(
        onTap: () {
          //  Selection goes to another page regardless of landscape or portrait
          //  So no need to get fancy, just set the new page here
          FM.Router.of(context).routerDelegate
              .setNewRoutePath(TaminationsRoute(
              level: levelDatum.dir,
              link: callsSearched[index].link,
              call: callsSearched[index].title,
              name: callsSearched[index].title
          ));
        },
        child:FM.Container(
            decoration: FM.BoxDecoration(
              //  Color the item according the the level
                color: LevelData.find(callsSearched[index].link).color,
                border: FM.Border(top: FM.BorderSide(width: 1, color: Color.BLACK))),
            padding: FM.EdgeInsets.only(left: 20.0, top:4, bottom:4),
            child:FM.Text(callsSearched[index].title,style: FM.TextStyle(fontSize: 20))
        )
    );

  }

}