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

import 'package:flutter/material.dart' as fm;
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart' as pp;
import 'package:easy_web_view/easy_web_view.dart' as ewv;

import '../extensions.dart';
import '../level_data.dart';
import '../settings.dart';
import '../tam_utils.dart';
import '../title_bar.dart';
import 'animation_page.dart';

//  Classes to display both About and Definition
class WebPage extends fm.StatelessWidget {

  final String assetName;
  WebPage(this.assetName);

  @override
  fm.Widget build(fm.BuildContext context) {
    return fm.Scaffold(
        appBar: fm.PreferredSize(
            preferredSize: fm.Size.fromHeight(56.0),
            child: TitleBar(
                title: assetName.contains('about') ? 'Taminations' : 'Definition',
                level: LevelData.find(assetName)?.name ?? ''
            )
        ),
        body: WebFrame(assetName)
    );
  }

}

class WebFrame extends fm.StatefulWidget {

  final String assetName;
  WebFrame(this.assetName);

  @override
  _WebFrameState createState() => _WebFrameState(assetName);

}


class _WebFrameState extends fm.State<WebFrame> {

  String assetName;
  _WebFrameState(this.assetName);
  //String _html = '';
  String get _dir => assetName.replaceFirst(r'/.*'.r,'');
  bool isAbbrev = true;
  bool hasAbbrev = false;
  Future<String> htmlFuture;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    htmlFuture = _loadHtmlFromAssets();
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    return pp.Consumer<Settings>(
        builder: (context, settings, child) {
          isAbbrev = settings.isAbbrev;
          return fm.Column(
              children: [
                fm.Expanded(
                    child:pp.Consumer<AnimationState>(
                        builder: (context, settings, child) {
                          //  TODO highlight current part in definition
                          return child;
                        },
                        child: fm.FutureBuilder(
                            future: htmlFuture,
                            builder:  (fm.BuildContext context,
                                fm.AsyncSnapshot<String> snapshot) {
                              if (snapshot.hasData) {
                                return ewv.EasyWebView(
                                    src: snapshot.data,
                                    isHtml: true,
                                    onLoaded: () { });
                              }
                              return fm.Container();
                            }
                        )
                    )
                ),

            //  Row of radio buttons at bottom to switch between
            //  Abbreviated and Full definition
            //  Only show if the definition has both versions
            if (hasAbbrev) fm.Row(
              children: [
                fm.Container(
                  child: fm.Radio<bool>(
                    value: true,
                    groupValue: isAbbrev,
                    onChanged: (value) {
                      setState(() {
                        settings.isAbbrev = true;
                      //  _controller.evaluateJavascript('setAbbrev(true)');
                      });
                    },
                  ),
                ),
                fm.Text('Abbreviated', style: fm.TextStyle(fontSize: 20)),
                fm.Container(
                  child: fm.Radio<bool>(
                    value: false,
                    groupValue: isAbbrev,
                    onChanged: (value) {
                      setState(() {
                        settings.isAbbrev = false;
                     //   _controller.evaluateJavascript('setAbbrev(false)');
                      });
                    },
                  ),
                ),
                fm.Text('Full', style: fm.TextStyle(fontSize: 20))
              ]
            )
          ]);
        });
  }

  //  The web page does not know how to load relative links from the assets
  //  So instead find the links in the html, look up the reference, and
  //  inject the result into the original html

  //  Inject the CSS style info
  String hackCSS(String html) => html.replaceFirst(r'<link href="../src/tamination.css" type="text/css" rel="stylesheet" />', TamUtils.css);

  //  Replace link to javascript with inline javascript code
  String hackJavascript(String html) =>
    html.replaceFirst(r'<script type="text/javascript" src="../src/framecode.js"></script>',
        //  Can't run the javascript until the page has been read and digested
        //  so insert first call in the body onLoad callback
    '<script>' + TamUtils.framecode + '</script>')
        .replaceFirst('<body>', '<body onLoad="setAbbrev($isAbbrev)">');

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
  Future<String> hackImages(String html) {
    var myhtml = html;
    var myFuture = Future<String>.value(myhtml);
    r'<img.*?src="(.*?)".*?/>'.r.allMatches(myhtml).forEach((match) {
      var filename = match.group(1);
      var imagetag = match.group(0);
      myFuture = myFuture.then((morehtml) {
        return _imageToBase64('$_dir/$filename').then((base64str) {
           return morehtml.replaceFirst(
              imagetag, r'<img src="data:image/png;base64,' + base64str + r'"/>');
        });
      });
    });
    return myFuture; //.whenComplete(() => loadMyHTML() );
  }



  //  Return a future to perform more work on the HTML once loaded
  //  Future<void> loadMyHTML() => Future<void>.value();
    //_controller.loadUrl( Uri.dataFromString(
    //    _html,
    //    mimeType: 'text/html',
    //    encoding: Encoding.getByName('utf-8')
    //).toString());

  //  Load the original HTML, then call all the routines to fix it up
  Future<String> _loadHtmlFromAssets() async {
    var fileText = await rootBundle.loadString('assets/$assetName');
    fileText = hackCSS(fileText);
    fileText = await hackImages(fileText);
    fileText = hackJavascript(fileText);
    if (fileText.contains(r'class="abbrev"')) {
      setState(() {
        hasAbbrev = true;
      });
    }
    return fileText;
  }

}
