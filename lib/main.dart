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

import 'package:flutter/material.dart' as fm;
import 'package:provider/provider.dart' as pp;
import 'package:flutter/services.dart';

import 'common.dart';
import 'pages/anim_list_page.dart';
import 'pages/animation_page.dart';
import 'pages/calls_page.dart';
import 'pages/first_landscape_page.dart';
import 'pages/level_page.dart';
import 'pages/practice_page.dart';
import 'pages/second_landscape_page.dart';
import 'pages/settings_page.dart';
import 'pages/start_practice_page.dart';
import 'pages/tutorial_page.dart';
import 'pages/web_page.dart';
import 'pages/page.dart';
import 'sequencer/sequencer_page.dart';
import 'sequencer/abbreviations_frame.dart';
import 'sequencer/sequencer_calls_page.dart';
import 'sequencer/abbreviations_model.dart';

///  Main routine
void main() {
  fm.runApp(TaminationsApp());
}


//  TaminationsApp is the top-level widget.
//  Here it is just a wrapper for the router and its delegate (below),
//  which does all the work
//  Also holds global state and initialization futures
class TaminationsApp extends fm.StatefulWidget {

  @override
  fm.State<fm.StatefulWidget> createState() => _TaminationsAppState();

}

class _TaminationsAppState extends fm.State<TaminationsApp> {

  final TaminationsRouterDelegate _routerDelegate = TaminationsRouterDelegate();
  final TaminationsRouteInformationParser _routeInformationParser =
      TaminationsRouteInformationParser();

  @override
  fm.Widget build(fm.BuildContext context) {
    //  Wrap the Settings around the top of the program
    //  so everybody has access to them
    return pp.MultiProvider(
      providers: [
        pp.ChangeNotifierProvider(create: (context) => Settings()),
        pp.ChangeNotifierProvider(create: (context) => AnimationState()),
        pp.ChangeNotifierProvider(create: (context) => AbbreviationsModel()),
        pp.Provider(create: (_) => VirtualKeyboardVisible())
      ],
        //  Read initialization files
      child: fm.FutureBuilder<bool>(
        future: TamUtils.init(),
        builder: (context,snapshot) =>
        snapshot.hasData ?
          fm.MaterialApp.router(
            theme: fm.ThemeData(
              scrollbarTheme: fm.ScrollbarThemeData(
                thumbColor: fm.MaterialStateColor.resolveWith((states) =>
                Color.TRANSPARENTGREY),
              ),
            ),

            title: 'Taminations',
            routerDelegate: _routerDelegate,
            routeInformationParser: _routeInformationParser,
          ) : fm.Container(
          color: Color.FLOOR,
          child: fm.Center(child: fm.Image.asset('assets/src/tam87.png')),
        ),
    ));
  }

}

