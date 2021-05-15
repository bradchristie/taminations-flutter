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

import 'dart:math';

import 'package:flutter/gestures.dart' as fg;
import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;
import 'package:taminations/sequencer/sequencer_model.dart';

import '../common.dart';
import 'page.dart';

class AnimationState extends fm.ChangeNotifier {

  double beat = 0.0;
  int _part = 0;

  int get part => _part;
  set part(int value) {
    _part = value;
    notifyListeners();
  }

}

void _startPainter(fm.BuildContext context, TamState tamState, TitleModel? titleModel) {
  final painter = pp.Provider.of<DanceAnimationPainter>(context,listen:false);
  TamUtils.getXMLAsset(tamState.link!).then((doc) {
    var tam = TamUtils.tamList(doc)
        .where((it) => !(it('display','').startsWith('n')))
        .toList()[max(0, tamState.animnum)];
    painter.setAnimation(tam);
    if (titleModel != null)
      titleModel.title = tam('title');
  });
}


class AnimationPage extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(
      child: pp.ChangeNotifierProvider(
        create: (_) => DanceAnimationPainter(),
        child: pp.Consumer2<TamState,TitleModel>(
            builder: (context, tamState, titleModel, _) {
              _startPainter(context,tamState,titleModel);
              return fm.Column(
                children: [
                  fm.Expanded(child: AnimationFrame()),
                  fm.Container(
                    color: Color.FLOOR,
                    child: fm.Row(
                      children: [
                        fm.Expanded(
                            child: Button('Definition',onPressed: () {
                              tamState.change(detailPage: DetailPage.DEFINITION);
                            })),
                        fm.Expanded(
                            child: Button('Settings',onPressed: () {
                              tamState.change(detailPage: DetailPage.SETTINGS);
                            }))
                      ],
                    ),
                  )
                ],
              );
            }
        ),
      ),
    );
  }
}


class AnimationForEmbed extends fm.StatelessWidget {

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.ChangeNotifierProvider(
        create: (_) => DanceAnimationPainter(),
        child: pp.Consumer<TamState>(
            builder: (context, tamState, _) {
              _startPainter(context,tamState,null);
              return fm.Card(child: AnimationFrame());
            }
        ),
    );
  }
}

class AnimationFrame extends fm.StatefulWidget {

  @override
  _AnimationFrameState createState() => _AnimationFrameState();
}

