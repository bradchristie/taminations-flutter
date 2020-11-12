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
import '../title_bar.dart';
import '../settings.dart';
import '../color.dart';

//  Settings page, only used in Portrait
class SettingsPage extends FM.StatelessWidget {

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Scaffold(
        appBar: FM.PreferredSize(
            preferredSize: FM.Size.fromHeight(56.0),
            child: TitleBar(title:"Settings")
        ),
        body: SettingsFrame()
    );
  }

}

//  Settings frame, part of both first and second landscape pages
class SettingsFrame extends FM.StatefulWidget {

  @override
  FM.State<FM.StatefulWidget> createState() => _SettingsState();

}

//  Class for title above radio buttons
class _SettingTitle extends FM.StatelessWidget {

  final String _text;
  _SettingTitle(this._text);

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Container(
        alignment: FM.Alignment.centerLeft,
        color: FM.Colors.white,
        padding: FM.EdgeInsets.only(top: 4, left: 12),
        child: FM.Text(_text, style: FM.TextStyle(fontWeight: FM.FontWeight.bold, fontSize: 20)));
  }

}

//  Class for checkbox setting
typedef _boolChanger = void Function(bool value);
class _SettingCheckbox extends FM.StatelessWidget {

  final String name;
  final bool value;
  final _boolChanger onChanged;

  _SettingCheckbox({@FM.required this.name,
    @FM.required this.value, @FM.required this.onChanged});

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Container(
        color: FM.Colors.white,
        margin: FM.EdgeInsets.only(bottom:3),
        child: FM.Row (
            children: [FM.Checkbox(
                value: value,
                onChanged: onChanged
            ),
              FM.Text(this.name,style: FM.TextStyle(fontWeight: FM.FontWeight.bold, fontSize: 20))
            ]));
  }

}

//  Class for radio button setting
class _SettingRadioGroup extends FM.StatelessWidget {

  final String groupValue;
  final List<String> values;
  final void Function(String value) onChanged;
  _SettingRadioGroup({@FM.required this.groupValue,
    @FM.required this.values,
    @FM.required this.onChanged});

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Container(
        color: FM.Colors.white,
        margin: FM.EdgeInsets.only(bottom:3),
        child: FM.Row (
            children: values.map((v) => [
              FM.Radio<String>(
                  value: v,
                  groupValue: groupValue,
                  onChanged: onChanged
              ),
              FM.Text(v)
            ]).expand((e) => e).toList()
        ));
  }
}

//  Class for one dancer color drop-down
class _SettingsColorDropDown extends FM.StatefulWidget {

  final void Function(String value) onChanged;
  final String currentValue;
  _SettingsColorDropDown({
    @FM.required this.onChanged,
    @FM.required this.currentValue
  });
  @override
  FM.State<FM.StatefulWidget> createState() =>
      _SettingsColorDropDownState(onChanged,currentValue);
}

class _SettingsColorDropDownState extends FM.State<_SettingsColorDropDown> {

  final void Function(String value) onChanged;
  String dropdownValue;
  _SettingsColorDropDownState(this.onChanged,this.dropdownValue);

  FM.DropdownMenuItem oneItem(String name, Color c) =>
      FM.DropdownMenuItem<String>(
          value: name,
          child: FM.Container(
            width: 100,
              padding: FM.EdgeInsets.all(8),
              color: c,
              child: FM.Text(name,
                  style: FM.TextStyle(color: name.startsWith("B") ? Color.WHITE : Color.BLACK))
          )
      );


  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.DropdownButton<String>(
      onChanged: (String c) {
        setState(() {
          dropdownValue = c;
          onChanged(c);
        });
      },
      underline: FM.Container( height: 0, width:0 ),
      hint: FM.Container( height: 0, width:0 ),
      disabledHint: FM.Container( height: 0, width:0 ),
      icon: FM.Container( height: 0, width:0 ),
      dropdownColor: Color(0),
      value: dropdownValue,
      items: [
        oneItem("Black",Color.BLACK),
        oneItem("Blue",Color.BLUE),
        oneItem("Cyan",Color.CYAN),
        oneItem("Gray",Color.GRAY),
        oneItem("Green",Color.GREEN),
        oneItem("Magenta",Color.MAGENTA),
        oneItem("Orange",Color.ORANGE),
        oneItem("Red",Color.RED),
        oneItem("White",Color.WHITE),
        oneItem("Yellow",Color.YELLOW)
      ],
    );
  }

}

class _SettingsState extends FM.State<SettingsFrame> {

  @override
  FM.Widget build(FM.BuildContext context) {
    return PP.Consumer<Settings>(
        builder: (context, settings, child) {
          return FM.Container(
            color: Color.LIGHTGREY,
              child:FM.ListView(children: [
            _SettingTitle("Dancer Speed"),
            _SettingRadioGroup(
                groupValue: settings.speed,
                values: ["Slow", "Normal", "Fast"],
                onChanged: (value) {
                  setState(() { settings.speed = value; });
                }),

            _SettingCheckbox(
              name:"Loop",
              value: settings.loop,
              onChanged: (value) {
                setState(() {
                  settings.loop = value;
                });
              },
            ),

            _SettingCheckbox(
              name:"Grid",
              value: settings.grid,
              onChanged: (value) {
                setState(() {
                  settings.grid = value;
                });
              },
            ),

            _SettingCheckbox(
              name:"Paths",
              value: settings.paths,
              onChanged: (value) {
                setState(() {
                  settings.paths = value;
                });
              },
            ),

            _SettingTitle("Numbers"),
            _SettingRadioGroup(
                groupValue: settings.numbers,
                values: ["None", "1-8", "1-4"],
                onChanged: (value) {
                  setState(() { settings.numbers = value; });
                }),

                _SettingTitle("Dancer Colors"),
                FM.Container(
                    color: FM.Colors.white,
                    margin: FM.EdgeInsets.only(bottom:3),
                    alignment: FM.Alignment(-1.0,0.0),
                    child: FM.Wrap (
                      children: [
                        for (var i in [1,2,3,4])
                          FM.Container(
                              margin: FM.EdgeInsets.fromLTRB(10, 2, 10, 2),
                              child:_SettingsColorDropDown(
                                currentValue: settings.coupleColor(i),
                                onChanged: (String value) {
                                  setState(() {
                                    settings.setCoupleColor(i, value);
                                  });
                                },
                              )
                          ),
                      ],
                    )),

            _SettingCheckbox(
              name:"Phantoms",
              value: settings.phantoms,
              onChanged: (value) {
                setState(() {
                  settings.phantoms = value;
                });
              },
            ),

            _SettingTitle("Special Geometry"),
            _SettingRadioGroup(
                groupValue: settings.geometry,
                values: ["None","Hexagon","Bi-Gon"],
                onChanged: (value) {
                  setState(() { settings.geometry = value; });
                }),

            _SettingTitle("Language for Definitions"),
            _SettingRadioGroup(
                groupValue: settings.language,
                values: ["System","English","German","Japanese"],
                onChanged: (value) {
                  setState(() { settings.language = value; });
                }),

          ]));
        });
  }

}