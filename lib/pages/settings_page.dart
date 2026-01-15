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

import 'package:flutter/material.dart' as fm;
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart' as pp;

import '../common_flutter.dart';
import 'page.dart';

//  Settings page, only used in Portrait
class SettingsPage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(child: SettingsFrame());
  }

}

//  Settings frame, part of both first and second landscape pages
class SettingsFrame extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer2<Settings,TitleModel>(
        builder: (context, settings, titleModel, child) {
          titleModel.title = 'Settings';
          return fm.Container(
              color: Color.LIGHTGREY,
              child:fm.ListView(children: [
                DancerSpeedSettingWidget(),
                LoopSettingWidget(),
                GridSettingWidget(),
                AxesSettingWidget(),
                NumbersSettingWidget(),
                DancerColorsSettingWidget(),
                PhantomsSettingWidget(),
                GeometrySettingWidget(),
                LanguageSettingWidget()
              ]));
        });
  }
}



class SequencerSettingsPage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(child: SequencerSettingsFrame());
  }

}

class SequencerSettingsFrame extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer2<Settings,TitleModel>(
        builder: (context, settings, titleModel, child) {
          titleModel.title = 'Settings';
          return fm.Container(
              color: Color.LIGHTGREY,
              child:fm.ListView(children: [
                StartingFormationDropdownWidget(),
                DancerSpeedSettingWidget(),
                GridSettingWidget(),
                AxesSettingWidget(),
                SequencerDancerColorsWidget(),
                DancerShapesWidget(),
                DancerIdentificationWidget(),
                GeometrySettingWidget(),
                JoinCallsWithWidget()
              ]));
        });
  }
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

class _SettingText extends fm.StatelessWidget {

  final String _text;
  _SettingText(this._text);

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Container(
        alignment: fm.Alignment.centerLeft,
        color: fm.Colors.white,
        padding: fm.EdgeInsets.only(top: 4, left: 12),
        child: fm.Text(_text, style: fm.TextStyle(fontSize: 20)));
  }

}

//  Class for checkbox setting
typedef _boolChanger = void Function(bool value);
class _SettingCheckbox extends fm.StatefulWidget {

  final String name;
  final bool value;
  final _boolChanger onChanged;

  _SettingCheckbox({
    required this.name,
    required this.value,
    required this.onChanged});

  @override
  __SettingCheckboxState createState() => __SettingCheckboxState();
}

class __SettingCheckboxState extends fm.State<_SettingCheckbox> {
  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Container(
        color: fm.Colors.white,
        margin: fm.EdgeInsets.only(bottom:3),
        child: fm.InkWell(
          onTap: () { widget.onChanged(!widget.value); },
          child: fm.Row (
              children: [fm.Checkbox(
                  semanticLabel: widget.name,
                  value: widget.value,
                  onChanged: (value) {
                    setState(() {
                      widget.onChanged(value ?? false);
                    });
                  }
              ),
                fm.Text(widget.name,style: fm.TextStyle(fontWeight: fm.FontWeight.bold, fontSize: 20))
              ]),
        ));
  }
}

//  Class for radio button setting
class _SettingRadioGroup extends fm.StatefulWidget {

  final String groupName;
  final String groupValue;
  final List<String> values;
  final void Function(String value) onChanged;
  final double bottomMargin;
  _SettingRadioGroup({
    required this.groupName,
    required this.groupValue,
    required this.values,
    required this.onChanged,
    this.bottomMargin=3
  });

  @override
  __SettingRadioGroupState createState() => __SettingRadioGroupState();
}

class __SettingRadioGroupState extends fm.State<_SettingRadioGroup> {
  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Container(
        color: fm.Colors.white,
        margin: fm.EdgeInsets.only(bottom:widget.bottomMargin),
        child: fm.Wrap (
            children: widget.values.map((v) =>
                fm.InkWell(
                  onTap: () {
                    setState(() {
                      widget.onChanged(v);
                    });
                  },
                  child: fm.RadioGroup<String>(
                      groupValue: widget.groupValue,
                      onChanged: (value) {
                        setState(() {
                          widget.onChanged(value ?? '');
                        });
                      },
                  child: fm.Row(
                      mainAxisSize: fm.MainAxisSize.min,
                      children:[
                        fm.Semantics(
                          button: true,
                          enabled: true,
                          label: '${widget.groupName}: ',
                          child: fm.Radio<String>(
                              key: fm.Key(v),
                              value: v,
                          ),
                        ),
                        fm.Text(v,style: fm.TextStyle(fontSize: 18))
                      ])),
                )).toList()
        ));
  }
}