class _AnimationFrameState extends fm.State<AnimationFrame>
    with fm.SingleTickerProviderStateMixin {

  Vector locationTapped = Vector();
  Dancer? dancerTapped;
  String partstr = '';
  bool hasParts = false;
  List<double> partsValues = [];
  int currentPart = 0;
  String startFormation = '';  // for sequencer

  //  Constructor
  _AnimationFrameState();

  fm.PopupMenuItem<String> oneItem(String colorName) =>
      fm.PopupMenuItem(
        child:fm.Container(
            padding: fm.EdgeInsets.all(10),
            width: 120,
            decoration: colorName == 'default'
                ?  fm.BoxDecoration(color: Color.WHITE)
                : fm.BoxDecoration(color: Color.fromName(colorName), border:fm.Border.all(color:Color.BLACK)),
            child:fm.Text(colorName, style: fm.TextStyle(color: colorName.startsWith('B') ? Color.WHITE : Color.BLACK))
        ),
        value: colorName
      );

  Future<String?> _showColorPopup(fm.BuildContext context, String currentColor) {
    var screenSize = fm.MediaQuery.of(context).size.v;
    return fm.showMenu<String>(
        context: context,
        position: fm.RelativeRect.fromLTRB(locationTapped.x, locationTapped.y,
          screenSize.x, screenSize.y),
        initialValue: currentColor,
        items: [
          oneItem('Black'),
          oneItem('Blue'),
          oneItem('Cyan'),
          oneItem('Gray'),
          oneItem('Green'),
          oneItem('Magenta'),
          oneItem('Orange'),
          oneItem('Red'),
          oneItem('White'),
          oneItem('Yellow'),
          oneItem('default')
        ]
    );
  }


  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer2<TamState,DanceAnimationPainter>(
      builder: (context,appState,painter,_) => fm.LayoutBuilder(
        builder: (context, constraints) {
          final isSmall = constraints.maxHeight < 350;
          final iconSize = isSmall ? 16.0 : 24.0;
          return fm.Column(children: [
                //  Dance area with animations
                fm.Expanded(child: pp.Consumer2<Settings,SequencerModel>(
                    builder: (context, settings, model, child) {

                      //  Send current settings to the painter
                      painter.setGridVisibility(settings.grid || appState.grid);
                      painter.setNumbers(appState.mainPage == MainPage.SEQUENCER  ? settings.dancerIdentification : settings.numbers);
                      painter.setSpeed(settings.speed);
                      painter.setPaths(settings.paths);
                      painter.setLoop(appState.mainPage == MainPage.SEQUENCER ? false : (settings.loop || appState.loop));
                      painter.setShapes(appState.mainPage == MainPage.SEQUENCER
                          ? settings.dancerShapes : true);
                      painter.setPhantoms(settings.phantoms);
                      painter.setGeometry(appState.mainPage == MainPage.SEQUENCER ? Geometry.SQUARE : Geometry.fromString(settings.geometry).geometry);
                      //  Dancer colors - first check individual color, then couple color
                      painter.setColors(appState.mainPage == MainPage.SEQUENCER
                          ? settings.showDancerColors!='None' : true);
                      if (appState.mainPage == MainPage.SEQUENCER && settings.showDancerColors == 'Random')
                        painter.setRandomColors(true);
                      else {
                        painter.setRandomColors(false);
                      }
                      if (appState.mainPage != MainPage.SEQUENCER ||
                          settings.showDancerColors == 'By Couple') {
                        for (var i = 1; i <= 12; i++) {
                          final individualColor = settings.dancerColor(i);
                          if (individualColor != 'default')
                            painter.setDancerColor(
                                i, Color.fromName(individualColor));
                          else {
                            final coupleColor = settings.coupleColor(
                                (i - 1) ~/ 2 + 1);
                            painter.setDancerColor(
                                i, Color.fromName(coupleColor));
                          }
                        }
                      }
                      if (appState.play)
                        painter.doPlay();

                      //  Routines to handle pointer events
                      final tapDownHandler = (fm.TapDownDetails details) {
                        locationTapped = details.globalPosition.v;
                        dancerTapped = painter.dancerAt(
                            painter.mouse2dance(details.localPosition.v));
                      };
                      final longPressHandler = () {
                        if (dancerTapped != null) {
                          _showColorPopup(
                              context, settings.dancerColor(dancerTapped!.number.i))
                              .then((value) {
                            if (value != null)
                              settings.setDancerColor(dancerTapped!.number.i, value);
                          });
                        }
                      };

                      //  Wrap dance area with widget to detect pointer events
                      final beats = model.calls.isNotEmpty ? model.totalBeats().i.s : '';
                      //  Hook up mouse wheel
                      //  Need separate widget as GestureDetector doesn't handle it
                      return fm.Listener(
                        onPointerSignal: (fg.PointerSignalEvent event) {
                          if (event is fg.PointerScrollEvent) {
                            print('x: ${event.position.dx}, y: ${event.position.dy}');
                            print('scroll delta: ${event.scrollDelta}');
                            if (event.scrollDelta.dy < 0)
                              painter.stepBack();
                            else if (event.scrollDelta.dy > 0)
                              painter.stepForward();
                          }
                        },
                        //  Set up other mouse / tap actions
                        child: fm.GestureDetector(
                            onTapDown: tapDownHandler,
                            onSecondaryTapDown: tapDownHandler,
                            onTap: () {
                              if (dancerTapped != null) {
                                setState(() {
                                  painter.togglePath(dancerTapped!);
                                });
                              }
                            },
                            onLongPress: longPressHandler,
                            onSecondaryTap: longPressHandler,
                            //  Stack to show info on animation
                            child: fm.Stack(
                                children: [
                                  //  Finally here is the dance area widget
                                  fm.CustomPaint(
                                    painter: painter,
                                    child: fm.Center(), // so CustomPaint gets sized correctly
                                  ),
                                  //  Note that fades out as animation starts
                                  fm.Opacity(
                                    opacity: ((-painter.beat)/2.0).coerceIn(0.0, 1.0),
                                      child:fm.Container(
                                          color: Color.WHITE,
                                          child:fm.Text(painter.animationNote,
                                              style:fm.TextStyle(fontSize:20))
                                      )),
                                  //  Show if Loop or Speed are set other than default
                                  fm.Positioned(
                                    bottom: 0.0,
                                    right: 0.0,
                                    child: fm.Text(
                                        beats + ' ' +
                                        settings.speed.replaceFirst('Normal','') +
                                            (settings.loop ? ' Loop' : ''),
                                        style:fm.TextStyle(fontSize:24)
                                    )
                                  )
                                ])
                        ),
                      );
                    })),

                //  Slider to show current animation position
                fm.Container(
                  color: Color.LIGHTGRAY,
                  child: fm.SliderTheme(
                    data: fm.SliderThemeData(),
                    child: fm.Slider(
                        activeColor: Color.HIGHLIGHT,
                        inactiveColor: Color.GRAY,
                        value: painter.totalBeats > 2.0
                            ? min(100,(painter.beat + painter.leadin) * 100.0 / painter.totalBeats)
                            : 0.0,
                        min: 0,
                        max: 100,
                        onChanged: (double value) {
                          painter.beat =
                              (value * painter.totalBeats / 100.0) - painter.leadin;
                        },
                      ),
                  ),
                ),

                //  Painter to show animation start, end, beats, and parts
            if (!isSmall)
              fm.CustomPaint(
                painter: _SliderTicsPainter(
                    beats: painter.totalBeats,
                    parts: painter.partstr,
                    isParts: painter.hasParts,
                    isCalls: painter.hasCalls
                ),
                size: fm.Size.fromHeight(40.0),
                ),

                //  Buttons to control the animation
                fm.Container(
                  color: Color.FLOOR,
                  child: fm.Row(
                      children: [
                        fm.Expanded(
                            child: Button('Start',
                                child: fm.Icon(fm.Icons.skip_previous,size:iconSize),
                                onPressed: () {
                                  painter.goToPreviousPart();
                                })),
                        fm.Expanded(
                            child:
                            Button('Back',
                                child: fm.Icon(fm.Icons.navigate_before,size:iconSize),
                                onPressed: () {
                                  painter.stepBack();
                                })),
                        fm.Expanded(
                          //  Play / Pause button
                            child: Button('Play',
                                child: fm.Icon(painter.isRunning
                                    ? fm.Icons.pause
                                    : fm.Icons.play_arrow,
                                    size:iconSize),
                                onPressed: () {
                                    //  If running, turn it off
                                    if (painter.isRunning) {
                                      painter.doPause();
                                      appState.change(play:false);
                                    } else {
                                      //  Not running - start animation
                                      painter.doPlay();
                                    }
                                }
                            )),
                        fm.Expanded(
                            child: Button('Forward',
                                child: fm.Icon(fm.Icons.navigate_next,size:iconSize),
                                onPressed: () {
                                  painter.stepForward();
                                })),
                        fm.Expanded(child: Button('End',
                            child: fm.Icon(fm.Icons.skip_next,size:iconSize),
                            onPressed: () {
                              painter.goToNextPart();
                            })),
                      ]),
                )
              ]); }
      )
    );
  }
}