//  Router Delegate
//  Handles all requests to change the layout
class TaminationsRouterDelegate extends fm.RouterDelegate<TamState>
    with fm.ChangeNotifier, fm.PopNavigatorRouterDelegateMixin<TamState> {

  @override
  final fm.GlobalKey<fm.NavigatorState> navigatorKey;
  TaminationsRouterDelegate() : navigatorKey = fm.GlobalKey<fm.NavigatorState>();

  final appState = TamState();
  var _orientation = fm.Orientation.landscape;
  //  this is necessary for the web URL and back button to work
  @override
  TamState get currentConfiguration => appState;

  @override
  fm.Widget build(fm.BuildContext context) {
    return _PortraitForSmallDevices(
      child: pp.ChangeNotifierProvider.value(
        value: appState,
        child: fm.OrientationBuilder(
            builder: (context, orientation) {
              _orientation = orientation;
              return pp.Consumer<TamState>(
                  builder: (context,appState,_) {
                    return fm.Navigator(
                        key: navigatorKey,

                        //  Pages for landscape - first and second, Sequencer, Practice
                        pages: (orientation == fm.Orientation.landscape)
                            ? [
                              fm.MaterialPage(
                            key: fm.ValueKey('First Landscape Page'),
                            child: FirstLandscapePage()
                        ),
                          if (appState.mainPage == MainPage.ANIMLIST ||
                              appState.mainPage == MainPage.ANIMATIONS)
                            fm.MaterialPage(
                                key: fm.ValueKey('Second Landscape Page'),
                                child: SecondLandscapePage()
                            ),
                          if (appState.mainPage == MainPage.PRACTICE ||
                              appState.mainPage == MainPage.TUTORIAL ||
                              appState.mainPage == MainPage.STARTPRACTICE)
                            fm.MaterialPage(
                                key: fm.ValueKey('Start Practice'),
                                child: StartPracticePage()
                            ),
                          if (appState.mainPage == MainPage.TUTORIAL)
                            fm.MaterialPage(
                                key: fm.ValueKey('Tutorial'),
                                child: TutorialPage()
                            ),
                          if (appState.mainPage == MainPage.PRACTICE)
                            fm.MaterialPage(
                                key: fm.ValueKey('Practice'),
                                child: PracticePage()
                            ),
                          if (appState.mainPage == MainPage.SEQUENCER)
                            fm.MaterialPage(
                                key: fm.ValueKey('Sequencer'),
                                child: SequencerPage()
                            ),
                        ]

                        //  Pages for portrait - Level, Animlist, Animation, Settings, etc
                            : [
                          //  Root of all portrait pages shows the levels
                          fm.MaterialPage(
                              key: fm.ValueKey('LevelPage'),
                              child: LevelPage()
                          ),
                          //  Settings, Help single pages just below the main page
                          if (appState.mainPage == MainPage.LEVELS &&
                              appState.detailPage == DetailPage.HELP)
                            fm.MaterialPage(
                                key: fm.ValueKey('About'),
                                child: WebPage('info/about.html')
                            ),
                          if (appState.mainPage == MainPage.LEVELS &&
                              appState.detailPage == DetailPage.SETTINGS)
                            fm.MaterialPage(
                                key: fm.ValueKey('Settings'),
                                child: SettingsPage()
                            ),

                          //  Pages leading to animations
                          if ((appState.mainPage == MainPage.LEVELS &&
                              appState.detailPage == DetailPage.CALLS) ||
                              appState.mainPage == MainPage.ANIMLIST ||
                              appState.mainPage == MainPage.ANIMATIONS)
                            fm.MaterialPage(
                                key: fm.ValueKey(appState.level),
                                child: CallsPage()
                            ),
                          if (appState.mainPage == MainPage.ANIMLIST ||
                              appState.mainPage == MainPage.ANIMATIONS)
                            fm.MaterialPage(
                                key: fm.ValueKey(appState.link),
                                child: AnimListPage()
                            ),
                          if (appState.mainPage == MainPage.ANIMATIONS)
                            fm.MaterialPage(
                                key: fm.ValueKey(appState.link + ' animation'),
                                child: AnimationPage()
                            ),
                          if (appState.detailPage == DetailPage.DEFINITION)
                            fm.MaterialPage(
                                key: fm.ValueKey(
                                    appState.link + ' definition'),
                                child: WebPage(appState.link)
                            ),
                          if (appState.mainPage != MainPage.LEVELS &&
                              appState.detailPage == DetailPage.SETTINGS)
                            fm.MaterialPage(
                                key: fm.ValueKey('Settings'),
                                child: SettingsPage()
                            ),

                          if (appState.mainPage == MainPage.SEQUENCER)
                            fm.MaterialPage(
                                key: fm.ValueKey('Sequencer'),
                                child: SequencerPage()
                            ),
                          if (appState.mainPage == MainPage.SEQUENCER &&
                              appState.detailPage == DetailPage.HELP)
                            fm.MaterialPage(
                                key: fm.ValueKey('About'),
                                child: WebPage('info/sequencer.html')
                            ),
                          if (appState.mainPage == MainPage.SEQUENCER &&
                              appState.detailPage == DetailPage.ABBREVIATIONS)
                            fm.MaterialPage(
                                key: fm.ValueKey('About'),
                                child: AbbreviationsPage()
                            ),
                          if (appState.mainPage == MainPage.SEQUENCER &&
                              appState.detailPage == DetailPage.SETTINGS)
                            fm.MaterialPage(
                                key: fm.ValueKey('About'),
                                child: SequencerSettingsPage()
                            ),
                          if (appState.mainPage == MainPage.SEQUENCER &&
                              appState.detailPage == DetailPage.CALLS)
                            fm.MaterialPage(
                                key: fm.ValueKey('About'),
                                child: SequencerCallsPage()
                            ),


                          //  Displaying the StartPractice page will trigger
                          //  a rotation to landscape
                          if (appState.mainPage == MainPage.STARTPRACTICE)
                            fm.MaterialPage(
                                key: fm.ValueKey('Start Practice'),
                                child: StartPracticePage()
                            ),
                        ],

                        //  onPopPage
                        //  Calculate popped config based on current config
                        onPopPage: (route, result) {
                        //  print('Pop Navigator: ${route.currentResult}');
                          //  route.didPop returns false if the navigator
                          //  has only one page in its list of pages
                          if (!route.didPop(result)) {
                            return false;
                          }
                          pp.Provider.of<VirtualKeyboardVisible>(context,listen: false)
                              .isVisible = false;
                          if (_orientation == fm.Orientation.landscape) {
                            //  Pop landscape page
                            if (appState.mainPage == MainPage.SEQUENCER ||
                                appState.mainPage == MainPage.STARTPRACTICE)
                              appState.change(mainPage: MainPage.LEVELS,
                                  animnum: -1,
                                  detailPage: DetailPage.NONE);
                            else if (appState.mainPage == MainPage.ANIMATIONS ||
                                appState.mainPage == MainPage.ANIMLIST)
                              appState.change(mainPage: MainPage.LEVELS,
                                  animnum: -1,
                                  detailPage: DetailPage.CALLS);
                            else if (appState.mainPage == MainPage.PRACTICE ||
                                appState.mainPage == MainPage.TUTORIAL)
                              appState.change(mainPage:MainPage.STARTPRACTICE);
                          }

                          else {  // portrait
                            if (appState.mainPage == MainPage.LEVELS) {
                              if (appState.detailPage == DetailPage.SETTINGS ||
                                  appState.detailPage == DetailPage.HELP ||
                                  appState.detailPage == DetailPage.CALLS)
                                appState.change(detailPage: DetailPage.NONE);
                            }
                            else if (appState.mainPage == MainPage.ANIMLIST) {
                              if (appState.detailPage == DetailPage.SETTINGS ||
                                  appState.detailPage == DetailPage.DEFINITION)
                                appState.change(detailPage: DetailPage.NONE);
                              else
                                appState.change(mainPage: MainPage.LEVELS,
                                    detailPage: DetailPage.CALLS);
                            }

                            else if (appState.mainPage == MainPage.ANIMATIONS) {
                              if (appState.detailPage == DetailPage.SETTINGS ||
                                  appState.detailPage == DetailPage.DEFINITION)
                                appState.change(detailPage: DetailPage.NONE);
                              else
                                appState.change(mainPage: MainPage.ANIMLIST);
                            }

                            else if (appState.mainPage == MainPage.SEQUENCER) {
                              if (appState.detailPage == DetailPage.HELP ||
                              appState.detailPage == DetailPage.ABBREVIATIONS ||
                              appState.detailPage == DetailPage.SETTINGS ||
                              appState.detailPage == DetailPage.CALLS)
                                appState.change(mainPage:MainPage.SEQUENCER,
                                    detailPage: DetailPage.NONE);
                              else
                                appState.change(mainPage: MainPage.LEVELS,
                                    detailPage: DetailPage.NONE);
                            }
                          }

                          notifyListeners();
                          return true;
                        });
                  });
            })
      ),
    );
  }

  @override
  Future<void> setInitialRoutePath(TamState configuration) async {
    appState.addListener(() {
      setNewRoutePath(appState);
    });
  }

  @override
  Future<void> setNewRoutePath(TamState configuration) async {
    if (configuration != null) {
    //  print('New Route Path: $configuration');
      appState.change(
          level: configuration.level,
          link: configuration.link,
          animnum: configuration.animnum,
          mainPage:configuration.mainPage,
          detailPage: configuration.detailPage
      );
      notifyListeners();
    }
    return;
  }
}

