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

import 'dart:ui';

import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart';
import 'package:provider/provider.dart' as pp;

import '../animated_call.dart';
import '../beat_notifier.dart';
import '../call_index.dart';
import '../common_flutter.dart';
import '../dance_model.dart';
import 'page.dart';


class PracticePage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(
        child: PracticeFrame(PracticeModel())
    );
  }

}

class PracticeModel {

  void nextDialog(fm.BuildContext context, DanceModel danceModel) { }

  Future<bool> firstAnimation(fm.BuildContext context, DanceModel danceModel) async =>
    nextAnimation(context, danceModel);

  List<List<AnimatedCall>> _callsForLevel(LevelData level) {
    var calls = callIndex.where((item) => item.level == level.dir);
    return calls.map((e) => e.calls).toList();
  }

  Future<bool> nextAnimation(fm.BuildContext context, DanceModel danceModel) async {
    //  Choose a random call from the selected level
    final appState = pp.Provider.of<TamState>(context,listen: false);
    final titleModel = pp.Provider.of<TitleModel>(context,listen: false);
    final settings = pp.Provider.of<Settings>(context,listen: false);
    final levelDatum = LevelData.find(appState.level!)!;
    final levelCalls = _callsForLevel(levelDatum);
    //  Load that call and choose a random animation
    final randomCall = levelCalls[Random().nextInt(levelCalls.length)];
    final randomAnim = randomCall[Random().nextInt(randomCall.length)];

    titleModel.title = randomAnim.title;
    titleModel.level = levelDatum.name;
    danceModel.setAnimatedCall(randomAnim,
        practiceGender: settings.practiceGender=='Boy' ? Gender.BOY : Gender.GIRL);
    danceModel.doPlay();
    return true;
  }

  bool canContinue(double fractionalScore) => true;

}

class PracticeFrame extends fm.StatefulWidget {
  final PracticeModel practiceModel;
  PracticeFrame(this.practiceModel);
  @override
  _PracticeFrameState createState() => _PracticeFrameState();
}

class _PracticeFrameState extends fm.State<PracticeFrame>
    with fm.SingleTickerProviderStateMixin {

  //  painter is where all the drawing and animation is done
  late DanceModel danceModel;
  var animationFinished = false;
  var score = 0;
  var maxScore = 0;
  String congrats(double fraction) =>
      fraction >= 0.9 ? 'Excellent!'
          : fraction >= 0.7 ? 'Very Good!' : 'Poor';
  Future<bool>? waitForAnimation;
  final _focusNode = fm.FocusNode();

  // Focus nodes need to be disposed.
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _reset() {
    score = 0;
    animationFinished = false;
    danceModel.doPlay();
  }

  @override
  void initState() {
    super.initState();
    danceModel = DanceModel(context);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    waitForAnimation = widget.practiceModel.firstAnimation(context,danceModel);
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    final dancePainter = DancePainter(danceModel);
    _focusNode.requestFocus();
    return fm.RawKeyboardListener(
      onKey: (event) {
        if (event.physicalKey == PhysicalKeyboardKey.shiftLeft ||
            event.physicalKey == PhysicalKeyboardKey.shiftRight) {
          if (event is RawKeyDownEvent)
            danceModel.practiceDancer!.shiftDown = true;
          else if (event is RawKeyUpEvent)
            danceModel.practiceDancer!.shiftDown = false;
        }
        if (event.physicalKey == PhysicalKeyboardKey.controlLeft ||
            event.physicalKey == PhysicalKeyboardKey.controlRight) {
          if (event is RawKeyDownEvent)
            danceModel.practiceDancer!.ctlDown = true;
          else if (event is RawKeyUpEvent)
            danceModel.practiceDancer!.ctlDown = false;
        }

      },
      focusNode: _focusNode,
      child: fm.FutureBuilder(
        future: waitForAnimation,
        builder: (context,snapshot) {
          if (!snapshot.hasData)
            return fm.Container();
          widget.practiceModel.nextDialog(context, danceModel);
          return pp.Consumer2<TitleModel, Settings>(
              builder: (context, titleModel, settings, _) {
                titleModel.title = danceModel.title;
                danceModel.gridVisibility = true;
                danceModel.looping = false;
                danceModel.setSpeed(settings.practiceSpeed);
                danceModel.practiceDancer!.primaryIsLeft =
                    settings.primaryControl == 'Left Finger';
                danceModel.practiceDancer!.practiceMousePressed =
                    settings.mouseControl.contains('Press');
                return fm.Listener(
                    onPointerDown: (event) {
                      danceModel.practiceDancer!.touchDown(
                          event.pointer,
                          dancePainter.mouse2dance(event.position.v),
                          isMouse: event.kind == PointerDeviceKind.mouse
                      );
                    },
                    onPointerUp: (event) {
                      danceModel.practiceDancer!.touchUp(
                          event.pointer,
                          dancePainter.mouse2dance(event.position.v),
                          isMouse: event.kind == PointerDeviceKind.mouse
                      );
                    },
                    onPointerHover: (event) {
                      danceModel.practiceDancer!.touchMove(
                          event.pointer,
                          dancePainter.mouse2dance(event.position.v)
                      );
                    },
                    onPointerMove: (event) {
                      danceModel.practiceDancer!.touchMove(
                          event.pointer,
                          dancePainter.mouse2dance(event.position.v)
                      );
                    },
                  child: pp.Consumer<BeatNotifier>(
                    builder: (context, beater, _) {
                      return fm.Stack(
                        children: [
                          fm.CustomPaint(
                            painter: dancePainter,
                            child: fm
                                .Center(), // so CustomPaint gets sized correctly
                          ),
                          if (beater.beat < 0.2)
                            fm.Positioned(
                                bottom: 10,
                                left: 300,
                                child: fm.Text('${beater.beat.floor().abs()}',
                                    style: fm.TextStyle(
                                        color: Color.GRAY, fontSize: 180))
                            ),
                          if (beater.isFinished) fm.Positioned(
                              top: 20.0,
                              left: 20.0,
                              child: fm.Column(
                                children: [
                                  _AnimationCompleteText('Animation Complete'),
                                  _AnimationCompleteText('Your Score'),
                                  _AnimationCompleteText(
                                      '${danceModel.practiceScore
                                          .ceil()} / ${(danceModel
                                          .movingBeats * 10).ceil()}'),
                                  _AnimationCompleteText(
                                      congrats(danceModel.practiceScore /
                                          (danceModel.movingBeats * 10))
                                  ),
                                  fm.Row(
                                    children: [
                                      Button('Repeat', onPressed: () {
                                        setState(() {
                                          _reset();
                                        });
                                      }),
                                      if (widget.practiceModel.canContinue(
                                          danceModel.practiceScore /
                                              (danceModel.movingBeats * 10)))
                                        Button('Continue', onPressed: () {
                                          setState(() {
                                            waitForAnimation =
                                                widget.practiceModel
                                                    .nextAnimation(
                                                    context, danceModel);
                                          });
                                        }),
                                      Button('Return', onPressed: () {
                                        //fm.Navigator.maybePop(context);
                                        fm.Router
                                            .of(context)
                                            .routerDelegate
                                            .popRoute();
                                      })
                                    ],
                                  ),
                                  // Button('Definition') // TODO
                                ],
                              )
                          )
                        ],
                      );
                    })
                );
              }
          );
        }
      ),
    );
  }


}

class _AnimationCompleteText extends fm.StatelessWidget {

  final String text;
  _AnimationCompleteText(this.text);

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Text(text,style: fm.TextStyle(fontSize: 36));
  }
}
