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

import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart' as fs;
import 'package:provider/provider.dart' as pp;

import '../button.dart';
import '../color.dart';
import '../extensions.dart';
import '../pages/page.dart';
import '../tam_state.dart';
import '../tam_utils.dart';
import 'abbreviations_model.dart';

class AbbreviationsPage extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(child: AbbreviationsFrame());
  }
}


class AbbreviationsFrame extends fm.StatefulWidget {
  @override
  _AbbreviationsFrameState createState() => _AbbreviationsFrameState();
}

class _AbbreviationsFrameState extends fm.State<AbbreviationsFrame> {

  var editRow = -1;
  var editExpansion = false;
  late fm.TextEditingController textEditController;
  var focusNode = fm.FocusNode();
  final scrollController = fm.ScrollController();

  @override
  void initState() {
    super.initState();
    textEditController = fm.TextEditingController()
      ..addListener(_onTextChanged);
    final virtualKeyboard = pp.Provider.of<VirtualKeyboardVisible>(context,listen: false);
    virtualKeyboard.isVisible = false;

    focusNode.addListener(() {
      //  When the user is finished editing an abbreviation, we want to
      //  automatically go to editing the expansion.
      //  Doesn't work - we don't know if focus was lost because user hit
      //  tab or return, or user clicked on another box
/*
      if (!focusNode.hasFocus) {
        setState(() {
          //  This sequence of events is important
          //  First set up the edit control
          if (editRow >= 0 && !editExpansion) {
            editExpansion = true;
            final text = pp.Provider
                .of<AbbreviationsModel>(context, listen: false)
                .currentAbbreviations[editRow].expa;
            textEditController.text = text;
            //  Then tell Flutter to give it focus
            later(() {
              focusNode.requestFocus();
            });
          } else {
            editRow = -1;
            virtualKeyboard.isVisible = false;
          }
        });
      }
*/
    });
  }

  @override
  void didChangeDependencies() {
    later(() {
      _checkFocus();
    });
    super.didChangeDependencies();
  }