//  This class converts an URL to/from the fields in
//  TaminationsRoutePath
//  Used by web browser implementation
class TaminationsRouteInformationParser extends fm.RouteInformationParser<TamState> {

  @override
  Future<TamState>
  parseRouteInformation(fm.RouteInformation routeInformation) async {
    final params = Uri.parse(routeInformation.location).queryParameters;
    var mainPage = params['main']?.toMainPage();
    var detailPage = params['detail']?.toDetailPage();
    var level = params['level'] ?? '';
    var link = params['link'] ?? '';
    var animnum = int.tryParse(params['animnum'] ?? '-1') ?? -1;
    return TamState(mainPage: mainPage, detailPage: detailPage, level:level,link:link,animnum:animnum);
  }

  @override
  fm.RouteInformation restoreRouteInformation(TamState path) {
    var location = path.toString();
    return fm.RouteInformation(location: '?$location');
  }

}

class _PortraitForSmallDevices extends fm.StatefulWidget {
  final fm.Widget child;
  _PortraitForSmallDevices({@fm.required this.child});
  @override
  __PortraitForSmallDevicesState createState() => __PortraitForSmallDevicesState();
}

class __PortraitForSmallDevicesState extends fm.State<_PortraitForSmallDevices> {

  @override
  void initState() {
    super.initState();
    later(() {
      if (isSmallDevice(context)) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown
        ]);
      }
    });
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return widget.child;
  }
}
