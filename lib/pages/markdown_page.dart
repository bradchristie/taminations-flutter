/*
 * *     Copyright 2024 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import 'package:flutter/material.dart' as fm;
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:provider/provider.dart' as pp;
import 'package:url_launcher/url_launcher.dart';

import '../common_flutter.dart';
import 'page.dart';

class MarkdownPage extends fm.StatelessWidget {

  final String link;
  MarkdownPage(this.link);

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(
        child: pp.Consumer<TitleModel>(builder: (context, titleModel, _) {
          if (link.contains('about'))
            titleModel.title = 'Taminations';
          else if (link.contains('sequencer'))
            titleModel.title = 'Sequencer';
          else {
            titleModel.title = 'Definition';
            //titleModel.level = LevelData.find(link)?.name ?? '';
          }
          return MarkdownFrame(link);
        }));
  }
}

class MarkdownFrame extends fm.StatefulWidget {

  final String link;
  MarkdownFrame(this.link) : super(key: fm.ValueKey(link));

  @override
  _MarkdownFrameState createState() => _MarkdownFrameState(link);

}

class _MarkdownFrameState extends fm.State<MarkdownFrame> {

  String currentLink;
  String title = '';
  List<String> linkStack = [];
  List<String> titleStack = [];
  _MarkdownFrameState(this.currentLink);
  Future<String>? _mdFuture;
  String get _dir => currentLink.replaceFirst(r'/.*'.r,'');
  final scrollController = fm.ScrollController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadMdFromAssets(currentLink);
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    final markdownStyle = MarkdownStyleSheet(
      textScaler: fm.TextScaler.linear(1.2),
      blockSpacing: 0,
      //  H1 used for main headings
      h1: fm.TextStyle(fontSize:20,color: Color.RED, fontWeight: fm.FontWeight.bold,
            shadows:[fm.Shadow(color:Color(0xffe0e0e0),offset: fm.Offset(2,2))]),
      h1Padding: fm.EdgeInsets.only(top:8.0,bottom:8.0),
      //  H2 used for sub-headings
      h2: fm.TextStyle(fontSize:16,color: Color.RED, fontWeight: fm.FontWeight.bold),
      h2Padding: fm.EdgeInsets.only(top:8.0,bottom:2.0),
      //  H3 for section headers
      h3: fm.TextStyle(color:Color.BLUE),
      h3Padding: fm.EdgeInsets.only(top:8.0),
      //  H4 used for command examples
      h4: fm.TextStyle(fontStyle: fm.FontStyle.italic),
      h4Padding: fm.EdgeInsets.only(top:6.0),
      //  h6 used for copyright boilerplate
      h6: fm.TextStyle(fontSize:10,color:Color.MAROON,fontWeight: fm.FontWeight.normal),
      //  Links
      a: fm.TextStyle(color:Color.BLUE),
      //  del is used for highlighting the current part
      del: fm.TextStyle(backgroundColor: Color.YELLOW,decoration: fm.TextDecoration.none),
      //  Blockquote used for centered text and images
      blockquoteDecoration: fm.BoxDecoration(color: Color(0xfffff8f0)),
      blockquoteAlign: fm.WrapAlignment.center,
      horizontalRuleDecoration: fm.BoxDecoration(
          border: fm.Border.all(color: Color(0xffc0c0c0), width: 1.0),
      ),
      //  Table style
      tableHead: fm.TextStyle(fontWeight: fm.FontWeight.normal),
      //  Padding at end of each paragraph
      pPadding: fm.EdgeInsets.only(bottom:10.0)
    );
    return pp.Consumer2<TamState,HighlightState>(
        builder: (context, tamState, highlightState, child) {
          return fm.FutureBuilder(
              future:  _mdFuture,
              builder: (context,snapshot) {
                if (snapshot.hasData) {
                  final md = snapshot.data!.toString();
                  title = md.replaceMatch('# (.+?)\\n.*'.rd, '\\1').trim();
                  return fm.Column(
                      children: [
                        if (linkStack.isNotEmpty)
                          fm.Container(
                            decoration: fm.BoxDecoration(
                                color: Color.FLOOR,
                                border: fm.Border(bottom: fm.BorderSide(
                                    width: 1, color: fm.Colors.black))),
                            child: fm.Row(
                              children: [
                                Button('Back', onPressed: () {
                                  var link = linkStack.removeLast();
                                  titleStack.removeLast();
                                  _loadMdFromAssets(link);
                                }),
                                fm.Text(' to ${titleStack.lastOrNull ?? ''}',
                                    style: fm.TextStyle(fontSize: 20))
                              ],
                            ),
                          ),
                        fm.Expanded(
                            child: fm.Container(
                                color: Color(0xfffff8f0),
                                child: fm.Scrollbar(
                                  thumbVisibility: TamUtils.platform().matches('web|windows'.r),
                                  thickness: 16,
                                  controller: scrollController,
                                  child: Markdown(
                                    data: adjustMarkdown(snapshot.data!.toString(), tamState, highlightState),
                                    selectable: true,
                                    styleSheet: markdownStyle,
                                    controller: scrollController,
                                    onTapLink: (text, newlink, _) {
                                      if (newlink != null) {
                                        //  Open external links, including mail links,
                                        //  with external browser
                                        if (newlink.startsWith('http|mailto'.r)) {
                                          launchUrl(Uri.parse(newlink));
                                        } else {
                                          //  Internal link (another definition)
                                          //  Replace current definition
                                          linkStack.add(currentLink);
                                          titleStack.add(title);
                                          //  Need to convert link from relative to current dir
                                          //  to relative to parent dir
                                          var abslink = newlink.replaceFirst(
                                              '../', '');
                                          if (!abslink.contains('/'))
                                            abslink = '$_dir/$abslink';
                                          setState(() {
                                            _loadMdFromAssets(abslink);
                                          });
                                        }
                                      }
                                    },
                                  ),
                                ))
                        ),
                      ]);
                }  // if snapshot.hasData (future is resolved)
                else
                  return fm.Container();
              }
          );
        });
  }

  void _loadMdFromAssets(String htmllink) async {
    final localizedAssetName = Settings.getLanguageLink(htmllink.replaceFirst('\\.(html|md)'.r, '')) + '.md';
    setState(() {
      _mdFuture = TamUtils.getAsset(localizedAssetName);
      currentLink = htmllink;
    });
  }

  //  Simple converter for just the tags we use
  final sections = [
    'starting-formations',
    'command-examples',
    'dance-action',
    'ending-formation',
    'timing',
    'styling',
    'comments',
    'teaching-tip',
  ];

  String adjustMarkdown(String md, TamState tamState, HighlightState highlightState) {
    var part = highlightState.currentPart;
    var partCount = 0;
    var partsMap = <String>[];
    if (md.contains('<!-- Parts')) {
      partsMap = md.replaceFirst('.+<!-- Parts'.rd,'').trim().split('\\s+'.r);
      partsMap.removeLast();
    }
    //  Links don't seem to format properly in embed pages
    if (tamState.embed)
      md = md.replaceAllMapped('\\[(.*?)\\]\\(.*?md\\)'.r, (m) => m[1]!);
    //  Remove web-specific info from apps
    if (TamUtils.platform() != 'web')
      md = md.replaceAll(r'\[web only\].*\[end web only\]: #'.rd,'');
    return md
    //  Title is uppercase
        .replaceAllMapped('^# (.*)'.rm,(m) => '# ${m[1]!.toUpperCase()}')
    //  Fix image links
        .replaceAllMapped(
          r'!\[alt\]\(([^)]*)'.rm,
          (m) => '![alt](resource:assets/${TamUtils.linkSSD('$_dir/${m[1]!}')}')
    //  Interpret encodings
        .replaceAll('\\<','<')
    //  Highlight current part
        .replaceAllMapped(r'\*\*\*(.*?)\*\*\*'.rd, (m) {
              partCount += 1;
              if (partsMap.isNotEmpty)
                return partCount-1 < partsMap.length &&
                    highlightState.toString().matches(partsMap[partCount-1].ri)
                    ? '~~${m[1]}~~' : m[1]!;
              else
                return (partCount == part) ? '~~${m[1]}~~' : m[1]!;
            })
        .replaceAllMapped('{high:($highlightState|Part${highlightState.currentPart})}(.*?){/high}'.rd,(m) => '~~${m[2]}~~')
    //  Remove other part markers
        .replaceAll('{/?high.*?}'.r,'')
    ;

  }

}