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

import '../call_entry.dart';
import '../call_index.dart';
import '../common_flutter.dart';
import 'page.dart';

final _levelColor = {
  LevelData.MS: Color.MS,
  LevelData.PLUS: Color.PLUS,
  LevelData.A1: Color.A1,
  LevelData.A2: Color.A2,
  LevelData.ADV: Color.ADV,
  LevelData.C1: Color.C1,
  LevelData.C2: Color.C2,
  LevelData.C3A: Color.C3A,
  LevelData.C3B: Color.C3B,
  LevelData.CHALLENGE: Color.CHALLENGE,
  LevelData.INDEX: Color.LIGHTGRAY,
  LevelData.NONE: Color.WHITE,
};

extension LevelColor on LevelData {
  Color get color => _levelColor[this]!;
}

final newCalls = [
  //  new Plus calls
  'Grand Quarter Thru',
  'Grand Three Quarter Thru',
  'Pair Off',
  'Partner Hinge',
  'Partner Tag',
  'Pass the Sea',
  'Quarter Thru',
  'Scoot and Dodge',
  'Three Quarter Thru',
  'Triple Trade',
  // new Mainstream calls (not in SSD)
  'Quarter Tag',
  'Single Circle to a Wave',
  'Spin the Top',
  'Three Quarter Tag',
];

class CallsPage extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(child: CallsFrame(destination: MainPage.ANIMLIST));
  }
}

//  CallsFrame contains a list or grid of calls
//  and a search entry above to filter the calls
class CallsFrame extends fm.StatefulWidget {
  final MainPage destination;

  const CallsFrame({super.key, required this.destination});

  @override
  _CallsFrameState createState() => _CallsFrameState();
}

class _CallsFrameState extends fm.State<CallsFrame> {
  var search = '';
  var newCallsOnly = false;
  var scrollController = fm.ScrollController();

  @override
  //  Build list or grid of calls
  fm.Widget build(fm.BuildContext context) {
    scrollController = fm.ScrollController();
    //  Return column of 2 items, search field and list/grid of calls
    return pp.Consumer2<TitleModel, TamState>(
      builder: (context, titleModel, tamState, _) {
        final levelDatum = LevelData.find(tamState.level ?? 'ms') ?? LevelData.MS;
        titleModel.title = levelDatum.name;
        //  Get the initial list of calls to show
        final showLevel = RegExp('(adv|cha|all)').hasMatch(levelDatum.dir);
        final calls = callIndex.where((it) => levelDatum.selector(it.level)).toList();
        //  Do any search to filter the calls
        var callsSearched = calls
            .where((call) => call.title.toLowerCase().contains(search))
            .toList();
        if (tamState.level == 'Plus' || tamState.level == 'Mainstream') {
          if (newCallsOnly)
            callsSearched = callsSearched.where(
                    (call) => newCalls.contains(call.title)).toList();
        }
        return fm.Container(
          color: Color.LIGHTGRAY,
          child: fm.Column(
            children: [
              fm.TextField(
                decoration: fm.InputDecoration.collapsed(
                  filled: true,
                  fillColor: Color.WHITE,
                  hintText: 'Search calls',
                ),
                enableSuggestions: false,
                style: fm.TextStyle(fontSize: 24),
                onChanged: (value) {
                  setState(() {
                    search = value.toLowerCase();
                  });
                },
              ),

              if (tamState.level == 'Plus' || tamState.level == 'Mainstream')
                fm.Row(
                  children: [
                    fm.Container(
                      color: Color.FLOOR,
                      alignment: fm.Alignment.centerLeft,
                      padding: fm.EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child:
                        Button(newCallsOnly
                            ? 'Show All Calls'
                            : 'Show New Calls Only',
                            onPressed: () {
                              setState(() {
                                newCallsOnly = !newCallsOnly;
                              });
                            }
                        )
                    ),
                  ],
                ),

              fm.Expanded(
                //  Test to see if we are landscape or portrait
                //  Landscape gets a grid, portrait gets a list
                child: fm.OrientationBuilder(
                  builder: (context, orientation) {
                    if (fm.MediaQuery.of(context).orientation == fm.Orientation.landscape) {
                      return fm.Container(
                        child: fm.Scrollbar(
                          controller: scrollController,
                          thumbVisibility: TamUtils.platform().matches('web|windows'.r),
                          thickness: 16,
                          child: fm.GridView.builder(
                            controller: scrollController,
                            scrollDirection: fm.Axis.horizontal,
                            padding: fm.EdgeInsets.fromLTRB(0, 0, 0, 20),
                            gridDelegate: fm.SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 40,
                              mainAxisSpacing: 1,
                              childAspectRatio: 0.1,
                            ),
                            itemCount: callsSearched.length,
                            itemBuilder: (context, index) =>
                                itemBuilder(context, index, callsSearched, showLevel),
                          ),
                        ),
                      );
                    } else {
                      return fm.Scrollbar(
                        thumbVisibility: TamUtils.platform().matches('web|windows'.r),
                        thickness: 16,
                        controller: scrollController,
                        child: fm.ListView.builder(
                          controller: scrollController,
                          itemCount: callsSearched.length,
                          itemBuilder: (context, index) =>
                              itemBuilder(context, index, callsSearched, showLevel),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  //  Builder for one item of the list or grid
  fm.Widget itemBuilder(
    fm.BuildContext context,
    int index,
    List<CallEntry> callsSearched,
    bool showLevel,
  ) {
    return fm.Container(
      decoration: fm.BoxDecoration(
        border: fm.Border(top: fm.BorderSide(width: 1, color: Color.BLACK)),
      ),
      child: pp.Consumer<TamState>(
        builder: (context, tamState, _) {
          var onTapFunction = () {
            tamState.change(
              //  Either ANIMLIST or PRACTICE
              mainPage: widget.destination,
              //  link is used to find the page of calls
              link: callsSearched[index].link,
            );
          };
          //  Color the item according the the level
          var c = LevelData.find(callsSearched[index].level)!.color;
          //  but highlight new additions to the programs
          if (newCalls.contains(callsSearched[index].title)) c = Color.FLOOR;
          return fm.Material(
            color: c,
            child: fm.Semantics(
              button: true,
              enabled: true,
              label: callsSearched[index].title,
              excludeSemantics: true,
              onTap: onTapFunction,
              child: fm.InkWell(
                highlightColor: LevelData.find(callsSearched[index].level)!.color.darker(),
                onTap: onTapFunction,
                child: fm.Row(
                  children: [
                    fm.Flexible(
                      child: fm.Container(
                        alignment: fm.Alignment.centerLeft,
                        padding: fm.EdgeInsets.only(bottom: 4, top: 4, left: 10.0),
                        child: AutoSizeText(
                          callsSearched[index].title,
                          style: fm.TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    if (showLevel)
                      fm.Container(
                        alignment: fm.Alignment.topRight,
                        padding: fm.EdgeInsets.only(top: 2, right: 2),
                        child: fm.Text(LevelData.find(callsSearched[index].link)!.name),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
