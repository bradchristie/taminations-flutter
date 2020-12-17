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

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart';
import 'package:provider/provider.dart' as pp;
import 'package:xml/xml.dart';

import '../button.dart';
import '../dance_animation_painter.dart';
import '../dancer.dart';
import '../level_data.dart';
import '../main.dart';
import '../math/vector.dart';
import '../settings.dart';
import '../tam_utils.dart';
import '../title_bar.dart';

class PracticePage extends fm.StatefulWidget {

  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends fm.State<PracticePage> {

  LevelData levelDatum;
  Future<XmlElement> tam;
  int randomAnim;
  String randomLink;
  //  painter is where all the drawing and animation is done
  DanceAnimationPainter painter;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    var router = fm.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentConfiguration;
    levelDatum = LevelData.find(path.level);
    nextAnimation();

    //  Set up painter
    painter = DanceAnimationPainter();
  }

  void nextAnimation() {
    //  Choose a random call from the selected level
    var levelCalls = TamUtils.calldata.where((element) =>
        levelDatum.selector(element.link)).toList();
    var randomCall = levelCalls[Random().nextInt(levelCalls.length)];

    //  Load that call and choose a random animation
    randomLink = randomCall.link;
    tam = TamUtils.getXMLAsset(randomLink).then((doc) {
      var tams = TamUtils.tamList(doc).where((element) =>
      element.name.toString() == 'tam').toList();
      randomAnim = Random().nextInt(tams.length);
      var randomTam = tams[randomAnim];
      painter.setAnimation(randomTam,Gender.BOY).whenComplete(() {
        painter.doPlay();
      });
      return randomTam;
    });
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.ChangeNotifierProvider.value(
      value: painter,
      child: pp.ChangeNotifierProvider<TitleModel>(
        create: (_) => TitleModel(),
        child: pp.Consumer<TitleModel>(
          builder: (context,titleModel,_) {
            return fm.Scaffold(
              appBar: fm.PreferredSize(
                  preferredSize: fm.Size.fromHeight(56.0),
                  child: fm.FutureBuilder(
                      future: tam,
                      builder:  (fm.BuildContext context,
                          fm.AsyncSnapshot<XmlElement> snapshot) {
                        if (snapshot.hasData) {
                          titleModel.title = snapshot.data.getAttribute('title');
                          titleModel.level = levelDatum.name;
                          return TitleBar();
                        }
                        else
                          return TitleBar();
                      }
                  )
              ),
              body: fm.FutureBuilder(
                    key: fm.ValueKey('$randomLink $randomAnim'),
                    future: tam,
                    builder:  (fm.BuildContext context,
                        fm.AsyncSnapshot<XmlElement> snapshot) {
                      if (snapshot.hasData)
                        return PracticeFrame();
                      else
                        return fm.Container();
                    }),
          );},
        ),
      ),
    );
  }
}

class PracticeFrame extends fm.StatefulWidget {
  PracticeFrame();
  @override
  _PracticeFrameState createState() => _PracticeFrameState();
}

class _PracticeFrameState extends fm.State<PracticeFrame>
    with fm.SingleTickerProviderStateMixin {

  var animationFinished = false;
  var score = 0;
  var maxScore = 0;
  String congrats(double fraction) =>
      fraction >= 0.9 ? 'Excellent!'
          : fraction >= 0.7 ? 'Very Good!' : 'Poor';

  void _reset() {
    score = 0;
    animationFinished = false;
    pp.Provider.of<DanceAnimationPainter>(context,listen: false).doPlay();
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<DanceAnimationPainter>(
      builder: (context,painter,child) {
        return pp.Consumer<Settings>(
            builder: (context, settings, child) {
              painter.setGridVisibility(true);
              painter.setSpeed(settings.practiceSpeed);
              return fm.Listener(
                onPointerDown: (event) {
                  painter.practiceDancer.touchDown(
                      event.pointer,
                      painter.mouse2dance(event.position.v),
                      isMouse: event.kind == PointerDeviceKind.mouse
                  );
                },
                onPointerUp: (event) {
                  painter.practiceDancer.touchUp(
                      event.pointer,
                      painter.mouse2dance(event.position.v),
                      isMouse: event.kind == PointerDeviceKind.mouse
                  );
                },
                onPointerMove: (event) {
                  painter.practiceDancer.touchMove(
                      event.pointer,
                      painter.mouse2dance(event.position.v)
                  );
                },
                child: fm.Stack(
                  children: [
                    fm.CustomPaint(
                      painter: painter,
                      child: fm.Center(), // so CustomPaint gets sized correctly
                    ),
                    if (painter.isFinished) fm.Positioned(
                        top: 100.0,
                        left: 20.0,
                        child: fm.Column(
                          children: [
                            _AnimationCompleteText('Animation Complete'),
                            _AnimationCompleteText('Your Score'),
                            _AnimationCompleteText('${painter.practiceScore.ceil()} / ${(painter.movingBeats*10).ceil()}'),
                            _AnimationCompleteText(
                                congrats(painter.practiceScore/(painter.movingBeats*10))
                            ),
                            fm.Row(
                              children: [
                                Button('Repeat', onPressed: () {
                                  setState(() {
                                    _reset();
                                  });
                                }),
                                Button('Continue', onPressed: () {

                                }),
                                Button('Return', onPressed: () {
                                  fm.Navigator.maybePop(context);
                                  fm.Router.of(context).routerDelegate.popRoute();
                                })
                              ],
                            ),
                            Button('Definition')  // TODO
                          ],
                        )
                    )
                  ],
                ),
              );
            }
        );
      }
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
