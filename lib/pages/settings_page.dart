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
import 'package:provider/provider.dart' as pp;
import '../title_bar.dart';
import '../settings.dart';
import '../color.dart';

//  Settings page, only used in Portrait
class SettingsPage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.ChangeNotifierProvider<TitleModel>(
      create: (_) => TitleModel(),
      child: fm.Scaffold(
          appBar: fm.PreferredSize(
              preferredSize: fm.Size.fromHeight(56.0),
              child: TitleBar()
          ),
          body: SettingsFrame()
      ),
    );
  }

}

//  Settings frame, part of both first and second landscape pages
class SettingsFrame extends fm.StatefulWidget {

  @override
  fm.State<fm.StatefulWidget> createState() => _SettingsState();

}

//  Class for title above radio buttons
class _SettingTitle extends fm.StatelessWidget {

  final String _text;
  _SettingTitle(this._text);

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Container(
        alignment: fm.Alignment.centerLeft,
        color: fm.Colors.white,
        padding: fm.EdgeInsets.only(top: 4, left: 12),
        child: fm.Text(_text, style: fm.TextStyle(fontWeight: fm.FontWeight.bold, fontSize: 20)));
  }

}

//  Class for checkbox setting
typedef _boolChanger = void Function(bool value);
class _SettingCheckbox extends fm.StatelessWidget {

  final String name;
  final bool value;
  final _boolChanger onChanged;

  _SettingCheckbox({@fm.required this.name,
    @fm.required this.value, @fm.required this.onChanged});

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Container(
        color: fm.Colors.white,
        margin: fm.EdgeInsets.only(bottom:3),
        child: fm.InkWell(
          onTap: () { onChanged(!value); },
          child: fm.Row (
              children: [fm.Checkbox(
                  value: value,
                  onChanged: onChanged
              ),
                fm.Text(name,style: fm.TextStyle(fontWeight: fm.FontWeight.bold, fontSize: 20))
              ]),
        ));
  }

}

//  Class for radio button setting
class _SettingRadioGroup extends fm.StatelessWidget {

  final String groupValue;
  final List<String> values;
  final void Function(String value) onChanged;
  _SettingRadioGroup({@fm.required this.groupValue,
    @fm.required this.values,
    @fm.required this.onChanged});

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Container(
        color: fm.Colors.white,
        margin: fm.EdgeInsets.only(bottom:3),
        child: fm.Wrap (
            children: values.map((v) =>
                fm.InkWell(
                  onTap: () { onChanged(v); },
                  child: fm.Row(
                      mainAxisSize: fm.MainAxisSize.min,
                      children:[
                        fm.Radio<String>(
                            value: v,
                            groupValue: groupValue,
                            onChanged: onChanged
                        ),
                        fm.Text(v,style: fm.TextStyle(fontSize: 18))
                      ]),
                )).toList()
        ));
  }
}

//  Class for one dancer color drop-down
class _SettingsColorDropDown extends fm.StatefulWidget {

  final void Function(String value) onChanged;
  final String currentValue;
  _SettingsColorDropDown({
    @fm.required this.onChanged,
    @fm.required this.currentValue
  });
  @override
  fm.State<fm.StatefulWidget> createState() =>
      _SettingsColorDropDownState(onChanged,currentValue);
}

class _SettingsColorDropDownState extends fm.State<_SettingsColorDropDown> {

  final void Function(String value) onChanged;
  String dropdownValue;
  _SettingsColorDropDownState(this.onChanged,this.dropdownValue);

  fm.DropdownMenuItem oneItem(String name, Color c) =>
      fm.DropdownMenuItem<String>(
          value: name,
          child: fm.Container(
            decoration: fm.BoxDecoration(
                color: c,
                border:fm.Border.all(color:c.darker(0.5), width: 2)),
              width: 100,
              padding: fm.EdgeInsets.all(8),
             // color: c,
              child: fm.Text(name,
                  style: fm.TextStyle(color: name.startsWith('B') ? Color.WHITE : Color.BLACK))
          )
      );


  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.DropdownButton<String>(
      onChanged: (String c) {
        setState(() {
          dropdownValue = c;
          onChanged(c);
        });
      },
      underline: fm.Container( height: 0, width:0 ),
      hint: fm.Container( height: 0, width:0 ),
      disabledHint: fm.Container( height: 0, width:0 ),
      icon: fm.Container( height: 0, width:0 ),
      dropdownColor: Color(0),
      value: dropdownValue,
      items: [
        oneItem('Black',Color.BLACK),
        oneItem('Blue',Color.BLUE),
        oneItem('Cyan',Color.CYAN),
        oneItem('Gray',Color.GRAY),
        oneItem('Green',Color.GREEN),
        oneItem('Magenta',Color.MAGENTA),
        oneItem('Orange',Color.ORANGE),
        oneItem('Red',Color.RED),
        oneItem('White',Color.WHITE),
        oneItem('Yellow',Color.YELLOW)
      ],
    );
  }

}

class _SettingsState extends fm.State<SettingsFrame> {

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer2<Settings,TitleModel>(
        builder: (context, settings, titleModel, child) {
          titleModel.title = 'Settings';
          return fm.Container(
            color: Color.LIGHTGREY,
              child:fm.ListView(children: [
            _SettingTitle('Dancer Speed'),
            _SettingRadioGroup(
                groupValue: settings.speed,
                values: ['Slow', 'Normal', 'Fast'],
                onChanged: (value) {
                  setState(() { settings.speed = value; });
                }),

            _SettingCheckbox(
              name:'Loop',
              value: settings.loop,
              onChanged: (value) {
                setState(() {
                  settings.loop = value;
                });
              },
            ),

            _SettingCheckbox(
              name:'Grid',
              value: settings.grid,
              onChanged: (value) {
                setState(() {
                  settings.grid = value;
                });
              },
            ),

            _SettingCheckbox(
              name:'Paths',
              value: settings.paths,
              onChanged: (value) {
                setState(() {
                  settings.paths = value;
                });
              },
            ),

            _SettingTitle('Numbers'),
            _SettingRadioGroup(
                groupValue: settings.numbers,
                values: ['None', '1-8', '1-4'],
                onChanged: (value) {
                  setState(() { settings.numbers = value; });
                }),

                _SettingTitle('Dancer Colors'),
                fm.Container(
                    color: fm.Colors.white,
                    margin: fm.EdgeInsets.only(bottom:3),
                    alignment: fm.Alignment(-1.0,0.0),
                    child: fm.Wrap (
                      children: [
                        for (var i in [1,2,3,4])
                          fm.Container(
                              margin: fm.EdgeInsets.fromLTRB(10, 2, 10, 2),
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
              name:'Phantoms',
              value: settings.phantoms,
              onChanged: (value) {
                setState(() {
                  settings.phantoms = value;
                });
              },
            ),

            _SettingTitle('Special Geometry'),
            _SettingRadioGroup(
                groupValue: settings.geometry,
                values: ['None','Hexagon','Bi-Gon'],
                onChanged: (value) {
                  setState(() { settings.geometry = value; });
                }),

            _SettingTitle('Language for Definitions'),
            _SettingRadioGroup(
                groupValue: settings.language,
                values: ['System','English','German','Japanese'],
                onChanged: (value) {
                  setState(() { settings.language = value; });
                }),

          ]));
        });
  }

}