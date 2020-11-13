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

import 'package:flutter/material.dart' as FM;
import 'package:provider/provider.dart' as PP;
import 'package:flutter/services.dart';
import 'package:taminations/button.dart';
import 'package:xml/xml.dart';

import '../dance_animation_painter.dart';
import '../level_data.dart';
import '../main.dart';
import '../tam_utils.dart';
import '../title_bar.dart';
import '../settings.dart';
import '../extensions.dart';

class PracticePage extends FM.StatefulWidget {

  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends FM.State<PracticePage> {

  LevelDatum levelDatum;
  Future<XmlDocument> tamdoc;
  Future<XmlElement> tam;

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

    //  Choose a random call from the selected level
    var levelCalls = TamUtils.calldata.where((element) =>
        levelDatum.selector(element.link)).toList();
    print("Can choose from ${levelCalls.length} calls.");
    var randomCall = levelCalls[Random().nextInt(levelCalls.length)];
    print("Will try ${randomCall.title}");

    //  Load that call and choose a random animation
    tam = TamUtils.getXMLAsset(randomCall.link).then((doc) {
      var tams = TamUtils.tamList(doc).where((element) =>
      element.name.toString() == "tam").toList();
      print("Found ${tams.length} animations");
      var randomTam = tams[Random().nextInt(tams.length)];
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
        body: PracticeFrame()
    );
  }
}

class PracticeFrame extends FM.StatefulWidget {
  @override
  _PracticeFrameState createState() => _PracticeFrameState();
}

class _PracticeFrameState extends FM.State<PracticeFrame>
    with FM.SingleTickerProviderStateMixin {

  //  painter is where all the drawing and animation is done
  DanceAnimationPainter painter;
  //  controller sends ticks to the painter making it compute and draw an animation
  FM.AnimationController controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //  Set up _controller, _painter
    controller = FM.AnimationController.unbounded(duration: Duration(hours: 1),vsync: this);
    painter = DanceAnimationPainter(repaint:controller);
  }

  @override
  FM.Widget build(FM.BuildContext context) {
    return PP.Consumer<Settings>(
        builder: (context, settings, child) {
          painter.setGridVisibility(true);
          painter.setSpeed(settings.practiceSpeed);
          return FM.Stack(
            children: [
              FM.CustomPaint(
                painter: painter,
                child: FM.Center(), // so CustomPaint gets sized correctly
              ),
              FM.Positioned(
                top: 100.0,
                left: 20.0,
                child:FM.Column(
                  children: [
                    _AnimationCompleteText("Animation Complete"),
                    _AnimationCompleteText("Your Score"),
                    _AnimationCompleteText("0 / 0"),
                    _AnimationCompleteText("Poor"),
                    FM.Row(
                      children: [
                        Button("Repeat"),
                        Button("Continue"),
                        Button("Return")
                      ],
                    ),
                    Button("Definition")
                  ],
                )
              )
            ],
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
