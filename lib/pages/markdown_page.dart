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
import 'package:flutter/services.dart' show rootBundle;
import 'package:provider/provider.dart' as pp;
import 'package:flutter_markdown/flutter_markdown.dart';


import '../common.dart';
import 'animation_page.dart';
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

  String link;
  String localizedAssetName = '';
  _MarkdownFrameState(this.link);
  //bool isAbbrev = true;
  bool hasAbbrev = false;
  Future<String>? htmlFuture;
  String get _dir => link.replaceFirst(r'/.*'.r,'');

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    var settings  = pp.Provider.of<Settings>(context);
    localizedAssetName = settings.getLanguageLink(link.replaceFirst('.html', '')) + '.html';
    htmlFuture = _loadHtmlFromAssets();
  }

  @override
  fm.Widget build(fm.BuildContext context) {
    final markdownStyle = MarkdownStyleSheet(
      textScaleFactor: 1.2,
      h2: fm.TextStyle(fontSize:24,color: Color.RED,
            shadows:[fm.Shadow(color:Color.LIGHTGRAY,offset: fm.Offset(2,2))]),
      h3: fm.TextStyle(fontSize:16,color: Color.RED, fontWeight: fm.FontWeight.bold),
      h4: fm.TextStyle(color:Color.BLUE),
      strong: fm.TextStyle(backgroundColor: Color.YELLOW),
      em: fm.TextStyle(fontSize:12,color:Color.MAROON),
    );
    return pp.Consumer3<Settings,TitleModel,HighlightState>(
        builder: (context, settings, titleModel, highlightState, child) {
          if (link.contains('about'))
            titleModel.title = 'Taminations';
          else if (link.contains('sequencer'))
            titleModel.title = 'Sequencer';
          else {
            titleModel.title = 'Definition';
            titleModel.level = LevelData.find(link)?.name ?? '';
          }
          var isAbbrev = settings.isAbbrev;
          return fm.FutureBuilder(
              future:  _loadHtmlFromAssets(),
              builder: (context,snapshot) =>
              snapshot.hasData ?
              fm.Column(
                  children: [
                    fm.Expanded(
                        child:pp.Consumer<AnimationState>(
                            builder: (context, settings, child) {
                              return child!;
                            },
                            child: fm.Container(
                                color: Color(0xfffff8f0),
                                child: Markdown(
                                  data:_htmlToMarkdown(snapshot.data!.toString(),isAbbrev, highlightState),
                                  styleSheet: markdownStyle,
                                ))
                        )
                    ),

                    //  Row of radio buttons at bottom to switch between
                    //  Abbreviated and Full definition
                    //  Only show if the definition has both versions
                    if (hasAbbrev) fm.Container(
                      decoration: fm.BoxDecoration(
                          color: Color.FLOOR,
                          border: fm.Border(top: fm.BorderSide(width: 1, color: fm.Colors.black))),                child: fm.Row(
                        children: [
                          fm.InkWell(
                              onTap: () { _setAbbrev(settings, true); },
                              child: fm.Row(
                                children: [
                                  fm.Radio<bool>(
                                    value: true,
                                    groupValue: isAbbrev,
                                    onChanged: (value) {
                                      _setAbbrev(settings, true);
                                    },
                                  ),
                                  fm.Text('Abbreviated', style: fm.TextStyle(fontSize: 20)),
                                ],
                              )),
                          fm.InkWell(
                              onTap: () { _setAbbrev(settings, false); },
                              child: fm.Row(
                                children: [
                                  fm.Radio<bool>(
                                    value: false,
                                    groupValue: isAbbrev,
                                    onChanged: (value) {
                                      _setAbbrev(settings, false);
                                    },
                                  ),
                                  fm.Text('Full', style: fm.TextStyle(fontSize: 20)),
                                ],
                              )),
                        ]
                    ),
                    )
                  ])
                  : fm.Container()
          );
        });
  }

  void _setAbbrev(Settings settings, bool newValue) {
    setState(() {
      settings.isAbbrev = newValue;
      htmlFuture = _loadHtmlFromAssets();
    });
  }

  Future<String> _loadHtmlFromAssets() async {
    final html = await rootBundle.loadString('assets/$localizedAssetName');
    if (html.contains(r'class=".*abbrev"'.r)) {
      setState(() {
        hasAbbrev = true;
      });
    }
    return html;
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
    'teaching-tip'
  ];

  String _htmlToMarkdown(String html, bool isAbbrev, HighlightState highlightState) {
    final regSections = sections.join('|');
    final notSelected = isAbbrev ? 'full' : 'abbrev';
    return html
    //  Just work on the body
        .replaceAllMapped('.*<body>(.*)</body>.*'.rd, (m)=>'${m[1]}')
    //  Remove any indentation as it has meaning to Markdown
        .replaceAll('\n *'.r, '\n')
    //  Remove abbrev/full sections not selected
        .replaceAll('<div class="($regSections) $notSelected">.*?</div>'.rd,'')
    //  Command examples get special treatment
    .replaceAllMapped('<div class="command-examples.*?"><b>(Command examples?)</b>(.*?)</div>'.rd,
            (m) => '#### ${m[1]}\n${m[2]}'.replaceAll('</p>', '  '))
    //  Process all other sections
        .replaceAllMapped('<div class="($regSections).*?"><b>(.*?)</b>(.*?)</div>'.rd,
            (m) => '#### ${m[2]}\n${m[3]}')
    //  Remove other abbrev/full text not selected
        .replaceAll(isAbbrev
        ? r'<(\w+) class="full">.*?</\1>'.rd
        : r'<(\w+) class="abbrev">.*?</\1>'.rd,
        '')
    //  Copyright
        .replaceAllMapped('<p class="copyright">&copy;(.*?)\\s*</p>'.rd,
            (m) => '*@${m[1]}*'.replaceAll(r'\s',' '))
    //  other special characters
        .replaceAll('&deg;', '°')
        .replaceAll('&quot;','"')
        .replaceAll('&frac34;','¾')
    //  H2
        .replaceAllMapped('<h2>(.*?)</h2>'.r, (m) => '## ${m[1]!.toUpperCase()}')
    //  H3
        .replaceAllMapped('<h3.*?>(.*?)</h3>'.r, (m) => '### ${m[1]}')
    //  anchors
        .replaceAllMapped('<a href="(.*?)">(.*?)</a>'.rd, (m) => '[${m[2]}](${m[1]})')
    //  images
        .replaceAllMapped('<img.*?src="(.*?)"/>'.rd,
            (m) => '![alt](resource:assets/$_dir/${m[1]})')
    //  lists
        .replaceAllMapped('<ul.*?>(.*)</ul>'.rd,
            (m) => m[1]!.replaceAll('<li>'.r, '- '))
        .replaceAllMapped('<ol.*?>(.*)</ol>'.rd,
            (m) => m[1]!.replaceAll('<li>'.r, '1. '))
    //  Highlight current part
    //  Markup doesn't want any spaces between ** and the highlighted text
    //  so rearrange whitespace as needed
        .replaceAllMapped('<span id="($highlightState|Part${highlightState.currentPart})">(\\s*)(.*?)(\\s*)</span>'.rd, (m) => '${m[2]}**${m[3]}**${m[4]}')
    //  strip all other tags
        .replaceAll('<.*?>'.r, '')
    ;
  }

}