class _SliderTicsPainter extends fm.CustomPainter {

  double beats = 0.0;
  var isParts = false;
  var isCalls = false;
  List<double> partValues = [];

  _SliderTicsPainter({
    required this.beats,
    required String parts,
    this.isParts=false,
    this.isCalls=false
  }) {
    //  The string of parts is the length of each part except the first,
    //  separated by semi-colons.
    //  Convert these to a list of doubles, of the beat where each part starts.
    if (parts.isNotEmpty) {
      var partsList = parts.split(';');
      var partSum = 0.0;
      for (var i=0; i<partsList.length; i++) {
        var partValue = partsList[i].d;
        partValues.add(partValue + partSum);
        partSum += partValue;
      }
    }
  }

  @override
  void paint(fm.Canvas ctx, fm.Size size) {

    //  There's a lot to do to just draw one item of text
    //  and it has to be repeated for each text item.
    //  Thus this function.
    void drawCenteredTextAt(String text, double x, double y) {
      var span = fm.TextSpan(text: text,
          style:fm.TextStyle(fontSize: size.height / 3.0, color:fm.Colors.white));
      var tp = fm.TextPainter(text: span,
          textDirection: fm.TextDirection.ltr)..layout();
      //  TextSpan center doesn't seem to work, but we can calculate it
      var textOffset = tp.width / 2.0;
      tp.paint(ctx, fm.Offset(x-textOffset,y));
    }

    //  Adjustment for slider ends
    var adjust = 24;
    var myLeft = adjust;
    var myWidth = size.width - adjust*2;

    //  Draw background
    ctx.drawRect(fm.Rect.fromLTWH(0,0,size.width,size.height),
        fm.Paint()..color = Color.TICS);

    //  Draw tic marks
    var p = fm.Paint()
      ..style = fm.PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..color = Color.WHITE;
    for (var i=0; i <= beats; i++) {
      var x = myLeft + myWidth * i / beats;
      ctx.drawLine(fm.Offset(x,0), fm.Offset(x,size.height/4.0), p);
    }

    //  Draw tic labels
    if (beats > 4.0) {
      var y = size.height * 3.0 / 8.0;
      //  This assumes leadin and leadout are both 2 beats

      //  Draw 'Start' and 'End'
      var x1 = myLeft + myWidth * 2.0 / beats;
      drawCenteredTextAt('Start',x1,y);
      var x2 = myLeft + myWidth * (beats - 2.0) / beats;
      drawCenteredTextAt('End', x2, y);

      //  Draw parts or fractions labels
      if (partValues.isNotEmpty) {
        // If fractions will write as 'a/b'
        var denominator = (partValues.length + 1).s;
        for (var i=0; i<partValues.length; i++) {
          if (partValues[i] < beats-4) {  // sanity check
            var x = myLeft + myWidth * (2.0+partValues[i]) / beats;
            //  Text for fractions
            var text = (i+1).s + '/' + denominator;
            //  If parts then show part number instead of fraction
            if (isParts||isCalls)
              text = (i+2).s;
            //  Text is 'Part 2' to show that call has parts
            if (isParts && i == 0)
              text = 'Part 2';
            drawCenteredTextAt(text, x, y);
          }
        }
      }


    }
  }

  @override
  bool shouldRepaint(covariant fm.CustomPainter oldDelegate) {
    return true;  // ???
  }

}
