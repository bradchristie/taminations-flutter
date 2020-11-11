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

import 'dart:convert';

import 'package:flutter/material.dart' as FM;
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart' as PP;
import 'package:webview_flutter/webview_flutter.dart' as WVF;

import '../extensions.dart';
import '../level_data.dart';
import '../settings.dart';
import '../tam_utils.dart';
import '../title_bar.dart';
import 'animation.dart';

//  Classes to display both About and Definition
class WebPage extends FM.StatelessWidget {

  final String assetName;
  WebPage(this.assetName);

  @override
  FM.Widget build(FM.BuildContext context) {
    return FM.Scaffold(
        appBar: FM.PreferredSize(
            preferredSize: FM.Size.fromHeight(56.0),
            child: TitleBar(
                title: assetName.contains("about") ? "Taminations" : "Definition",
                level: LevelData.find(assetName)?.name ?? ""
            )
        ),
        body: WebFrame(assetName)
    );
  }

}

class WebFrame extends FM.StatefulWidget {

  final String assetName;
  WebFrame(this.assetName);

  @override
  _WebFrameState createState() => _WebFrameState(assetName);

}

class _WebFrameState extends FM.State<WebFrame> {

  String assetName;
  WVF.WebViewController _controller;
  _WebFrameState(this.assetName);
  String _html;
  String get _dir => assetName.replaceFirst(r'/.*'.r,'');
  bool isAbbrev = true;
  bool hasAbbrev = false;

  @override
  FM.Widget build(FM.BuildContext context) {
    return PP.Consumer<Settings>(
        builder: (context, settings, child) {
          isAbbrev = settings.isAbbrev;
          return FM.Column(
          children: [
            FM.Expanded(
            child:PP.Consumer<AnimationState>(
              builder: (context, settings, child) {
                if (_controller != null) {
                  var webTitle = settings.title?.replaceAll(" ", "") ?? "";
                  _controller.evaluateJavascript('setPart(${settings.part},"$webTitle")');
                }
                return child;
              },
              child: WVF.WebView(
                initialUrl: "about:blank",
                javascriptMode: WVF.JavascriptMode.unrestricted,
                onWebViewCreated: (webViewController) {
                  _controller = webViewController;
                  _loadHtmlFromAssets();
                }),
            )),

            //  Row of radio buttons at bottom to switch between
            //  Abbreviated and Full definition
            //  Only show if the definition has both versions
            if (hasAbbrev) FM.Row(
              children: [
                FM.Container(
                  child: FM.Radio<bool>(
                    value: true,
                    groupValue: isAbbrev,
                    onChanged: (value) {
                      setState(() {
                        settings.isAbbrev = true;
                        _controller.evaluateJavascript("setAbbrev(true)");
                      });
                    },
                  ),
                ),
                FM.Text("Abbreviated", style: FM.TextStyle(fontSize: 20)),
                FM.Container(
                  child: FM.Radio<bool>(
                    value: false,
                    groupValue: isAbbrev,
                    onChanged: (value) {
                      setState(() {
                        settings.isAbbrev = false;
                        _controller.evaluateJavascript("setAbbrev(false)");
                      });
                    },
                  ),
                ),
                FM.Text("Full", style: FM.TextStyle(fontSize: 20))
              ]
            )
          ]);
        });
  }

  //  The web page does not know how to load relative links from the assets
  //  So instead find the links in the html, look up the reference, and
  //  inject the result into the original html

  //  Inject the CSS style info
  void hackCSS() {
    _html = _html.replaceFirst(r'<link href="../src/tamination.css" type="text/css" rel="stylesheet" />', TamUtils.css);
  }

  //  Replace link to javascript with inline javascript code
  void hackJavascript() {
    _html = _html.replaceFirst(r'<script type="text/javascript" src="../src/framecode.js"></script>',
        //  Can't run the javascript until the page has been read and digested
        //  so insert first call in the body onLoad callback
    "<script>" + TamUtils.framecode + "</script>")
        .replaceFirst('<body>', '<body onLoad="setAbbrev($isAbbrev)">');
  }

  //  Get an image asset and base64 encode it
  Future<String> _imageToBase64(String imageName) {
    return TamUtils.getBinaryAsset(imageName).then((rawData) {
      var intList = rawData.buffer.asUint8List().map((e) => e.toInt()).toList();
      return base64.encode(intList);
    });
  }

  //  Find all links to images, replace with inline base64 src
  //  Return a future that completes after all the images have been
  //  retrieved and displayed
  Future<void> hackImages() {
    var myhtml = _html;
    var myFuture = Future<void>.value(null);
    r'<img.*?src="(.*?)".*?/>'.r.allMatches(myhtml).forEach((match) {
      var filename = match.group(1);
      var orightml = match.group(0);
      myFuture = myFuture.whenComplete(() {
        return _imageToBase64("$_dir/$filename").then((base64str) {
          _html = _html.replaceFirst(
              orightml, r'<img src="data:image/png;base64,' + base64str + r'"/>');
        });
      });
    });
    return myFuture.whenComplete(() => loadMyHTML() );
  }

  //  Load or re-load the current HTML string
  //  Return a future to perform more work on the HTML once loaded
  Future<void> loadMyHTML() =>
    _controller.loadUrl( Uri.dataFromString(
        _html,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString()).whenComplete(() => print("HTML loaded."));

  //  Load the original HTML, then call all the routines to fix it up
  _loadHtmlFromAssets() async {
    rootBundle.loadString('assets/$assetName').then((fileText) {
      _html = fileText;
      hackCSS();
      loadMyHTML().whenComplete(() {
        hackImages().whenComplete(() {
          hackJavascript();
          loadMyHTML();
          if (_html.contains(r'class="abbrev"')) {
            setState(() {
              hasAbbrev = true;
            });
          }
        });
      });
    });
  }

}
