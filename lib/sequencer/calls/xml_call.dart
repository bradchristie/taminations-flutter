/*

  Taminations Square Dance Animations
  Copyright (C) 2022 Brad Christie

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

import '../../calls/calls_index.g.dart';
import '../../formations.g.dart';
import '../../math/paths.dart';
import 'animated_call.dart';
import 'common.dart';
import 'call.dart';

class XMLCall extends Call {

  late XmlElement xelem;
  late AnimatedCall xcall;
  late List<int> xmlmap;
  late CallContext ctx2;
  bool found = false;
  bool exact = false;
  var perimeter = false;
  var foundLink = '';
  @override String get help => 'Look at the animations of $name to find '
      'what the sequencer will accept';

  static const noInactiveCalls = ['slip','slither'];

  XMLCall(String title) : super(title);

  bool lookupAnimatedCall(CallContext ctxwork) {
    var calllist = CallsIndex.index[norm] ?? <AnimatedCall>[];
    var bestOffset = double.maxFinite;
    var fuzzy = true;

    for (var tam in calllist) {
      var headsMatchSides = !tam.title.contains('Heads?|Sides?'.r);
      var sexy = tam.genderSpecific;
      var ctx2q = CallContext.fromFormation(tam.formation);
      var mm = ctxwork.matchFormations(ctx2q,sexy: sexy, fuzzy: fuzzy,
          handholds: !fuzzy, headsMatchSides: headsMatchSides);
      if (mm != null) {
        var matchResult = mm.match;
        var totOffset = matchResult.offsets.fold<double>(0.0, (s, v) => s + v.length);
        var totAngle = matchResult.angles.fold<double>(0.0, (s, a) => s + a);
        if (totOffset < bestOffset && totAngle.isAbout(0.0)) {
          xcall = tam;
          xmlmap = mm.map;
          ctx2 = ctx2q;
          bestOffset = totOffset;
          level = tam.level;
          found = true;
        }
      }
    }
    return found;
  }

  Future<bool> lookupCall(CallContext ctxwork) async {
    var callfiles = CallContext.xmlFilesForCall(norm.toLowerCase());
    //  Found xml file with call, now look through each animation
    var bestOffset = double.maxFinite;
    var fuzzy = true;

    for (var link in callfiles) {
      var file = await CallContext.loadOneFile(link);
      foundLink = link;
      var tamlist = file.rootElement.findAllElements('tam').where((tam) =>
      tam('sequencer') != 'no' &&
          //  Check for calls that must go around the centers
          (!perimeter || tam('sequencer','').contains('perimeter')) &&
          //  Check for 4-dancer calls that do not work for 8 dancers
          (exact || !tam('sequencer','').contains('exact')) &&
          TamUtils.normalizeCall(tam('title')).toLowerCase() ==
              norm.toLowerCase());
      for (var tam in tamlist) {
        //  Calls that are gender-specific, e.g. Star Thru,
        //  are specifically flagged in XML
        var sexy = tam('sequencer','').contains('gender-specific');
        //  Make sure we don't mismatch heads and sides
        //  on calls that specifically refer to them
        var headsMatchSides = !tam('title').contains('Heads?|Sides?'.r);
        //  Try to match the formation to the current dancer positions
        var ctx2q = CallContext.fromXML(tam);
        var mm = ctxwork.matchFormations(ctx2q,sexy: sexy, fuzzy: fuzzy,
            handholds: !fuzzy, headsMatchSides: headsMatchSides);
        if (mm != null) {
          var matchResult = mm.match;
          var totOffset = matchResult.offsets.fold<double>(0.0, (s, v) => s + v.length);
          var totAngle = matchResult.angles.fold<double>(0.0, (s, a) => s + a);
          if (totOffset < bestOffset && totAngle.isAbout(0.0)) {
            xelem = tam;
            xmlmap = mm.map;
            ctx2 = ctx2q;
            bestOffset = totOffset;
            level = LevelData.find(link)!;
            found = true;
          }
        }
      }
    }
    return found;
  }

  @override
  Future<void> performCall(CallContext ctx) async {

    var testCall =     AnimatedCall('Heads Lead Right',
        Formations.StaticSquare,
        [
          Path([
            ...(Paths.HingeRight..changeBeats(4)..scale(0.5,0.5)..skew(3.5,-1.5)).movelist,
          ]),
          Path([
            ...(Paths.QuarterRight..changeBeats(4)..changehands(1)..skew(2.0,0.0)).movelist,
          ]),
          Path([
          ]),
          Path([
          ]),
        ],
        parts:'');

    //  If actives != dancers, create another call context with just the actives
    var dc = ctx.dancers.length;
    var ac = ctx.actives.length;
    exact = dc == ac;
    var ctxwork = ctx;
    if (!exact) {
      //  Don't try to match unless the actives are together
      if (ctx.actives.any((d) =>
          ctx.inBetween(d, ctx.actives.first).any((it) => !it.data.active)
      ))
        perimeter = true;
      ctxwork = CallContext.fromContext(ctx,dancers:ctx.actives);
    }

    //var found = await lookupCall(ctxwork);
    var found = lookupAnimatedCall(ctxwork);

    if (found) {
      if (['Allemande Left',
        'Dixie Grand',
        'Right and Left Grand'].contains(name)) {
        if (!ctxwork.checkResolution(ctx2, xmlmap)) {
          ctxwork.resolutionError = true;
        }
      }
    } else {
      try {
        await ctx.applyCodedCall(name);
      } on CallError {
        //  Found the call but formations did not match
        throw FormationNotFoundError(name);
      }
      return;
    }
    final allPaths = xcall.formation.dancers.map((d) => d.path).toList();
    final asymmetric = xcall.isAsymmetric;
    //  If moving just some of the dancers,
    //  see if we can keep them in the same shape
    if (ctx.actives.length < ctx.dancers.length) {
      //  No animations have been done on ctxwork,
      //  so dancers are still at the start points
      var ctx3 = CallContext.fromContext(ctxwork);
      //  So ctx3 is a copy of the start point
      //  Now add the paths
      for (var ii = 0; ii < ctx3.dancers.length; ii++) {
        final path = asymmetric ? allPaths[ii] : allPaths[ii >> 1];
        ctx3.dancers[ii].path.add(path);
      }
      //  And move it to the end point
      ctx3.extendPaths();
      ctx3.analyze();
    }
    var endbeat = ctxwork.maxBeats();
    for (var i3 = 0; i3 < xmlmap.length; i3++) {
      var m = xmlmap[i3];
      var p = Path.fromPath(asymmetric ? allPaths[m] : allPaths[m >> 1]);
      //  Add XML path to dancer
      ctxwork.actives[i3].path.add(p);
    }

    print('  Added call with $endbeat beats');
    ctxwork.animate(endbeat);
    print('  Finding offsets');
    print(ctxwork.dancers.show());
    print(ctx2.dancers.show());
    var matchResult = ctxwork.computeFormationOffsets(ctx2, xmlmap, delta: 0.2);
    ctxwork.adjustToFormationMatch(matchResult,adjustFirstMovement: true);
    //  Move dancers to end so any subsequent modifications (e.g. roll)
    //  use the new position
    print('  Animating to end');
    ctxwork.animateToEnd();

    //  Mark dancers that had no XML move as inactive
    //  Needed for post-call modifications e.g. spread
    //  But first check if actives are specifically flagged in the animation
    print('  Finding inactive dancers');
    var inactives = <Dancer>[];
    switch (xcall.actives) {
      case 'Heads' :
        inactives = ctxwork.dancers.where((d) => d.isSide).toList();
        break;
      case 'Sides' :
        inactives = ctxwork.dancers.where((d) => d.isHead).toList();
        break;
      case 'Centers' :
        inactives = ctxwork.dancers.where((d) => !d.data.center).toList();
        break;
      case 'Ends' :
        inactives = ctxwork.dancers.where((d) => !d.data.end).toList();
        break;
      case 'All' :
        break;
      default :
        for (var i4 = 0; i4 < xmlmap.length; i4++) {
          var m = xmlmap[i4];
          var path = asymmetric ? allPaths[m] : allPaths[m >> 1];
          if (path.movelist.isEmpty)
            inactives.add(ctxwork.actives[i4]);
        }
    }
    print('Marking inactives: $inactives');
    inactives.forEach((d) {
      d.data.active = false;
    });

    if (!exact) {
      print('  Appending to source');
      ctxwork.appendToSource();
    }
    print('  done');

  }



}