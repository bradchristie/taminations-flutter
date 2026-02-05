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
import 'package:taminations/animated_call.dart';
import 'package:taminations/moves.dart';

import '../common_flutter.dart';
import '../dance_model.dart';
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

  static final calls = [
    AnimatedCall('Couples Circulate',
        formation:Formation('', dancers:[
          Dancer.fromData(gender:Gender.BOY,x:-2,y:3,angle:0),
          Dancer.fromData(gender:Gender.GIRL,x:-2,y:1,angle:0),
          Dancer.fromData(gender:Gender.BOY,x:-2,y:-1,angle:180),
          Dancer.fromData(gender:Gender.GIRL,x:-2,y:-3,angle:180)]),
        paths: [
          Forward_4.changehands(Hands.RIGHT),
          Forward_4.changehands(Hands.LEFT),
          RunRight.changeBeats(4.0).changehands(Hands.LEFT),
          RunRight.changeBeats(4.0).changehands(Hands.RIGHT).scale(3.0, 3.0)
        ]),
    AnimatedCall('Partner Trade',
        formation: Formation('Box RH'),
        paths:[
          SwingRight,
          SwingRight
        ]),
    AnimatedCall('As Couples Walk and Dodge',
        formation: Formation('Two-Faced Lines LH'),
        paths: [
          DodgeLeft.changeBeats(4.0).changehands(Hands.GRIPLEFT).scale(2, 2),
          DodgeLeft.changeBeats(4.0).changehands(Hands.GRIPRIGHT).scale(2, 2),
          Forward_4.changehands(Hands.RIGHT),
          Forward_4.changehands(Hands.LEFT)
        ]),
    AnimatedCall('U-Turn Left',
        formation: Formation('Facing Couples'),
        paths: [
          UmTurnLeft,
          UmTurnLeft
        ])
    ];

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
  void nextDialog(fm.BuildContext context, DanceModel danceModel) {
    final hints = TamUtils.isTouchDevice ? touchHints : mouseHints;
    final fingers = [
      (Settings.primaryControl=='Left Finger') ? 'Left' : 'Right',
      (Settings.primaryControl=='Left Finger') ? 'Right' : 'Left',
    ];
    final hint = hints[lessonNumber]
        .replaceAll('%1', fingers[0])
        .replaceAll('%2', fingers[1]);
    if (showNextDialog) {
      showNextDialog = false;
      later(() {
        fm.showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return fm.AlertDialog(
                title: fm.Text('Tutorial ${lessonNumber + 1}'),
                content: fm.Text(hint,style: fm.TextStyle(fontSize: 20)),
                actions: [
                  fm.TextButton(
                      onPressed: () {
                    fm.Navigator.of(context).pop();
                    danceModel.doPlay();
                  },
                      child: fm.Text('Continue')),
                ],
              );
            }
        );
      });
    }
  }

  @override
  Future<bool> firstAnimation(fm.BuildContext context, DanceModel danceModel) async {
    danceModel.setAnimatedCall(calls[lessonNumber],
        practiceGender: Settings.practiceGender=='Boy' ? Gender.BOY : Gender.GIRL,
        practiceIsRandom: false);
    return true;
  }

  @override
  Future<bool> nextAnimation(fm.BuildContext context, DanceModel danceModel) async {
    lessonNumber += 1;
    showNextDialog = true;
    await firstAnimation(context, danceModel);
    return true;
  }

}
