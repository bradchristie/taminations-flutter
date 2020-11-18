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

import 'package:flutter/material.dart' as FM;
import 'package:provider/provider.dart' as PP;
import 'package:flutter/services.dart';
import 'package:taminations/button.dart';
import 'package:taminations/dancer.dart';
import 'package:taminations/practice_dancer.dart';
import 'package:taminations/request.dart';
import 'package:xml/xml.dart';

import '../dance_animation_painter.dart';
import '../level_data.dart';
import '../main.dart';
import '../tam_utils.dart';
import '../title_bar.dart';
import '../settings.dart';
import '../math/vector.dart';
import '../extensions.dart';

class PracticePage extends FM.StatefulWidget {

  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends FM.State<PracticePage> {

  LevelDatum levelDatum;
  Future<XmlDocument> tamdoc;
  Future<XmlElement> tam;
  int randomAnim;
  String randomLink;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    var router = FM.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentPath;
    levelDatum = LevelData.find(path.level);
    _reset();
  }

  void _reset() {
    //  Choose a random call from the selected level
    var levelCalls = TamUtils.calldata.where((element) =>
        levelDatum.selector(element.link)).toList();
    print("Can choose from ${levelCalls.length} calls.");
    var randomCall = levelCalls[Random().nextInt(levelCalls.length)];
    print("Will try ${randomCall.title}");

    //  Load that call and choose a random animation
    randomLink = randomCall.link;
    tam = TamUtils.getXMLAsset(randomLink).then((doc) {
      var tams = TamUtils.tamList(doc).where((element) =>
      element.name.toString() == "tam").toList();
      print("Found ${tams.length} animations");
      randomAnim = Random().nextInt(tams.length);
      var randomTam = tams[randomAnim];
      return randomTam;
    });
  }

  @override
  FM.Widget build(FM.BuildContext context) {

    return FM.Scaffold(
        appBar: FM.PreferredSize(
            preferredSize: FM.Size.fromHeight(56.0),
            child: FM.FutureBuilder(
                future: tam,
                builder:  (FM.BuildContext context,
                    FM.AsyncSnapshot<XmlElement> snapshot) {
                  if (snapshot.hasData) {
                    return TitleBar(
                      title: snapshot.data.getAttribute("title"),
                      level: levelDatum.name,
                    );
                  }
                  else
                    return TitleBar(title:" ");
                }
            )
        ),
        body:  RequestHandler(
          handler: (request) {
            if (request.action == Action.BUTTON_PRESS) {
              if (request("button") == "Continue") {
                setState(() {
                  _reset();
                });
              }
            }
          },
          child: FM.FutureBuilder(
              key: FM.ValueKey("$randomLink $randomAnim"),
              future: tam,
              builder:  (FM.BuildContext context,
                  FM.AsyncSnapshot<XmlElement> snapshot) {
                if (snapshot.hasData)
                  return PracticeFrame(snapshot.data);
                else
                  return FM.Container();
              }),
        )
    );
  }
}

class PracticeFrame extends FM.StatefulWidget {
  final XmlElement tam;
  PracticeFrame(this.tam);
  @override
  _PracticeFrameState createState() => _PracticeFrameState();
}

class _PracticeFrameState extends FM.State<PracticeFrame>
    with FM.SingleTickerProviderStateMixin {

  //  painter is where all the drawing and animation is done
  DanceAnimationPainter painter;
  //  controller sends ticks to the painter making it compute and draw an animation
  FM.AnimationController controller;
  PracticeDancer dancer;
  var animationFinished = false;
  var score = 0;
  var maxScore = 0;
  var congrats = "Poor";

  void _reset() {
    score = 0;
    animationFinished = false;
    painter.doPlay(() {
      controller.stop();
      setState(() {
        animationFinished = true;
        score = painter.practiceScore.ceil();
        maxScore = (painter.movingBeats * 10).i;
        if (score / maxScore >= 0.9)
          congrats = "Excellent!";
        else if (score / maxScore >= 0.7)
          congrats = "Very Good!";
        else
          congrats = "Poor";
      });
    });
    controller.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //  Set up controller, painter
    controller = FM.AnimationController.unbounded(duration: Duration(hours: 1),vsync: this);
    painter = DanceAnimationPainter(repaint:controller);
    painter.setAnimation(widget.tam,Gender.BOY).whenComplete(() {
      dancer = painter.practiceDancer;
      _reset();
    });
  }

  @override
  FM.Widget build(FM.BuildContext context) {
    return PP.Consumer<Settings>(
        builder: (context, settings, child) {
          painter.setGridVisibility(true);
          painter.setSpeed(settings.practiceSpeed);
          return FM.Listener(
            onPointerDown: (event) {
              dancer.touchDown(
                  event.pointer,
                  painter.mouse2dance(event.position.v),
                  isMouse: event.kind == PointerDeviceKind.mouse
              );
            },
            onPointerUp: (event) {
              dancer.touchUp(
                  event.pointer,
                  painter.mouse2dance(event.position.v),
                  isMouse: event.kind == PointerDeviceKind.mouse
              );
            },
            onPointerMove: (event) {
              dancer.touchMove(
                  event.pointer,
                  painter.mouse2dance(event.position.v)
              );
            },
            child: FM.Stack(
              children: [
                FM.CustomPaint(
                  painter: painter,
                  child: FM.Center(), // so CustomPaint gets sized correctly
                ),
                if (animationFinished) FM.Positioned(
                  top: 100.0,
                  left: 20.0,
                  child:FM.Column(
                    children: [
                      _AnimationCompleteText("Animation Complete"),
                      _AnimationCompleteText("Your Score"),
                      _AnimationCompleteText("$score / $maxScore"),
                      _AnimationCompleteText(congrats),
                      FM.Row(
                        children: [
                          Button("Repeat",onPressed:() {
                            setState(() {
                              _reset();
                            });
                          }),
                          Button("Continue"),
                          Button("Return", onPressed: () {
                            FM.Navigator.maybePop(context);
                            FM.Router
                                .of(context)
                                .routerDelegate
                                .popRoute();
                          })
                        ],
                      ),
                      Button("Definition")
                    ],
                  )
                )
              ],
            ),
          );
        }
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}

class _AnimationCompleteText extends FM.StatelessWidget {

  final String text;
  _AnimationCompleteText(this.text);

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Text(text,style: FM.TextStyle(fontSize: 36));
  }
}
