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

import 'package:flutter/foundation.dart' as FF;
import 'package:flutter/material.dart' as FM;
import 'package:provider/provider.dart' as PP;
import 'package:taminations/pages/practice.dart';
import 'package:taminations/pages/start_practice.dart';

import 'pages/calls_page.dart';
import 'extensions.dart';
import 'pages/level_page.dart';
import 'level_data.dart';
import 'pages/anim_list.dart';
import 'pages/animation_page.dart';
import 'pages/first_landscape.dart';
import 'pages/settings_page.dart';
import 'pages/second_landscape.dart';
import 'settings.dart';
import 'tam_utils.dart';
import 'pages/web_page.dart';
import 'sequencer/sequencer_page.dart';

///  Main routine
void main() {
  //  Wrap the Settings around the top of the program
  //  so everybody has access to them
  FM.runApp(PP.MultiProvider(
      providers: [
        PP.ChangeNotifierProvider(create: (context) => Settings()),
        PP.ChangeNotifierProvider(create: (context) => AnimationState())
      ],
      child: TaminationsApp()
    )
  );
  //  Read initializatio files
  TamUtils.init();
}

//  This class holds state information used to
//  generate the current layout
class TaminationsRoute {

  static const separator = "\t";

  final String level;  //  if not null, generate Calls page
  final String call;   //  if not null, generate AnimList page
  final int animnum;   //  if >= 0, generate Animation page

  final bool practice;   //  show Practice page
  final bool sequencer;  //  show Sequencer page
  final bool about;      //  show About page
  final bool settings;   //  show Settings page
  final bool definition; //  show Definition page

  //  Extra info to help pages fetch the info they need
  final String link;
  final String name;
  final String title;

  //  Default parameters generate the layout for the main menu
  TaminationsRoute({
    this.level,
    this.call,
    this.animnum = -1,

    this.practice = false,
    this.sequencer = false,
    this.about = false,
    this.settings = false,
    this.definition = false,

    this.link,
    this.name,
    this.title,
  });

  //  Convenience methods to create a new route by
  //  adding onto a previous route
  TaminationsRoute addFrom(TaminationsRoute from) =>
      TaminationsRoute(
          level:from.level ?? this.level,
          call:from.call ?? this.call,
          animnum: (from.animnum >= 0) ? from.animnum : this.animnum,
          practice: from.practice || this.practice,
          sequencer: from.sequencer || this.sequencer,
          definition: from.definition || this.definition,
          about: from.about || this.about,
          settings: from.settings || this.settings,
          link: from.link ?? this.link,
          name: from.name ?? this.name,
          title: from.title ?? this.title);

  operator +(TaminationsRoute other) => addFrom(other);

  bool get isLevelPage => level.isEmpty;
  bool get isCallsPage => level.isNotEmpty && call.isEmpty;

  //  For debugging
  @override
  String toString() => <String>[
    if (level != null && level.isNotEmpty) "level=$level",
    if (call != null && call.isNotEmpty) "call=$call",
    if (animnum >= 0) "animnum=${animnum.d}",
    if (link != null && link.isNotEmpty) "link=$link",
    if (name != null && name.isNotEmpty) "name=$name",
    if (title != null && title.isNotEmpty) "title=$title",
    if (practice) "practice",
    if (sequencer) "sequencer",
    if (about) "about",
    if (settings) "settings",
    if (definition) "definition"
  ].join(separator);




}


//  TaminationsApp is the top-level widget.
//  Here it is just a wrapper for the router and its delegate (below),
//  which does all the work
class TaminationsApp extends FM.StatefulWidget {

  @override
  FM.State<FM.StatefulWidget> createState() => _TaminationsAppState();

}

class _TaminationsAppState extends FM.State<TaminationsApp> {

  TaminationsRouterDelegate _routerDelegate = TaminationsRouterDelegate();
  TaminationsRouteInformationParser _routeInformationParser =
      TaminationsRouteInformationParser();

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.MaterialApp.router(
      title: 'Taminations',
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
    );
  }

  void setPath(TaminationsRoute path) {
    setState(() {
      _routerDelegate.setNewRoutePath(path);
    });
  }

}

