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
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'tam_utils.dart';
import 'color.dart';


class TitleBar extends FM.StatelessWidget {

  final String title;
  final String level;
  final bool canShare;

  TitleBar({
    this.title="Taminations",
    this.level="",
    this.canShare=false});

  @override
  FM.Widget build(FM.BuildContext context) {
    //  See if we have audio for this title
    var audioAsset = "";
    TamUtils.calldata.where((item) => item.title == title).forEach((call) {
      if (call.audio!= null) {
        audioAsset = call.audio;
      }
    });
    //  Don't overlap notification area at top
    return FM.SafeArea(
        bottom: false,
        top: true,
        //  Container with gradient for background
        child: FM.Container(
            decoration: FM.BoxDecoration(
                gradient: FM.LinearGradient(
                    begin: FM.Alignment.topCenter,
                    end: FM.Alignment.bottomCenter,
                    colors: [Color(0xff00c000), Color(0xff004000)]
                )
            ),

            //  Row of items in the title bar
            child: FM.Row(children: [

              //  Back button
              FM.BackButton(color: FM.Colors.white,
                  onPressed: () {
                    FM.Navigator.maybePop(context);
                    FM.Router
                        .of(context)
                        .routerDelegate
                        .popRoute();
                  }),

              //  Title, gets an Expanded so it uses all excess space
              FM.Expanded(
                  child: FM.Center(
                      child: AutoSizeText(title,
                          style: FM.TextStyle(
                              color: Color.WHITE,
                              fontWeight: FM.FontWeight.bold,
                              fontSize: 30,
                              shadows: <FM.Shadow>[
                                FM.Shadow(offset: FM.Offset(1.0, 1.0))
                              ]
                          )
                      )
                  )
              ),

              //  Share button
              if (canShare) FM.TextButton(child: FM.Icon(
                  FM.Icons.share,
                  color: Color.WHITE,
                  size: 32
              ),
                  onPressed: () => {}),

              //  Audio button to say the title
              if (audioAsset.isNotEmpty) FM.TextButton(child: FM.Icon(
                  FM.Icons.volume_up_sharp,
                  color: Color.WHITE,
                  size: 32
              ),
                onPressed: () {
                  AssetsAudioPlayer.playAndForget(
                    Audio("assets/$audioAsset")
                  );
               },
              ),

              //  Level text (button?)
              if (level.isNotEmpty)
                FM.TextButton(child: FM.Text(level,
                    style: FM.TextStyle(color: Color.WHITE, fontSize: 20)),
                    onPressed: () => {})
            ])
        )
    );
  }
}