  void _checkFocus() {
    final virtualKeyboard = pp.Provider.of<VirtualKeyboardVisible>(context,listen: false);
    if (virtualKeyboard.isVisible) {
      focusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    textEditController.dispose();
    fs.SystemChannels.textInput.invokeMethod('TextInput.hide');
    super.dispose();
  }

  void _onTextChanged() {
    if (editRow >= 0) {
      final model = pp.Provider.of<AbbreviationsModel>(context,listen: false);
      //  For abbreviations, ignore invalid characters
      if (!editExpansion) {
        final value = textEditController.value;
        final text = value.text.toLowerCase().replaceAll(
            '\\W'.r, '');
        final diff = value.text.length - text.length;
        final selection = value.selection.copyWith(
            baseOffset: value.selection.baseOffset - diff,
            extentOffset: value.selection.extentOffset - diff
        );
        textEditController.value =
            value.copyWith(text: text, selection: selection);
        if (text != model.currentAbbreviations[editRow].abbr)
          model.setAbbreviation(editRow, text);
      } else {
        if (textEditController.text != model.currentAbbreviations[editRow].expa)
          model.setExpansion(editRow, textEditController.text);
      }
    }
  }

  fm.Widget _oneTextItem(int row, bool isExpansion) {
    final virtualKeyboard = pp.Provider.of<VirtualKeyboardVisible>(context,listen: false);
      return fm.Expanded(
        flex: isExpansion ? 4 : 1,
        child: pp.Consumer<AbbreviationsModel>(
          builder: (context,modelForEdit,child) => fm.GestureDetector(
              onTap: () {
                setState(() {
                  editRow = row;
                  editExpansion = isExpansion;
                  textEditController.text = isExpansion
                  ? modelForEdit.currentAbbreviations[row].expa
                  : modelForEdit.currentAbbreviations[row].abbr;
                  virtualKeyboard.isVisible = true;
                  afterDelay(() {
                    focusNode.unfocus();
                  },Duration(milliseconds: 10));
                  afterDelay(() {
                    focusNode.requestFocus();
                  },Duration(milliseconds: 20));
                });
              },
              child: fm.Container(
                child: pp.Consumer<AbbreviationsModel>(
                    builder: (context,model,child) {
                      return fm.Container(
                        decoration: fm.BoxDecoration(
                            color:
                            model.currentAbbreviations[row].isError ? Color.RED.veryBright()
                            : row == editRow && editExpansion == isExpansion
                             ? Color.WHITE
                             : Color.LIGHTGRAY.veryBright(),
                            border: fm.Border(
                                bottom: fm.BorderSide(width: 1, color: fm.Colors.black),
                                left: fm.BorderSide(width: 1, color: fm.Colors.black))),
                        child:child,
                      );
                    },
                    child: (row == editRow && editExpansion == isExpansion)
                        ? fm.TextField(
                      decoration: null,
                      autofocus: true,
                      autocorrect: false,
                      enableSuggestions: false,
                      style: fm.TextStyle(fontSize: 24),
                      focusNode: focusNode,
                      controller: textEditController
                        ..text = isExpansion
                            ? pp.Provider.of<AbbreviationsModel>(context, listen: false).currentAbbreviations[row].expa
                            : pp.Provider.of<AbbreviationsModel>(context, listen: false).currentAbbreviations[row].abbr,
                    )
                        : fm.Text(isExpansion
                        ? pp.Provider.of<AbbreviationsModel>(context, listen: false).currentAbbreviations[row].expa
                        : pp.Provider.of<AbbreviationsModel>(context, listen: false).currentAbbreviations[row].abbr,
                        style: fm.TextStyle(fontSize: 24))
                ),
              ),
            ),
        ),
      );
  }

  Future<void> pasteDialog(fm.BuildContext context, String text) async {
    final model = pp.Provider.of<AbbreviationsModel>(context,listen: false);
    final controller = fm.TextEditingController()..text = text;
    final here = text.isBlank ? ' Here' :  '';
    await fm.showDialog(context: context, builder: (ctx) =>
        fm.AlertDialog(
          title: fm.Text('Paste Abbreviations$here'),
          content: fm.TextField(
            controller: controller,
            maxLines: null,
          ),
          actions: [
            fm.TextButton(onPressed: () {
              fm.Navigator.of(context).pop();
              model.paste(controller.text);
            }, child: fm.Text('OK')),
            fm.TextButton(onPressed: () {
              fm.Navigator.of(context).pop();
            }, child: fm.Text('Cancel'))
          ],
        ));
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<AbbreviationsModel>(
      builder: (context,model,child) {
        //  Building destroys the current cursor position
        //  So every time an error is detected or cleared, the cursor
        //  would reset to the start of the text
        //  To prevent that, save the selections and restore after the build
        final saveSelection = textEditController.selection;
        later(() {
          textEditController.selection = saveSelection;
        });
        return fm.Column(
          children: [
            fm.Expanded(
                child: fm.Scrollbar(
                  isAlwaysShown: TamUtils.platform().matches('web|windows'.r),
                  thickness: 16,
                  controller: scrollController,
                  child: fm.ListView.builder(
                      controller: scrollController,
                      itemCount: model.currentAbbreviations.length,
                      itemBuilder: (context, index) =>
                          fm.Row(
                              children: [
                                _oneTextItem(index, false),
                                _oneTextItem(index, true)
                              ]
                          )
                  ),
                )
            ),
            fm.Container(
                color: Color.FLOOR,
                child: fm.Row(
                    children: [
                      _AbbreviationsCopyButton(),
                      _AbbreviationsWarningButton(
                          name: 'Paste',
                          title: 'Confirm Paste',
                          message: 'This will APPEND to your current abbreviations!',
                          action: () {
                            setState(() {
                              //  Show the abbreviations to paste
                              //  and let the user confirm and edit
                              fs.Clipboard.getData('text/plain').then((value) async {
                                if (value is fs.ClipboardData) {
                                  await pasteDialog(context, value.text ?? '');
                                }
                              },
                                  //  Firefox does not support Clipboard, so let the user paste with ^V
                                  onError: (Object obj) async {
                                    await pasteDialog(context, '');
                                  }
                              );
                            });
                          }),
                      _AbbreviationsWarningButton(
                          name: 'Clear',
                          title: 'Confirm Erase',
                          message: 'This will ERASE ALL your abbreviations!',
                          action: () {
                            setState(() {
                              model.clear();
                            });
                          }),
                      _AbbreviationsWarningButton(
                          name: 'Reset',
                          title: 'Confirm Reset',
                          message: 'This will REPLACE ALL your abbreviations!',
                          action: () {
                            setState(() {
                              model.defaultAbbreviations();
                            });
                          })
                    ]
                )
            )
          ]
      );
    });
  }
}

class _AbbreviationsCopyButton extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    final model = pp.Provider.of<AbbreviationsModel>(context, listen: false);
    return fm.Expanded(
        child: Button('Copy', onPressed: () {
          model.copy();
          fm.ScaffoldMessenger.of(context).showSnackBar(fm.SnackBar(
              backgroundColor: Color.BLUE,
              duration: Duration(seconds: 2),
              content: fm.Text('Abbreviations Copied.',style: fm.TextStyle(fontSize: 20))
          ));
        })
    );
  }
}

class _AbbreviationsWarningButton extends fm.StatelessWidget {
  final String name;
  final String title;
  final String message;
  final void Function() action;
  _AbbreviationsWarningButton({
    required this.name,
    required this.title,
    required this.message,
    required this.action});
  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Expanded(
        child: Button(name, onPressed: () {
          fm.showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => fm.AlertDialog(
                title: fm.Text(title),
                content: fm.Text(message),
                actions: [
                  fm.TextButton(onPressed: () {
                    fm.Navigator.of(context).pop();
                    action();
                  }, child:fm.Text('OK')),
                  fm.TextButton(onPressed: () {
                    fm.Navigator.of(context).pop();
                  }, child:fm.Text('Cancel'))
                ],
              )
          );
        })
    );

  }
}
