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
import 'page.dart';
import 'practice_page.dart';

class TutorialPage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(
        child: PracticeFrame(TutorialModel())
    );
  }

}

class TutorialModel extends PracticeModel {

  static final touchHints = [
    'Use your %1 finger on the %1 side of the screen. '
        'Do not put your finger on the dancer. '
        'Slide your finger forward to move the dancer forward. '
        'Try to keep pace with the adjacent dancer.',

    'Use your %1 finger to follow the turning path. '
        'Try to keep pace with the adjacent dancer.',

    'Normally your dancer faces the direction you are moving. '
        'But you can use your %2 finger to hold or change the facing direction. '
        'Press and hold your %2 finger on the %2 side '
        'of the screen.  This will keep your dancer facing forward. '
        'Then use your %1 finger on the %1 side '
        'of the screen to slide your dancer horizontally.',

    'Use your %2 finger to turn in place. '
        "To U-Turn Left, make a 'C' movement with your %2 finger."
  ];

  static final mouseHints = [
    'Use your mouse to move the dancer forward',
    'Now use your mouse to follow a turning path',
    'Normally your dancer turns to face the direction you are moving. '
        'Hold down the Shift key to keep your dancer from turning.',
    'Hold the Control key to turn your dancer in place without moving'
  ];

  var lessonNumber = 0;
  var showNextDialog = true;


  @override
  bool canContinue(double fractionalScore) {
    return lessonNumber < 3 && fractionalScore >= 0.7;
  }

  @override
  void nextDialog(fm.BuildContext context, DanceAnimationPainter painter) {
    final hints = TamUtils.isTouchDevice() ? touchHints : mouseHints;
    final settings = pp.Provider.of<Settings>(context,listen: false);
    final fingers = [
      (settings.primaryControl=='Left Finger') ? 'Left' : 'Right',
      (settings.primaryControl=='Left Finger') ? 'Right' : 'Left',
    ];
    final hint = hints[lessonNumber]
        .replaceAll('%1', fingers[0])
        .replaceAll('%2', fingers[1]);
    if (showNextDialog) {
      showNextDialog = false;
      fm.WidgetsBinding.instance!.addPostFrameCallback((_) {
        fm.showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return fm.AlertDialog(
                title: fm.Text('Tutorial ${lessonNumber + 1}'),
                content: fm.Text(hint,style: fm.TextStyle(fontSize: 20)),
                actions: [
                  fm.TextButton(
                      child: fm.Text('Continue'), onPressed: () {
                    fm.Navigator.of(context).pop();
                    painter.doPlay();
                  }),
                ],
              );
            }
        );
      });
    }
  }

  @override
  Future<bool> firstAnimation(fm.BuildContext context, DanceAnimationPainter painter) async {
    final settings = pp.Provider.of<Settings>(context,listen: false);
    final doc = await TamUtils.getXMLAsset('src/tutorial');
    final tams = TamUtils.tamList(doc);
    await painter.setAnimation(
        tams[lessonNumber],
        practiceGender: settings.practiceGender=='Boy' ? Gender.BOY : Gender.GIRL,
        practiceIsRandom: false
    );
    return true;
  }

  @override
  Future<bool> nextAnimation(fm.BuildContext context, DanceAnimationPainter painter) async {
    lessonNumber += 1;
    showNextDialog = true;
    await firstAnimation(context, painter);
    return true;
  }

}
