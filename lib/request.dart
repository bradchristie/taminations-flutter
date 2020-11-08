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

import 'package:flutter/material.dart' as FM;

enum Action {

  //  Actions for page changes
  NONE, // dummy value for no accepted actions
  STARTUP,
  ABOUT,
  SETTINGS,
  SEQUENCER,
  STARTPRACTICE,
  TUTORIAL,
  PRACTICE,
  LEVEL,
  CALLLIST,
  CALLITEM,
  ANIMLIST,
  ANIMATION,
  DEFINITION,
  ABBREVIATIONS,
  SEQUENCERHELP,
  SEQUENCERSETTINGS,
  SEQUENCERCALLS,

  //  Other messages
  SETTINGS_CHANGED,
  ANIMATION_READY,
  ANIMATION_LOADED,
  ANIMATION_SELECTED,
  ANIMATION_PART,
  ANIMATION_PROGRESS,
  ANIMATION_DONE,
  SEQUENCER_CURRENTCALL,
  SEQUENCER_LISTEN,
  SEQUENCER_READY,
  SEQUENCER_ERROR,
  BUTTON_PRESS,
  SLIDER_CHANGE,
  TRANSITION_COMPLETE,
  TITLE,
  ABBREVIATIONS_CHANGED,
  RESOLUTION_ERROR

}

class Request {

  Action action;
  Map<String,String> params;
  Request({ @FM.required this.action, params }) :
      this.params = params == null ? { } : params;

}

class RequestHandler extends FM.InheritedWidget  {

  final void Function(Request request) handler;
  RequestHandler({
    @FM.required FM.Widget child,
    @FM.required this.handler
  }) : super(child:child);

  void processRequest(Request request) {
    handler(request);
  }

  @override
  bool updateShouldNotify(covariant FM.InheritedWidget oldWidget) => false;

  static RequestHandler of(FM.BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RequestHandler>();
  }

}