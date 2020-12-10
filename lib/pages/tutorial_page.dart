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

import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;

import '../common.dart';
import '../request.dart';
import 'practice_page.dart';

class TutorialPage extends fm.StatefulWidget {
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends fm.State<TutorialPage> {

  //  painter is where all the drawing and animation is done
  DanceAnimationPainter painter;
  Future<XmlElement> tam;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //  Set up painter
    painter = DanceAnimationPainter();
  }

  void _nextAnimation() {

  }


  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.ChangeNotifierProvider.value(
      value: painter,
      child: fm.Scaffold(
          appBar: fm.PreferredSize(
              preferredSize: fm.Size.fromHeight(56.0),
              child: fm.FutureBuilder(
                  future: tam,
                  builder: (fm.BuildContext context,
                      fm.AsyncSnapshot<XmlElement> snapshot) {
                    if (snapshot.hasData) {
                      return TitleBar(
                          title: snapshot.data.getAttribute('title')
                      );
                    }
                    else
                      return TitleBar(title: ' ');
                  }
              )
          ),
          body: RequestHandler(
            handler: (request) {
              if (request.action == Action.BUTTON_PRESS) {
                if (request('button') == 'Continue') {
                  setState(() {
                    _nextAnimation();
                  });
                }
              }
            },
            child: fm.FutureBuilder(
                future: tam,
                builder: (fm.BuildContext context,
                    fm.AsyncSnapshot<XmlElement> snapshot) {
                  if (snapshot.hasData)
                    return PracticeFrame(snapshot.data);
                  else
                    return fm.Container();
                }),
          )
      ),
    );
  }

}
