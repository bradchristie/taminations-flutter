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
import 'package:flutter/services.dart';
import 'package:provider/provider.dart' as PP;
import 'package:taminations/button.dart';
import 'package:taminations/dancer.dart';
import 'package:taminations/request.dart';
import 'package:xml/xml.dart';

import '../dance_animation_painter.dart';
import '../level_data.dart';
import '../main.dart';
import '../math/vector.dart';
import '../settings.dart';
import '../tam_utils.dart';
import '../title_bar.dart';

class PracticePage extends FM.StatefulWidget {

  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends FM.State<PracticePage> {

  LevelData levelDatum;
  Future<XmlDocument> tamdoc;
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
    var router = FM.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentPath;
    levelDatum = LevelData.find(path.level);
    _reset();

    //  Set up painter
    painter = DanceAnimationPainter();
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
      painter.setAnimation(randomTam,Gender.BOY).whenComplete(() {
        painter.doPlay();
      });
      return randomTam;
    });
  }

  @override
  FM.Widget build(FM.BuildContext context) {

    return PP.ChangeNotifierProvider.value(
      value: painter,
      child: FM.Scaffold(
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
      ),
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

  var animationFinished = false;
  var score = 0;
  var maxScore = 0;
  var congrats = "Poor";

  void _reset() {
    score = 0;
    animationFinished = false;
  }

  @override
  FM.Widget build(FM.BuildContext context) {
    return PP.Consumer<DanceAnimationPainter>(
      builder: (context,painter,child) {
        return PP.Consumer<Settings>(
            builder: (context, settings, child) {
              painter.setGridVisibility(true);
              painter.setSpeed(settings.practiceSpeed);
              return FM.Listener(
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
                child: FM.Stack(
                  children: [
                    FM.CustomPaint(
                      painter: painter,
                      child: FM.Center(), // so CustomPaint gets sized correctly
                    ),
                    if (painter.isFinished) FM.Positioned(
                        top: 100.0,
                        left: 20.0,
                        child: FM.Column(
                          children: [
                            _AnimationCompleteText("Animation Complete"),
                            _AnimationCompleteText("Your Score"),
                            _AnimationCompleteText("$score / $maxScore"),
                            _AnimationCompleteText(congrats),
                            FM.Row(
                              children: [
                                Button("Repeat", onPressed: () {
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
    );
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
