/*

  Taminations Square Dance Animations
  Copyright (C) 2023 Brad Christie

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

import 'package:just_audio/just_audio.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;

import 'common.dart';

class TitleModel extends fm.ChangeNotifier {
  String _title = 'Taminations';
  String _level = '';

  String get title => _title;
  set title(String value) {
    final newTitle = value.replaceAll(r'\s*\(.*?\)\s*'.r, ' ');
    if (newTitle != _title) {
      _title = newTitle;
      later(() => notifyListeners());
    }
  }
  String get level => _level;
  set level(String value) {
    if (value != _level) {
      _level = value;
      later(() => notifyListeners());
    }
  }

}

class TitleBar extends fm.StatelessWidget {

  final bool canShare = false;  //  TODO we can alway share?

  @override
  fm.Widget build(fm.BuildContext context) {
    //  Don't overlap notification area at top
    return fm.SafeArea(
        bottom: false,
        top: true,
        //  Container with gradient for background
        child: fm.Container(
            decoration: fm.BoxDecoration(
                gradient: fm.LinearGradient(
                    begin: fm.Alignment.topCenter,
                    end: fm.Alignment.bottomCenter,
                    colors: [Color(0xff00c000), Color(0xff004000)]
                )
            ),

            //  Row of items in the title bar
            child: pp.Consumer<TitleModel>(
              builder: (context,titleModel,_) {
                //  See if we have audio for this title
                var audioAsset = '';
                TamUtils.calldata.where((item) => item.title == titleModel.title).forEach((call) {
                  if (call.audio.isNotBlank)
                    audioAsset = call.audio;
                });

                return fm.Row(children: [

                //  Back button
                fm.BackButton(color: fm.Colors.white,
                    onPressed: () {
                      fm.Navigator.maybePop(context);
                      fm.Router
                          .of(context)
                          .routerDelegate
                          .popRoute();
                    }),

                //  Title, gets an Expanded so it uses all excess space
                fm.Expanded(
                    child: fm.Center(
                        child: fm.SelectionArea(
                          child: AutoSizeText(titleModel.title,
                              style: fm.TextStyle(
                                  color: Color.WHITE,
                                  fontWeight: fm.FontWeight.bold,
                                  fontSize: 30,
                                  shadows: <fm.Shadow>[
                                    fm.Shadow(offset: fm.Offset(1.0, 1.0))
                                  ]
                              )
                          ),
                        )
                    )
                ),

                //  Share button
                if (canShare) fm.TextButton(onPressed: () => {}, child: fm.Icon(
                    fm.Icons.share,
                    color: Color.WHITE,
                    size: 32
                )),

                //  Audio button to say the title
                if (audioAsset.isNotEmpty && TamUtils.canSpeak) fm.TextButton(onPressed: () {
                    playCall('assets/$audioAsset');
                 },child: fm.Icon(
                    fm.Icons.volume_up_sharp,
                    color: Color.WHITE,
                    size: 32
                ),
                ),

                //  Level text (button?)
                if (titleModel.level.isNotEmpty)
                  fm.TextButton(onPressed: () => {}, child: fm.Text(titleModel.level,
                      style: fm.TextStyle(color: Color.WHITE, fontSize: 20)))
              ]);},
            )
        )
    );
  }

  void playCall(String assetName) async {
    final player = AudioPlayer();
    await player.setAsset(assetName);
    await player.play();
    await player.dispose();
  }

}
