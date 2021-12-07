/*
 *     Copyright 2021 Brad Christie
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
import 'package:provider/provider.dart' as pp;
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

import '../common.dart';
import 'page.dart';

class MarkdownPage extends fm.StatelessWidget {

  final String link;
  MarkdownPage(this.link);

  @override
  fm.Widget build(fm.BuildContext context) {
    return Page(child:MarkdownFrame(link));
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
  bool hasAbbrev = false;
  Future<String>? _htmlFuture;
  String get _dir => currentLink.replaceFirst(r'/.*'.r,'');
  final scrollController = fm.ScrollController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var settings  = pp.Provider.of<Settings>(context);
    _loadHtmlFromAssets(settings,currentLink);
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    final markdownStyle = MarkdownStyleSheet(
      textScaleFactor: 1.2,
      blockSpacing: 4.0,
      h2: fm.TextStyle(fontSize:20,color: Color.RED, fontWeight: fm.FontWeight.bold,
            shadows:[fm.Shadow(color:Color(0xffe0e0e0),offset: fm.Offset(2,2))]),
      h3: fm.TextStyle(fontSize:16,color: Color.RED, fontWeight: fm.FontWeight.bold),
      h4: fm.TextStyle(color:Color.BLUE),
      //  h5 for centered text/images
      h5Align: fm.WrapAlignment.center,
      //  h6 used for copyright boilerplate
      h6: fm.TextStyle(fontSize:10,color:Color.MAROON,fontWeight: fm.FontWeight.normal),
      a: fm.TextStyle(color:Color.BLUE),
      //  del is used for highlighting the current part
      del: fm.TextStyle(backgroundColor: Color.YELLOW,decoration: fm.TextDecoration.none),
    );
    return pp.Consumer3<Settings,TitleModel,HighlightState>(
        builder: (context, settings, titleModel, highlightState, child) {
          if (currentLink.contains('about'))
            titleModel.title = 'Taminations';
          else if (currentLink.contains('sequencer'))
            titleModel.title = 'Sequencer';
          else {
            titleModel.title = 'Definition';
            titleModel.level = LevelData.find(currentLink)?.name ?? '';
          }
          var isAbbrev = settings.isAbbrev;
          return fm.FutureBuilder(
              future:  _htmlFuture,   // _loadHtmlFromAssets(),
              builder: (context,snapshot) {
                if (snapshot.hasData) {
                  final html = snapshot.data!.toString();
                  hasAbbrev = html.contains(r'class=".*abbrev"'.r);
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
                                  _loadHtmlFromAssets(settings, link);
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
                                  isAlwaysShown: TamUtils.platform().matches('web|windows'.r),
                                  thickness: 16,
                                  controller: scrollController,
                                  child: Markdown(
                                    data: _htmlToMarkdown(snapshot.data!
                                        .toString(), isAbbrev, highlightState),
                                    selectable: true,
                                    styleSheet: markdownStyle,
                                    controller: scrollController,
                                    onTapLink: (text, newlink, _) {
                                      if (newlink != null) {
                                        //  Open external links, including mail links,
                                        //  with external browser
                                        if (newlink.startsWith('http|mailto'.r)) {
                                          launch(newlink);
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
                                            _loadHtmlFromAssets(
                                                settings, abslink);
                                          });
                                        }
                                      }
                                    },
                                  ),
                                ))
                        ),

                        //  Row of radio buttons at bottom to switch between
                        //  Abbreviated and Full definition
                        //  Only show if the definition has both versions
                        if (hasAbbrev) fm.Container(
                          decoration: fm.BoxDecoration(
                              color: Color.FLOOR,
                              border: fm.Border(top: fm.BorderSide(
                                  width: 1, color: fm.Colors.black))),
                          child: fm.Row(
                              children: [
                                fm.InkWell(
                                    onTap: () {
                                      _setAbbrev(settings, true);
                                    },
                                    child: fm.Row(
                                      children: [
                                        fm.Radio<bool>(
                                          value: true,
                                          groupValue: isAbbrev,
                                          onChanged: (value) {
                                            _setAbbrev(settings, true);
                                          },
                                        ),
                                        fm.Text('Abbreviated',
                                            style: fm.TextStyle(fontSize: 20)),
                                      ],
                                    )),
                                fm.InkWell(
                                    onTap: () {
                                      _setAbbrev(settings, false);
                                    },
                                    child: fm.Row(
                                      children: [
                                        fm.Radio<bool>(
                                          value: false,
                                          groupValue: isAbbrev,
                                          onChanged: (value) {
                                            _setAbbrev(settings, false);
                                          },
                                        ),
                                        fm.Text('Full',
                                            style: fm.TextStyle(fontSize: 20)),
                                      ],
                                    )),
                              ]
                          ),
                        )
                      ]);
                }  // if snapshot.hasData (future is resolved)
                else
                  return fm.Container();
              }
          );
        });
  }

  void _setAbbrev(Settings settings, bool newValue) {
    settings.isAbbrev = newValue;
    _loadHtmlFromAssets(settings,currentLink);
  }

  void _loadHtmlFromAssets(Settings settings,String htmllink) async {
    final localizedAssetName = settings.getLanguageLink(htmllink.replaceFirst('.html', '')) + '.html';
    setState(() {
      _htmlFuture = TamUtils.getAsset(localizedAssetName);
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

  String _htmlToMarkdown(String html, bool isAbbrev, HighlightState highlightState) {
    final regSections = sections.join('|');
    final notSelected = isAbbrev ? 'full' : 'abbrev';
    title = html.replaceMatch('.*<title>(.*)</title>.*'.rd, '\\1');
    return html
    //  Just work on the body
        .replaceAllMapped('.*<body.*?>(.*)</body>.*'.rd, (m)=>'${m[1]}')
    //  Tabs to spaces
        .replaceAll('\\t'.r, ' ')
    //  Remove any indentation so Markdown doesn't interpret it as 'code'
        .replaceAll('\n *'.r, '\n')
    //  Remove HTML comments
        .replaceAll('<!--.*?-->'.rd,'')
    //  Remove web-specific text if not on web (About page only)
        .replaceAllMapped('(<div class="web">.*?</div>)'.rd,
            (m) => TamUtils.platform() == 'web' ? m[1]! : '')
    //  Remove abbrev/full sections not selected
        .replaceAll('<div class="($regSections) $notSelected">.*?</div>'.rd,'')
    //  Command examples get special treatment
        .replaceAllMapped('<div class="command-examples.*?">.*?<b>(.*?)</b>(.*?)</div>'.rid,
        //  First the section header
            (m) => '# \n# \n#### ${m[1]}\n${m[2]}'
            //  Now each example
                .replaceAllMapped('<p>(.*?)</p>'.rd,
                //  italics on one line (wrapped as needed)
                    (m) => '*${m[1]}*'.replaceAll('\\s+'.r, ' ') + '\n' ))
    //  Process all other sections
        .replaceAllMapped('<div class="($regSections).*?">\\s*<b>(.*?)</b>(.*?)</div>'.rd,
            (m) => '# \n# \n#### ${m[2]}\n${m[3]}')
    //  Parts section in C-3
        .replaceAllMapped('<div class="parts"><b>(.*?)</b>(.*?)</div>'.rd,
            (m) => '# \n# \n**${m[1]!.trim()}** ${m[2]}  \n')
    //  Remove other abbrev/full text not selected
        .replaceAll(isAbbrev
        ? r'<(\w+) class="full">.*?</\1>'.rd
        : r'<(\w+) class="abbrev">.*?</\1>'.rd,
        '')
    //  Copyright marked as H6
        .replaceAllMapped('<p class="copyright">&copy;(.*?)\\s*</p>'.rd,
            (m) => '# \n###### @${m[1]!.replaceAll(r'\s'.rd,' ')}')
    //  other special characters
        .replaceAll('&deg;', '°')
        .replaceAll('&quot;','"')
        .replaceAll('&frac14;','¼')
        .replaceAll('&frac12;','½')
        .replaceAll('&frac34;','¾')
        .replaceAll('&amp;','&')
    //  other bold text
        .replaceAllMapped('<b>(.*?)</b>'.rd,(m) => '**${m[1]}**')
        .replaceAllMapped('<strong>(.*?)</strong>'.rd,(m) => '**${m[1]}**')
    //  italics
        .replaceAllMapped('<i>(.*?)</i>'.rd,(m) => '*${m[1]}*')
    //  H2
        .replaceAllMapped('<h2>(.*?)</h2>'.r, (m) => '## ${m[1]!.toUpperCase()}')
    //  H3
        .replaceAllMapped('<h3.*?>(.*?)</h3>'.r, (m) => '# \n# \n### ${m[1]}')
    //  anchors
        .replaceAllMapped('<a href="(.*?)">(.*?)</a>'.rd, (m) => '[${m[2]}](${m[1]})')
    //  images
        .replaceAllMapped('<img.*?src="(http.*?)".*?/>'.rd,
            (m) => '![alt](${m[1]})')
        .replaceAllMapped('<img.*?src="(.*?)".*?/>'.rd,
            (m) => '![alt](resource:assets/${TamUtils.linkSSD(_dir+'/'+m[1]!)})')
    //  lists
        .replaceAllMapped('<ul.*?>(.*)</ul>'.rd,
            (m) => m[1]!.replaceAll('<li>'.r, '- '))
        .replaceAllMapped('<ol.*?>(.*)</ol>'.rd,
            (m) => m[1]!.replaceAll('\\s'.rd, ' ').replaceAll('<li>', '\n1. '))
    //  Hack for nested lists
        .replaceAll('\n+','\n\t*')
        .replaceAll('\n\$','\n\t1')
    //  Horizontal lines (only used in the About page)
        .replaceAll('<hr/>','***')
    //  Make sure paragraphs are preceeded by a blank line so
    //  markdown will recognize them
        .replaceAll('<p ', '\n<p ')
    //  Line breaks - presumes all uses of <br/> are at the end of the line
        .replaceAll('<br/>','  ')
    //  Centered text - use H5
                 //        <p style="text-align:center">
        .replaceAllMapped('<p style="text-align:center">(.*?)</p>'.rd,
            (m) => '##### ' + m[1]!.replaceAll('\n', ' '))
    //  A little more space after each paragraph
        .replaceAll('</p>', '\n# \n')
    //  Highlight current part
    //  Markup doesn't want any spaces between ~~ and the highlighted text
    //  so rearrange whitespace as needed
        .replaceAllMapped('<span id="($highlightState|Part${highlightState.currentPart})">(\\s*)(.*?)(\\s*)</span>'.rd, (m) => '${m[2]}~~${m[3]}~~${m[4]}')
    //  strip all other tags
        .replaceAll('<.*?>'.r, '')
    //  Now we can replace special characters < and >
        .replaceAll('&lt;'.ri,'<')
        .replaceAll('&gt;'.ri, '>')
    ;
  }

}