//  Class for one dancer color drop-down
class _SettingsColorDropDown extends fm.StatefulWidget {

  final int dancerNumber;
  final void Function(String value) onChanged;
  final String currentValue;
  _SettingsColorDropDown({
    required this.dancerNumber,
    required this.onChanged,
    required this.currentValue
  });
  @override
  fm.State<fm.StatefulWidget> createState() =>
      _SettingsColorDropDownState(onChanged,currentValue);
}

class _SettingsColorDropDownState extends fm.State<_SettingsColorDropDown> {

  final void Function(String value) onChanged;
  String dropdownValue;
  _SettingsColorDropDownState(this.onChanged,this.dropdownValue);

  fm.DropdownMenuItem<String> oneItem(String name, Color c) =>
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
    return fm.Semantics(
      button: true,
      enabled: true,
      label: 'Dancer ${widget.dancerNumber} Color Menu',
      excludeSemantics: true,
      child: fm.DropdownButton<String>(
        onChanged: (String? c) {
          setState(() {
            dropdownValue = c ?? '';
            onChanged(c ?? '');
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
      ),
    );
  }

}

class DancerSpeedSettingWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
        _SettingTitle('Dancer Speed'),
        _SettingRadioGroup(
            groupName: 'Dancer Speed',
            groupValue: Settings.speed,
            values: ['Slow', 'Normal', 'Fast'],
            onChanged: (value) {
              Settings.speed = value;
            }),
      ]),
    );
  }
}

class LoopSettingWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => _SettingCheckbox(
        name:'Loop',
        value: Settings.loop,
        onChanged: (value) {
          Settings.loop = value;
        },
      ),
    );
  }
}

class GridSettingWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Container(
        color: fm.Colors.white,
        child: fm.Row(
          children: [
            _SettingCheckbox(
              name:'Grid',
              value: Settings.grid,
              onChanged: (value) {
                Settings.grid = value;
              },
            ),
            fm.Container(width: 40),
            _SettingCheckbox(
              name:'Paths',
              value: Settings.paths,
              onChanged: (value) {
                Settings.paths = value;
              }
            )
          ]
        )
      )
    );
  }
}

class AxesSettingWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
            _SettingTitle('Axes'),
            _SettingRadioGroup(
                groupName: 'Axes',
                groupValue: Settings.axes,
                values: ['None', 'Short', 'Long'],
                onChanged: (value) {
                  Settings.axes = value;
                }),
          ]),
    );
  }
}

class PhantomsSettingWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => _SettingCheckbox(
        name:'Phantoms',
        value: Settings.phantoms,
        onChanged: (value) {
          Settings.phantoms = value;
        },
      ),
    );
  }
}

class NumbersSettingWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
            _SettingTitle('Numbers'),
            _SettingRadioGroup(
                groupName: 'Numbers',
                groupValue: Settings.numbers,
                values: ['None', '1-8', '1-4'],
                onChanged: (value) {
                  Settings.numbers = value;
                }),
          ]),
    );
  }
}

class GeometrySettingWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
            _SettingTitle('Special Geometry'),
            _SettingRadioGroup(
                groupName: 'Special Geometry',
                groupValue: Settings.geometry,
                values: ['None', 'Hexagon', 'Bi-Gon', 'Hashtag'],
                onChanged: (value) {
                  Settings.geometry = value;
                }),
          ]),
    );
  }
}

class LanguageSettingWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
            _SettingTitle('Language for Definitions'),
            _SettingRadioGroup(
                groupName: 'Language for Definitions',
                groupValue: Settings.language,
                values: ['System', 'English', 'German', 'Italian', 'Japanese'],
                onChanged: (value) {
                  Settings.language = value;
                }),
          ]),
    );
  }
}

class StartingFormationDropdownWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    var randomFormation = Settings.startingFormation.startsWith('Random')
        ? Settings.startingFormation : 'Random Lines';
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
            _SettingTitle('Starting Formation'),
            fm.Container(
              color: Color.WHITE,
              padding: fm.EdgeInsets.only(left: 20),
              margin: fm.EdgeInsets.only(bottom:3),
              child: fm.DropdownButton<String>(
                value: Settings.startingFormation,
                style: GoogleFonts.roboto(fontSize: 20, color: Color.BLACK),
                underline: fm.Container( height: 0, width:0 ),
                onChanged: (newValue) {
                  if (newValue == 'Random Lines')
                    Settings.startingFormation =
                        Formation.randomFormationName('');
                  else
                    Settings.startingFormation = newValue ?? '';
                },
                items: [
                  'Facing Couples',
                  'Squared Set',
                  'Normal Lines',
                  'Zero Box',
                  'Double Pass Thru',
                  'Ocean Waves',
                  'Two-Faced Lines',
                  'Diamonds',
                  'Quarter Tag',
                  'Columns',
                  'Tidal Wave',
                  'Blocks',
                  randomFormation
                ].map((v) => fm.DropdownMenuItem(value:v, child:fm.Text(v))).toList(),
              ),
            )
          ]),
    );
  }
}

class DancerIdentificationWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
            _SettingTitle('Dancer Identification'),
            _SettingRadioGroup(
                groupName: 'Dancer Identification',
                groupValue: Settings.dancerIdentification,
                values: ['None', 'Dancer Numbers', 'Couple Numbers', 'Names'],
                onChanged: (value) {
                  Settings.dancerIdentification = value;
                }),
          ]),
    );
  }
}

class DancerShapesWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => _SettingCheckbox(
        name:'Dancer Shapes',
        value: Settings.dancerShapes,
        onChanged: (value) {
          Settings.dancerShapes = value;
        },
      ),
    );
  }
}


class DancerColorsSettingWidget extends fm.StatefulWidget {
  @override
  _DancerColorsSettingWidgetState createState() => _DancerColorsSettingWidgetState();
}

class _DancerColorsSettingWidgetState extends fm.State<DancerColorsSettingWidget> {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
            _SettingTitle('Dancer Colors'),
            fm.Container(
                color: fm.Colors.white,
                margin: fm.EdgeInsets.only(bottom:3),
                alignment: fm.Alignment(-1.0,0.0),
                child: fm.Wrap (
                  children: [
                    for (var i in [1,2,3,4])
                      fm.Column(
                        children: [
                          fm.Container(
                              margin: fm.EdgeInsets.fromLTRB(10, 2, 10, 2),
                              child:_SettingsColorDropDown(
                                dancerNumber: i,
                                currentValue: Settings.coupleColor(i),
                                onChanged: (String value) {
                                  setState(() {
                                    Settings.setCoupleColor(i, value);
                                  });
                                },
                              )
                          ),
                          fm.Text('Couple $i')
                        ],
                      ),
                  ],
                )),
          ]),
    );
  }
}

class SequencerDancerColorsWidget extends fm.StatefulWidget {
  @override
  _SequencerDancerColorsWidgetState createState() => _SequencerDancerColorsWidgetState();
}

class _SequencerDancerColorsWidgetState extends fm.State<SequencerDancerColorsWidget> {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
            _SettingTitle('Dancer Colors'),
            _SettingRadioGroup(
                groupName: 'Dancer Colors',
                bottomMargin: 0,
                groupValue: Settings.showDancerColors,
                values: ['By Couple','Random','None'],
                onChanged: (value) {
                Settings.showDancerColors = value;
              },
            ),
            if (Settings.showDancerColors == 'By Couple')
            fm.Container(
                color: fm.Colors.white,
                alignment: fm.Alignment(-1.0,0.0),
                child: fm.Wrap (
                  children: [
                    for (var i in [1,2,3,4])
                      fm.Column(
                        children: [
                          fm.Container(
                              margin: fm.EdgeInsets.fromLTRB(10, 2, 10, 2),
                              child:_SettingsColorDropDown(
                                dancerNumber: i,
                                currentValue: Settings.coupleColor(i),
                                onChanged: (String value) {
                                  setState(() {
                                    Settings.setCoupleColor(i, value);
                                  });
                                },
                              )
                          ),
                          fm.Text('Couple $i')
                        ],
                      ),
                  ],
                )),
            if (Settings.showDancerColors == 'By Couple')
                _SettingText('You can also set a single dancer color by ' +
                    (TamUtils.isTouchDevice ? 'long-pressing' : 'right-clicking') +
                    ' on the dancer.'),
            fm.Container(
              height: 3,
              color: Color.LIGHTGRAY,
            )
          ]),
    );
  }
}

class JoinCallsWithWidget extends fm.StatelessWidget {
  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
      builder: (context,settings,child) => fm.Column(
          crossAxisAlignment: fm.CrossAxisAlignment.stretch,
          children: [
            _SettingTitle('On Copy, Join Calls With'),
            _SettingRadioGroup(
                groupName: 'On Copy, Join Calls With',
                groupValue: Settings.joinCallsWith,
                values: ['New Line','Semi-Colon','Comma'],
                onChanged: (value) {
                  Settings.joinCallsWith = value;
                }),
          ]),
    );
  }
}