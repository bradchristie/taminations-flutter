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
import '../animation_painter.dart';
import '../main.dart';
import '../tam_utils.dart';
import '../button.dart';
import '../settings.dart';
import '../color.dart';
import '../extensions.dart';
import '../request.dart';
import '../title_bar.dart';
import '../level_data.dart';
import '../math/vector.dart';
import '../dancer.dart';

class AnimationPage extends FM.StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends FM.State<AnimationPage> {

  String link;
  int animnum;
  String name;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var router = FM.Router.of(context).routerDelegate as TaminationsRouterDelegate;
    var path = router.currentPath;
    link = path.link;
    animnum = path.animnum;
    name = path.name;
  }

  @override
  FM.Widget build(FM.BuildContext context) {
    return  FM.Scaffold(
        appBar: FM.PreferredSize(
            preferredSize: FM.Size.fromHeight(56.0),
            child: TitleBar(title: name, level: LevelData.find(link).name)
        ),
        body: RequestHandler(
            child: AnimationFrame(link,animnum),
            handler: (request) {

        }
        )
    );
  }
}


class AnimationFrame extends FM.StatefulWidget {

  final String link;
  final int animnum;
  AnimationFrame(this.link,this.animnum) : super(key:FM.ValueKey("$link $animnum"));

  @override
  _AnimationFrameState createState() => _AnimationFrameState(link,animnum);
}