//  Router Delegate
//  Handles all requests to change the layout
class TaminationsRouterDelegate extends FM.RouterDelegate<TaminationsRoute>
    with FM.ChangeNotifier, FM.PopNavigatorRouterDelegateMixin<TaminationsRoute> {

  final FM.GlobalKey<FM.NavigatorState> navigatorKey;
  TaminationsRouterDelegate() : navigatorKey = FM.GlobalKey<FM.NavigatorState>();

  //  History for back navigation
  List<TaminationsRoute> paths = [TaminationsRoute()];
  TaminationsRoute get currentPath => paths.last;

  @override
  FM.Widget build(FM.BuildContext context) {
    return PP.Consumer<Settings>(
        builder: (context, settings, child) {
          return FM.FutureBuilder<bool>(
              future: settings.getSettings(),
              builder: (FM.BuildContext context, FM.AsyncSnapshot<bool> snapshot) {
                if (!snapshot.hasData)
                  return FM.Container();
                return FM.OrientationBuilder(
                    builder: (context, orientation) {
                      return FM.Navigator(
                          key: navigatorKey,

                          //  Pages for landscape - first and second, Sequencer, Practice
                          pages: (orientation == FM.Orientation.landscape)
                              ? [ FM.MaterialPage(
                              key: FM.ValueKey("Landscape Page"),
                              child: FirstLandscapePage()
                          ),
                            if (currentPath?.link?.isNotEmpty ?? false)
                              FM.MaterialPage(
                                  key: FM.ValueKey("Landscape Page " + currentPath.link),
                                  child: SecondLandscapePage()
                              ),
                            if (currentPath.practice)
                              FM.MaterialPage(
                                  key: FM.ValueKey("Start Practice"),
                                  child: StartPracticePage()
                              ),
                            if (currentPath.practice && currentPath.level != null)
                              FM.MaterialPage(
                                  key: FM.ValueKey("Practice"),
                                  child: PracticePage()
                              ),
                            if (currentPath.sequencer)
                              FM.MaterialPage(
                                  key: FM.ValueKey("Sequencer"),
                                  child: SequencerPage()
                              ),

                          ]

                          //  Pages for portrait - Level, Animlist, Animation, Settings, etc
                              : [
                            FM.MaterialPage(
                                key: FM.ValueKey("LevelPage"),
                                child: LevelPage()
                            ),
                            if (currentPath.level != null &&
                                LevelData.find(currentPath.level) != null)
                              FM.MaterialPage(
                                  key: FM.ValueKey(currentPath.level),
                                  child: CallsPage()
                              ),
                            if (currentPath.link?.isNotEmpty ?? false)
                              FM.MaterialPage(
                                  key: FM.ValueKey(currentPath.link),
                                  child: AnimListPage()
                              ),
                            if (currentPath.animnum >= 0 )
                              FM.MaterialPage(
                                  key: FM.ValueKey(currentPath.link + " animation"),
                                  child: AnimationPage()
                              ),
                            if (currentPath.about)
                              FM.MaterialPage(
                                  key: FM.ValueKey("About"),
                                  child: WebPage("info/about.html")
                              ),
                            if (currentPath.definition)
                              FM.MaterialPage(
                                key: FM.ValueKey(currentPath.link + " definition"),
                                child: WebPage(settings.getLanguageLink(currentPath.link) + ".html")
                              ),
                            if (currentPath.settings)
                              FM.MaterialPage(
                                  key: FM.ValueKey("Settings"),
                                  child: SettingsPage()
                              ),
                            if (currentPath.practice)
                              FM.MaterialPage(
                                  key: FM.ValueKey("Practice"),
                                  child: StartPracticePage()
                              ),
                          ],

                          //  Standard onPopPage method, required
                          onPopPage: (route, result) {
                            if (!route.didPop(result)) {
                              return false;
                            }
                            return true;
                          });
                    });
              });
        });

  }

  //  this is necessary for the web URL and back button to work
  TaminationsRoute get currentConfiguration => paths.last;

  @override
  Future<bool> popRoute() {
    if (paths.length > 1) {
      paths.removeLast();
      print("Navigator Pop");
      return FF.SynchronousFuture(true);
    }
    else return FF.SynchronousFuture(false);
  }

  @override
  Future<void> setInitialRoutePath(TaminationsRoute configuration) async {
    paths = [TaminationsRoute()];
  }

  @override
  Future<void> setNewRoutePath(TaminationsRoute configuration) async {
    if (configuration != null) {
      print("Navigator Set New Route: "+configuration.toString());
      paths.forEach((path) { print("    "+path.toString()); });
      paths.add(currentPath + configuration);
      notifyListeners();
    }
    return;
  }
}

//  This class converts an URL to/from the fields in
//  TaminationsRoutePath
//  Used by web browser implementation
class TaminationsRouteInformationParser extends FM.RouteInformationParser<TaminationsRoute> {

  @override
  Future<TaminationsRoute>
  parseRouteInformation(FM.RouteInformation routeInformation) async {
    final params = Uri.parse(routeInformation.location).queryParameters;
    var level = params["level"] ?? "";
    var call = params["call"] ?? "";
    var link = params["link"] ?? "";
    var name = params["name"] ?? "";
    var title = params["title"] ?? "";
    var animnum = int.tryParse(params["animnum"] ?? "-1") ?? -1;
    return TaminationsRoute(level:level,call:call,link:link,name:name,title:title,animnum:animnum);
  }

  @override
  FM.RouteInformation restoreRouteInformation(TaminationsRoute path) {
    var location = path.toString().replaceAll(TaminationsRoute.separator, "&");
    return FM.RouteInformation(location: "/$location");
  }

}




