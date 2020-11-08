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
import 'package:taminations/level_data.dart';
import 'package:taminations/tam_utils.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../title_bar.dart';
import '../extensions.dart';

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
  WebViewController _controller;
  _WebFrameState(this.assetName);
  String _html;
  String get _dir => assetName.replaceFirst(r'/.*'.r,'');

  @override
  FM.Widget build(FM.BuildContext context) {

    return WebView(
        initialUrl: "about:blank",
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        });

  }

  String hackHTML(String html) =>
      html.replaceFirst(r'<link href="../src/tamination.css" type="text/css" rel="stylesheet" />', TamUtils.css);

  Future<String> _imageToBase64(String imageName) {
    return TamUtils.getBinaryAsset(imageName).then((rawData) {
      var intList = rawData.buffer.asUint8List().map((e) => e.toInt()).toList();
      return base64.encode(intList);
    });
  }

  void _lookForImages() {
    print("Looking for images in HTML with length ${_html.length}");
    var myhtml = _html;
    r'<img.*?src="(.*?)".*?/>'.r.allMatches(myhtml).forEach((match) {
      var filename = match.group(1);
      var orightml = match.group(0);
      print("Will load image $_dir/$filename");
      _imageToBase64("$_dir/$filename").then((base64str) {
        _html = _html.replaceFirst(orightml,r'<img src="data:image/png;base64,'+base64str+r'"/>');
        _loadMyHTML();
      });
    });
  }

  void _loadMyHTML() {
    _controller.loadUrl( Uri.dataFromString(
        _html,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/$assetName');
    _html = hackHTML(fileText);
    _loadMyHTML();
    _lookForImages();
  }

}


/*    Code for web browser

//import 'dart:html';
//import 'package:flutter_web_ui/ui.dart' as ui;
//import 'dart:ui' as ui;

  WebViewController _controller;
//  final IFrameElement _iframeElement = IFrameElement();

 // @override
 // void initState() {
 //   super.initState();
 //   _iframeElement.height = '500';
 //   _iframeElement.width = '500';
 //   _iframeElement.style.border = 'none';
    // ignore: undefined_prefixed_name
 //   _loadIframeFromFromAssets();
 //   ui.platformViewRegistry.registerViewFactory(
 //       'iFrameElement',
 //           (int viewId) => _iframeElement
 //         ..style.border = 'none');  }

  @override
  FM.Widget build(FM.BuildContext context) {
   // var platform = LocalPlatform();
    //try {
    //  if (platform.isAndroid || platform.isIOS) {
        //  An app, not a web browser
        return WebView(
            initialUrl: "about:blank",
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
              _loadHtmlFromAssets();
            });
     // }
    //} catch (e) {
      //  Must be a web browser
    //  return HtmlElementView(
    //    viewType: 'iFrameElement',
     // );
   // }
  }

  /*
  _loadIframeFromFromAssets() async {
    String fileText = await rootBundle.loadString('assets/info/about.html');
    _iframeElement.src = Uri.dataFromString(
        fileText,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString();
  }
   */


 */