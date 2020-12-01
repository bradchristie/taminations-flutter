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
import 'sequencer_model.dart';
import '../color.dart';
import '../button.dart';

class AbbreviationsFrame extends FM.StatefulWidget {
  @override
  _AbbreviationsFrameState createState() => _AbbreviationsFrameState();
}

class _AbbreviationsFrameState extends FM.State<AbbreviationsFrame> {
  @override
  FM.Widget build(FM.BuildContext context) {
    return PP.Consumer<SequencerModel>(
        builder: (context,seqmodel,child) {
          var model = seqmodel.abbreviations;
          return FM.Column(
              children: [
                FM.Expanded(
                    child: FM.ListView.builder(
                      itemCount: model.currentAbbreviations.length,
                      itemBuilder: (context,index) =>
                          FM.Row(
                            children: [
                              FM.Expanded(
                                flex:1,
                                child: FM.Container(
                                  color: model.errors[index] ? Color.RED : Color.WHITE,
                                    child: FM.Text(model.currentAbbreviations[index].item1,
                                    style: FM.TextStyle(fontSize: 24),)
                                ),
                              ),
                              FM.Expanded(
                                flex: 5,
                                child: FM.Container(
                                    child: FM.Text(model.currentAbbreviations[index].item2,
                                    style: FM.TextStyle(fontSize: 24),)
                                ),
                              )
                            ],
                          )
                    )
                ),
                FM.Row(
                  children: [
                    FM.Expanded(
                        child: Button("Copy", onPressed: () {
                          model.copy();
                          FM.ScaffoldMessenger.of(context).showSnackBar(FM.SnackBar(
                              backgroundColor: Color.BLUE,
                              duration: Duration(seconds: 2),
                              content: FM.Text('Abbreviations Copied.')
                          ));
                        })
                    ),
                    FM.Expanded(
                        child: Button("Paste", onPressed: () {
                          FM.showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (context) => FM.AlertDialog(
                              title: FM.Text("Confirm Paste"),
                              content: FM.Text("This will REPLACE ALL your abbreviations!"),
                              actions: [
                                FM.TextButton(child:FM.Text("OK"),onPressed: () {
                                  FM.Navigator.of(context).pop();
                                  model.paste();
                                }),
                                FM.TextButton(child:FM.Text("Cancel"),onPressed: () {
                                  FM.Navigator.of(context).pop();
                                })
                              ],
                            )
                          );
                        })
                    ),
                    FM.Expanded(
                        child: Button("Clear", onPressed: () {
                          FM.showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => FM.AlertDialog(
                                title: FM.Text("Confirm Erase"),
                                content: FM.Text("This will ERASE ALL your abbreviations!"),
                                actions: [
                                  FM.TextButton(child:FM.Text("OK"),onPressed: () {
                                    FM.Navigator.of(context).pop();
                                    model.clear();
                                  }),
                                  FM.TextButton(child:FM.Text("Cancel"),onPressed: () {
                                    FM.Navigator.of(context).pop();
                                  })
                                ],
                              )
                          );
                        })
                    ),
                    FM.Expanded(
                        child: Button("Reset", onPressed: () {
                          FM.showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => FM.AlertDialog(
                                title: FM.Text("Confirm Reset"),
                                content: FM.Text("This will REPLACE ALL your abbreviations!"),
                                actions: [
                                  FM.TextButton(child:FM.Text("OK"),onPressed: () {
                                    FM.Navigator.of(context).pop();
                                    model.reset();
                                  }),
                                  FM.TextButton(child:FM.Text("Cancel"),onPressed: () {
                                    FM.Navigator.of(context).pop();
                                  })
                                ],
                              )
                          );
                        })
                    ),
                  ],
                )
              ]
          );
        });
  }
}
