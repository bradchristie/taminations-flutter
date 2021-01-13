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
import 'package:provider/provider.dart' as pp;

import '../common.dart';
import '../pages/settings_page.dart';
import '../pages/web_page.dart';
import '../pages/page.dart';
import 'abbreviations_frame.dart';
import 'abbreviations_model.dart';
import 'sequence_frame.dart';
import 'sequencer_animation_frame.dart';
import 'sequencer_calls_page.dart';
import 'sequencer_model.dart';

class SequencerPage extends fm.StatefulWidget {
  @override
  _SequencerPageState createState() => _SequencerPageState();
}

class _SequencerPageState extends fm.State<SequencerPage> {

  SequencerModel model;
  AbbreviationsModel abbreviationsModel;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final settings = pp.Provider.of<Settings>(context,listen: false);
    model = SequencerModel();
    model.startingFormation = settings.startingFormation;
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.MultiProvider(
      providers: [
        pp.ChangeNotifierProvider(create: (_) => TitleModel()),
        pp.ChangeNotifierProvider.value(value: model),
        pp.ChangeNotifierProvider.value(value: model.animation)
      ],
      child: Page(
        child: pp.Consumer2<TitleModel,Settings>(
              builder: (context,titleModel,settings,_) {
                titleModel.title = 'Sequencer';
                model.startingFormation = settings.startingFormation;
                if (isSmallDevice(context)) {
                  return  fm.Column(
                    children: [
                      fm.Expanded(
                          flex: 3,
                          child:PortraitSequencerAnimationFrame()
                      ),
                      if (isSmallAndCompact(context))
                        SequencerEditLine()
                      else
                        fm.Expanded(
                            flex: 2,
                            child: SequenceFrame()
                        )
                    ],
                  );
                }
                //  landscape
                return fm.Row(
                  children: [
                    fm.Expanded(child: fm.Column(
                      children: [
                        fm.Expanded(child: SequenceFrame()),
                        SequenceEditButtons(),
                      ],
                    )),
                    fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
                    fm.Expanded(child: SequencerAnimationFrame()),
                    fm.VerticalDivider(color: Color.BLACK, width: 2.0,),
                    //  Dummy title model to intercept titles we don't want to show
                    pp.ChangeNotifierProvider(
                      create: (_) => TitleModel(),
                      child: fm.Expanded(child: pp.Consumer<TamState>(
                          builder: (context,tamState,_) {
                            if (tamState.detailPage == DetailPage.CALLS)
                              return SequencerCallsFrame();
                            else if (tamState.detailPage == DetailPage.ABBREVIATIONS)
                              return AbbreviationsFrame();
                            else if (tamState.detailPage == DetailPage.SETTINGS)
                              return SequencerSettingsFrame();
                            else
                              return WebFrame('info/sequencer.html');
                          }
                      )),
                    )
                  ],
                );}
            ),
      ),
    );
  }

}
