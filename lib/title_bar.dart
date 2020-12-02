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
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'tam_utils.dart';
import 'color.dart';


class TitleBar extends fm.StatelessWidget {

  final String title;
  final String level;
  final bool canShare;

  TitleBar({
    this.title='Taminations',
    this.level='',
    this.canShare=false});

  @override
  fm.Widget build(fm.BuildContext context) {
    //  See if we have audio for this title
    var audioAsset = '';
    TamUtils.calldata.where((item) => item.title == title).forEach((call) {
      if (call.audio!= null) {
        audioAsset = call.audio;
      }
    });
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
            child: fm.Row(children: [

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
                      child: AutoSizeText(title,
                          style: fm.TextStyle(
                              color: Color.WHITE,
                              fontWeight: fm.FontWeight.bold,
                              fontSize: 30,
                              shadows: <fm.Shadow>[
                                fm.Shadow(offset: fm.Offset(1.0, 1.0))
                              ]
                          )
                      )
                  )
              ),

              //  Share button
              if (canShare) fm.TextButton(child: fm.Icon(
                  fm.Icons.share,
                  color: Color.WHITE,
                  size: 32
              ),
                  onPressed: () => {}),

              //  Audio button to say the title
              if (audioAsset.isNotEmpty) fm.TextButton(child: fm.Icon(
                  fm.Icons.volume_up_sharp,
                  color: Color.WHITE,
                  size: 32
              ),
                onPressed: () {
                  AssetsAudioPlayer.playAndForget(
                    Audio('assets/$audioAsset')
                  );
               },
              ),

              //  Level text (button?)
              if (level.isNotEmpty)
                fm.TextButton(child: fm.Text(level,
                    style: fm.TextStyle(color: Color.WHITE, fontSize: 20)),
                    onPressed: () => {})
            ])
        )
    );
  }
}
