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
import 'abbreviations_model.dart';
import '../color.dart';
import '../button.dart';
import '../extensions.dart';

class AbbreviationsFrame extends fm.StatefulWidget {
  @override
  _AbbreviationsFrameState createState() => _AbbreviationsFrameState();
}

class _AbbreviationsFrameState extends fm.State<AbbreviationsFrame> {

  var editRow = -1;
  var editExpansion = false;
  fm.TextEditingController textEditController;
  void Function() processTextChange;

  @override
  void initState() {
    super.initState();
    textEditController = fm.TextEditingController()
      ..addListener(_onTextChanged);
  }

  @override
  void dispose() {
    textEditController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    processTextChange();
  }

  fm.Widget _oneTextItem(int row, bool isExpansion) =>
      fm.Expanded(
        flex: isExpansion ? 4 : 1,
        child: fm.InkWell(
          onTap: () {
            fm.WidgetsBinding.instance.addPostFrameCallback((_) {
              setState(() {
                editRow = row;
                editExpansion = isExpansion;
              });
            });
          },
          child: fm.Container(
            child: pm.Consumer<AbbreviationsModel>(
                builder: (context,model,child) {
                  processTextChange = () {
                    //  For abbreviations, ignore invalid characters
                    if (!editExpansion) {
                      final value = textEditController.value;
                      final text = value.text.toLowerCase().replaceAll('\\W'.r, '');
                      final diff = value.text.length - text.length;
                      final selection = value.selection.copyWith(
                        baseOffset: value.selection.baseOffset - diff,
                        extentOffset: value.selection.extentOffset - diff
                      );
                      textEditController.value = value.copyWith(text: text, selection: selection);
                      model.setAbbreviation(editRow, text);
                    } else
                      model.setExpansion(editRow, textEditController.text);
                  };
                  return fm.Container(
                    child:child,
                    decoration: fm.BoxDecoration(
                        color: model.errors[row] ? Color.RED.veryBright() : Color.WHITE,
                        border: fm.Border(
                            bottom: fm.BorderSide(width: 1, color: fm.Colors.black),
                            left: fm.BorderSide(width: 1, color: fm.Colors.black))),
                  );
                },
                child: (row == editRow && editExpansion == isExpansion)
                    ? fm.TextField(
                  decoration: null,
                  autofocus: true,
                  autocorrect: false,
                  style: fm.TextStyle(fontSize: 24),
                  controller: textEditController
                    ..text = isExpansion
                        ? pm.Provider.of<AbbreviationsModel>(context, listen: false).currentAbbreviations[row].item2
                        : pm.Provider.of<AbbreviationsModel>(context, listen: false).currentAbbreviations[row].item1,
                )
                    : fm.Text(isExpansion
                    ? pm.Provider.of<AbbreviationsModel>(context, listen: false).currentAbbreviations[row].item2
                    : pm.Provider.of<AbbreviationsModel>(context, listen: false).currentAbbreviations[row].item1,
                    style: fm.TextStyle(fontSize: 24))
            ),
          ),
        ),
      );


  @override
  fm.Widget build(fm.BuildContext context) {
    final model = pm.Provider.of<AbbreviationsModel>(context, listen: false);
          return fm.Column(
              children: [
                fm.Expanded(
                    child: fm.ListView.builder(
                      itemCount: model.currentAbbreviations.length,
                      itemBuilder: (context,index) =>
                          fm.Row(
                            children: [
                              _oneTextItem(index, false),
                              _oneTextItem(index, true)
                            ]
                          )
                    )
                ),
                fm.Container(
                  color: Color.FLOOR,
                  child: fm.Row(
                    children: [
                      fm.Expanded(
                          child: Button('Copy', onPressed: () {
                            model.copy();
                            fm.ScaffoldMessenger.of(context).showSnackBar(fm.SnackBar(
                                backgroundColor: Color.BLUE,
                                duration: Duration(seconds: 2),
                                content: fm.Text('Abbreviations Copied.',style: fm.TextStyle(fontSize: 20))
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
                                      model.defaultAbbreviations();
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
                  ),
                )
              ]
          );
  }
}
