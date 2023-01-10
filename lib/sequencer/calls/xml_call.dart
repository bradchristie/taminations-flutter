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

import '../../calls/b1/calls_index.g.dart' as b1;
import '../../calls/b2/calls_index.g.dart' as b2;
import '../../calls/ms/calls_index.g.dart' as ms;
import '../../calls/plus/calls_index.g.dart' as plus;
import '../../calls/a1/calls_index.g.dart' as a1;
import '../../calls/a2/calls_index.g.dart' as a2;
import '../../calls/c1/calls_index.g.dart' as c1;
import '../../calls/c2/calls_index.g.dart' as c2;
import '../../calls/c3a/calls_index.g.dart' as c3a;
import '../../calls/c3b/calls_index.g.dart' as c3b;

import 'animated_call.dart';
import 'common.dart';
import 'call.dart';

class XMLCall extends Call {

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

  static Map<LevelData,List<AnimatedCall>> lookupAnimatedCall(String norm) =>
     {
      LevelData.B1: b1.CallsIndex.index[norm] ?? <AnimatedCall>[],
      LevelData.B2: b2.CallsIndex.index[norm] ?? <AnimatedCall>[],
      LevelData.MS: ms.CallsIndex.index[norm] ?? <AnimatedCall>[],
      LevelData.PLUS: plus.CallsIndex.index[norm] ?? <AnimatedCall>[],
      LevelData.A1: a1.CallsIndex.index[norm] ?? <AnimatedCall>[],
      LevelData.A2: a2.CallsIndex.index[norm] ?? <AnimatedCall>[],
      LevelData.C1: c1.CallsIndex.index[norm] ?? <AnimatedCall>[],
      LevelData.C2: c2.CallsIndex.index[norm] ?? <AnimatedCall>[],
      LevelData.C3A: c3a.CallsIndex.index[norm] ?? <AnimatedCall>[],
      LevelData.C3B: c3b.CallsIndex.index[norm] ?? <AnimatedCall>[]
    };

  XMLCall(String title) : super(title);

  bool matchAnimatedCall(CallContext ctxwork) {
    var bestOffset = double.maxFinite;
    var fuzzy = true;
    for (var entry in lookupAnimatedCall(norm).entries) {
      for (var tam in entry.value) {
        //  Check for 4-dancer calls that do not work for 8 dancers
        if (tam.isExact && !exact)
          continue;
        var headsMatchSides = !tam.title.contains('Heads?|Sides?'.r);
        var sexy = tam.isGenderSpecific;
        var ctx2q = CallContext.fromFormation(tam.formation);
        ctx2q.asymmetric = tam.isAsymmetric;
        ctx2q.animate(0.0);
        var mm = ctxwork.matchFormations(ctx2q, sexy: sexy, fuzzy: fuzzy,
            handholds: !fuzzy, headsMatchSides: headsMatchSides);
        if (mm != null) {
          var matchResult = mm.match;
          var totOffset = matchResult.offsets.fold<double>(
              0.0, (s, v) => s + v.length);
          //var totAngle = matchResult.angles.fold<double>(0.0, (s, a) => s + a);
          if (totOffset < bestOffset) { // && totAngle.isAbout(0.0)) {
            xcall = tam;
            xmlmap = mm.map;
            ctx2 = ctx2q;
            bestOffset = totOffset;
            level = entry.key;
            found = true;
          }
        }
      }
    }
    return found;
  }

  @override
  void performCall(CallContext ctx) {
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

    var found = matchAnimatedCall(ctxwork);
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
        ctx.applyCodedCall(name);
      } on CallError {
        //  Found the call but formations did not match
        throw FormationNotFoundError(name);
      }
      return;
    }
    final allPaths = xcall.formation.dancers.map((d) => d.path).toList();
    //  If moving just some of the dancers,
    //  see if we can keep them in the same shape
    if (ctx.actives.length < ctx.dancers.length) {
      //  No animations have been done on ctxwork,
      //  so dancers are still at the start points
      var ctx3 = CallContext.fromContext(ctxwork);
      //  So ctx3 is a copy of the start point
      //  Now add the paths
      for (var ii = 0; ii < ctx3.dancers.length; ii++) {
        final path = allPaths[ii];
        ctx3.dancers[ii].path.add(path);
      }
      //  And move it to the end point
      ctx3.extendPaths();
      ctx3.analyze();
    }
    var endbeat = ctxwork.maxBeats();
    for (var i3 = 0; i3 < xmlmap.length; i3++) {
      var m = xmlmap[i3];
      var p = Path.fromPath(allPaths[m]);
      //  Add XML path to dancer
      ctxwork.actives[i3].path.add(p);
    }

    ctxwork.animate(endbeat);
    var matchResult = ctxwork.computeFormationOffsets(ctx2, xmlmap, delta: 0.05);
    ctxwork.adjustToFormationMatch(matchResult,adjustFirstMovement: true);
    ctxwork.animateToEnd();

    //  Mark dancers that had no XML move as inactive
    //  Needed for post-call modifications e.g. spread
    //  But first check if actives are specifically flagged in the animation
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
          var path = allPaths[m];
          if (path.movelist.isEmpty)
            inactives.add(ctxwork.actives[i4]);
        }
    }
    inactives.forEach((d) {
      d.data.active = false;
    });

    if (!exact) {
      ctxwork.appendToSource();
    }
  }

}