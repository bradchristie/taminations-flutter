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

import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pm;
import 'sequencer_model.dart';
import '../color.dart';
import '../button.dart';

class AbbreviationsFrame extends fm.StatefulWidget {
  @override
  _AbbreviationsFrameState createState() => _AbbreviationsFrameState();
}

class _AbbreviationsFrameState extends fm.State<AbbreviationsFrame> {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pm.Consumer<SequencerModel>(
        builder: (context,seqmodel,child) {
          var model = seqmodel.abbreviations;
          return fm.Column(
              children: [
                fm.Expanded(
                    child: fm.ListView.builder(
                      itemCount: model.currentAbbreviations.length,
                      itemBuilder: (context,index) =>
                          fm.Row(
                            children: [
                              fm.Expanded(
                                flex:1,
                                child: fm.Container(
                                  color: model.errors[index] ? Color.RED : Color.WHITE,
                                    child: fm.Text(model.currentAbbreviations[index].item1,
                                    style: fm.TextStyle(fontSize: 24),)
                                ),
                              ),
                              fm.Expanded(
                                flex: 5,
                                child: fm.Container(
                                    child: fm.Text(model.currentAbbreviations[index].item2,
                                    style: fm.TextStyle(fontSize: 24),)
                                ),
                              )
                            ],
                          )
                    )
                ),
                fm.Row(
                  children: [
                    fm.Expanded(
                        child: Button('Copy', onPressed: () {
                          model.copy();
                          fm.ScaffoldMessenger.of(context).showSnackBar(fm.SnackBar(
                              backgroundColor: Color.BLUE,
                              duration: Duration(seconds: 2),
                              content: fm.Text('Abbreviations Copied.')
                          ));
                        })
                    ),
                    fm.Expanded(
                        child: Button('Paste', onPressed: () {
                          fm.showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (context) => fm.AlertDialog(
                              title: fm.Text('Confirm Paste'),
                              content: fm.Text('This will REPLACE ALL your abbreviations!'),
                              actions: [
                                fm.TextButton(child:fm.Text('OK'),onPressed: () {
                                  fm.Navigator.of(context).pop();
                                  model.paste();
                                }),
                                fm.TextButton(child:fm.Text('Cancel'),onPressed: () {
                                  fm.Navigator.of(context).pop();
                                })
                              ],
                            )
                          );
                        })
                    ),
                    fm.Expanded(
                        child: Button('Clear', onPressed: () {
                          fm.showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => fm.AlertDialog(
                                title: fm.Text('Confirm Erase'),
                                content: fm.Text('This will ERASE ALL your abbreviations!'),
                                actions: [
                                  fm.TextButton(child:fm.Text('OK'),onPressed: () {
                                    fm.Navigator.of(context).pop();
                                    model.clear();
                                  }),
                                  fm.TextButton(child:fm.Text('Cancel'),onPressed: () {
                                    fm.Navigator.of(context).pop();
                                  })
                                ],
                              )
                          );
                        })
                    ),
                    fm.Expanded(
                        child: Button('Reset', onPressed: () {
                          fm.showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => fm.AlertDialog(
                                title: fm.Text('Confirm Reset'),
                                content: fm.Text('This will REPLACE ALL your abbreviations!'),
                                actions: [
                                  fm.TextButton(child:fm.Text('OK'),onPressed: () {
                                    fm.Navigator.of(context).pop();
                                    model.reset();
                                  }),
                                  fm.TextButton(child:fm.Text('Cancel'),onPressed: () {
                                    fm.Navigator.of(context).pop();
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