class _AnimationFrameState extends FM.State<AnimationFrame>
    with FM.SingleTickerProviderStateMixin {

  String link;
  int animnum;
  //  painter is where all the drawing and animation is done
  AnimationPainter painter;
  //  controller sends ticks to the painter making it compute and draw an animation
  FM.AnimationController controller;
  double currentBeat = -2.0;
  double sliderCurrentValue = 0.0;
  Vector locationTapped;
  Dancer dancerTapped;
  String animationNote = "";

  //  Constructor
  _AnimationFrameState(this.link,this.animnum);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //  Set up _controller, _painter
    controller = FM.AnimationController.unbounded(duration: Duration(hours: 1),vsync: this);
    painter = AnimationPainter(repaint:controller);
    //  Get the requested square dance animation and send it to the _painter
    TamUtils.getXMLAsset(link).then((doc) {
      var tam = TamUtils.tamList(doc)
          .where((it) => !(it["display"] ?? "").startsWith("n"))
          .toList()[max(0,animnum)];
      painter.setAnimation(tam).then( (b) {
        controller.notifyListeners();
      });
      animationNote = "";
      var tamnote = tam.childrenNamed("taminator").firstOrNull;
      if (tamnote != null) {
        animationNote = tamnote.text.trim().replaceAll(r"\s+".r, " ");
      }
    });
    controller.addListener(() {
      setState(() {
        //  Remember the beat, for setting alpha on the notes
        currentBeat = painter.beat;
        //  Set the slider now, totalBeats is now available
        sliderCurrentValue =
            min(100,(painter.beat + painter.leadin) * 100.0 / painter.totalBeats);
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  FM.PopupMenuItem<String> oneItem(String colorName) =>
      FM.PopupMenuItem(
        child:FM.Container(
            padding: FM.EdgeInsets.all(10),
            width: 120,
            decoration: colorName == "default"
                ?  FM.BoxDecoration(color: Color.WHITE)
                : FM.BoxDecoration(color: Color.fromName(colorName), border:FM.Border.all(color:Color.BLACK)),
            child:FM.Text(colorName, style: FM.TextStyle(color: colorName.startsWith("B") ? Color.WHITE : Color.BLACK))
        ),
        value: colorName
      );

  Future<String> _showColorPopup(FM.BuildContext context, String currentColor) {
    Vector screenSize = FM.MediaQuery.of(context).size.v;
    return FM.showMenu<String>(
        context: context,
        position: FM.RelativeRect.fromLTRB(locationTapped.x, locationTapped.y,
          screenSize.x, screenSize.y),
      //  color: Color(0),
        initialValue: currentColor,
        items: [
          oneItem("Black"),
          oneItem("Blue"),
          oneItem("Cyan"),
          oneItem("Gray"),
          oneItem("Green"),
          oneItem("Magenta"),
          oneItem("Orange"),
          oneItem("Red"),
          oneItem("White"),
          oneItem("Yellow"),
          oneItem("default")
        ]
    );
  }

  @override
  FM.Widget build(FM.BuildContext context) {
    //  This sends a tick to the painter, generating a redraw
    //  Necessary to get it to show any changed settings, colors, paths, etc.
    controller.forward();
    return FM.Column(children: [
      //  Dance area with animations
      FM.Expanded(child: PP.Consumer<Settings>(
          builder: (context, settings, child) {

            //  Send current settings to the painter
            painter.setGridVisibility(settings.grid);
            painter.setNumbers(settings.numbers);
            painter.setSpeed(settings.speed);
            painter.setPaths(settings.paths);
            painter.setLoop(settings.loop);
            painter.setPhantoms(settings.phantoms);
            //  Dancer colors - first set values for couples
            for (var i=1; i<=6; i++) {
              painter.setDancerColor(i * 2 - 1, Color.fromName(settings.coupleColor(i)));
              painter.setDancerColor(i * 2, Color.fromName(settings.coupleColor(i)));
            }
            //  Now values set for any individual dancers
            for (var i=1; i<=12; i++) {
              var cname = settings.dancerColor(i);
              if (cname != "default")
                painter.setDancerColor(i, Color.fromName(cname));
            }

            //  Routines to handle pointer events
            var tapDownHandler = (FM.TapDownDetails details) {
              locationTapped = details.globalPosition.v;
              dancerTapped = painter.dancerAt(
                  painter.mouse2dance(details.localPosition.v));
            };
            var longPressHandler = () {
              if (dancerTapped != null) {
                _showColorPopup(
                    context, settings.dancerColor(dancerTapped.number.i))
                    .then((value) {
                  if (value != null)
                    settings.setDancerColor(dancerTapped.number.i, value);
                });
              }
            };

            //  Wrap dance area with widget to detect pointer events
            return FM.GestureDetector(
                onTapDown: tapDownHandler,
                onSecondaryTapDown: tapDownHandler,
                onTap: () {
                  if (dancerTapped != null) {
                      painter.togglePath(dancerTapped);
                  }
                },
                onLongPress: longPressHandler,
                onSecondaryTap: longPressHandler,
                //  Stack to show info on animation
                child: FM.Stack(
                    children: [
                      //  Finally here is the dance area widget
                      FM.CustomPaint(
                        painter: painter,
                        child: FM.Center(), // so CustomPaint gets sized correctly
                      ),
                      //  Note that fades out as animation starts
                      FM.Opacity(
                        opacity: ((-currentBeat)/2.0).coerceIn(0.0, 1.0),
                          child:FM.Container(
                              color: Color.WHITE,
                              child:FM.Text(animationNote,
                                  style:FM.TextStyle(fontSize:20))
                          )),
                      //  Show if Loop or Speed are set other than default
                      FM.Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: FM.Text(
                            settings.speed.replaceFirst("Normal","") +
                                (settings.loop ? " Loop" : ""),
                            style:FM.TextStyle(fontSize:24)
                        )
                      )
                    ])
            );
          })),

      //  Slider to show current animation position
      FM.Slider(
        activeColor: Color.HIGHLIGHT,
        inactiveColor: Color.HIGHLIGHT.veryBright(),
        value: sliderCurrentValue,
        min: 0,
        max: 100,
        onChanged: (double value) {
          setState(() {
            sliderCurrentValue = value;
            painter.beat =
                (value * painter.totalBeats / 100.0) - painter.leadin;
          });
        },
      ),

      //  Painter to show animation start, end, beats, and parts
      FM.CustomPaint(
        painter: _SliderTicsPainter(
          beats: painter.totalBeats,
          parts: painter.partstr,
          isParts: painter.hasParts
        ),
        size: FM.Size.fromHeight(40.0),
      ),

      //  Buttons to control the animation
      FM.Row(
          children: [
            FM.Expanded(
                child: Button("Start",
                    child: FM.Icon(FM.Icons.skip_previous),
                    onPressed: () { })),
            FM.Expanded(
                child:
                Button("Back",
                    child: FM.Icon(FM.Icons.navigate_before),
                    onPressed: () { })),
            FM.Expanded(
              //  Play / Pause button
                child: Button("Play",
                    child: FM.Icon(painter.isRunning
                        ? FM.Icons.pause
                        : FM.Icons.play_arrow),
                    onPressed: () {
                      setState(() {
                        //  If running, turn it off
                        if (painter.isRunning) {
                          painter.doPause();
                          controller.stop();
                        } else {
                          //  Not running - start animation, with callback to
                          //  turn off when finished (if not looping)
                          painter.doPlay(() {
                            setState(() {
                              controller.stop();
                            });
                          });
                          controller.forward();
                        }
                      });
                    }
                )),
            FM.Expanded(
                child: Button("Forward",
                    child: FM.Icon(FM.Icons.navigate_next),
                    onPressed: () { })),
            FM.Expanded(child: Button("End",
                child: FM.Icon(FM.Icons.skip_next),
                onPressed: () { })),
          ]),
      FM.Row(children: [
        FM.Expanded(
          child: Button("Definition"),
        ),
        FM.Expanded(child: Button("Settings"))
      ]),
    ]);
  }
}

class _SliderTicsPainter extends FM.CustomPainter {

  double beats;
  var isParts;
  var isCalls;
  List<double> partValues = [];

  _SliderTicsPainter({
    @FM.required this.beats,
    @FM.required String parts,
    this.isParts=false,
    this.isCalls=false
  }) {
    //  The string of parts is the length of each part except the first,
    //  separated by semi-colons.
    //  Convert these to a list of doubles, of the beat where each part starts.
    if (parts.isNotEmpty) {
      var partsList = parts.split(";");
      var partSum = 0.0;
      for (var i=0; i<partsList.length; i++) {
        var partValue = partsList[i].d;
        partValues.add(partValue + partSum);
        partSum += partValue;
      }
    }
  }

  @override
  void paint(FM.Canvas ctx, FM.Size size) {

    //  There's a lot to do to just draw one item of text
    //  and it has to be repeated for each text item.
    //  Thus this function.
    void drawCenteredTextAt(String text, double x, double y) {
      var span = FM.TextSpan(text: text,
          style:FM.TextStyle(fontSize: size.height / 3.0, color:FM.Colors.white));
      var tp = FM.TextPainter(text: span,
          textDirection: FM.TextDirection.ltr)..layout();
      //  TextSpan center doesn't seem to work, but we can calculate it
      var textOffset = tp.width / 2.0;
      tp.paint(ctx, FM.Offset(x-textOffset,y));
    }

    //  Adjustment for slider ends
    var adjust = 24;
    var myLeft = adjust;
    var myWidth = size.width - adjust*2;

    //  Draw background
    ctx.drawRect(FM.Rect.fromLTWH(0,0,size.width,size.height),
        FM.Paint()..color = Color.TICS);

    //  Draw tic marks
    var p = FM.Paint()
      ..style = FM.PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..color = Color.WHITE;
    for (var i=0; i <= beats; i++) {
      var x = myLeft + myWidth * i / beats;
      ctx.drawLine(FM.Offset(x,0), FM.Offset(x,size.height/4.0), p);
    }

    //  Draw tic labels
    if (beats > 4.0) {
      var y = size.height * 3.0 / 8.0;
      //  This assumes leadin and leadout are both 2 beats

      //  Draw "Start" and "End"
      var x1 = myLeft + myWidth * 2.0 / beats;
      drawCenteredTextAt("Start",x1,y);
      var x2 = myLeft + myWidth * (beats - 2.0) / beats;
      drawCenteredTextAt("End", x2, y);

      //  Draw parts or fractions labels
      if (partValues.isNotEmpty) {
        // If fractions will write as "a/b"
        var denominator = (partValues.length + 1).s;
        for (var i=0; i<partValues.length; i++) {
          if (partValues[i] < beats-4) {  // sanity check
            var x = myLeft + myWidth * (2.0+partValues[i]) / beats;
            //  Text for fractions
            var text = (i+1).s + "/" + denominator;
            //  If parts then show part number instead of fraction
            if (isParts||isCalls)
              text = (i+2).s;
            //  Text is "Part 2" to show that call has parts
            if (isParts && i == 0)
              text = "Part 2";
            drawCenteredTextAt(text, x, y);
          }
        }
      }


    }
  }

  @override
  bool shouldRepaint(covariant FM.CustomPainter oldDelegate) {
    return true;  // ???
  }

}