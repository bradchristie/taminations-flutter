/*

  Taminations Square Dance Animations
  Copyright (C) 2024 Brad Christie

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


import '../../animated_call.dart';
import '../../debug_switch.dart';
import '../words.dart';
import 'call.dart';
import 'common.dart';

class XMLCall extends Call {

  late AnimatedCall xcall;
  late List<int> xmlmap;
  late CallContext ctx2;
  CallContext? codedContext;
  bool exact = false;
  bool found = false;
  var perimeter = false;
  var foundLink = '';
  @override String get help => 'Look at the animations of $name to find '
      'what the sequencer will accept';

  @override
  String toString() => 'XMLCall:$name';

  static const noInactiveCalls = ['slip','slither'];

  static List<AnimatedCall> lookupAnimatedCall(String norm) =>
      Words.normalizedCallIndex[norm.lc] ?? [];
  XMLCall(String title) : super(title);

  bool matchAnimatedCall(CallContext ctx) {
    var bestOffset = double.maxFinite;
    var fuzzy = true;
    var foundOne = false;
    var ctxwork = CallContext.fromContext(ctx);
    ctxwork.dancers.center();
    for (var tam in lookupAnimatedCall(norm)) {
      if (tam.notForSequencer)
        continue;
      if (normalizeCall(tam.title).lc != norm.lc)
        continue;
      //  Check for 4-dancer calls that do not work for 8 dancers
      if (tam.isExact && !exact)
        continue;
      //  Check for calls that must go around the centers
      if (perimeter && !tam.isPerimeter)
        continue;
      var headsMatchSides = !tam.title.contains('Heads?|Sides?'.r);
      var sexy = tam.isGenderSpecific;
      var ctx2q = CallContext.fromFormation(tam.formation);
      ctx2q.asymmetric = tam.isAsymmetric;
      //  Asymmetric animations might not be centered
      //  but we need that for mapping to work
      if (ctx2q.asymmetric)
        ctx2q.dancers.center();
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
          level = tam.level;
          foundOne = true;
        }
      }
    }
    return foundOne;
  }

  @override
  void performCall(CallContext ctx) {
    //  If actives != dancers, create another call context with just the actives
    var dc = ctx.dancers.length;
    var ac = ctx.actives.length;
    exact = dc == ac;
    found = false;
    CallContext ctxwork;
    if (!exact) {
      //  Don't try to match unless the actives are together
      if (ctx.actives.any((d) =>
          ctx.inBetween(d, ctx.actives.first).any((it) => !it.data.active)
      ))
        perimeter = true;
      ctxwork = CallContext.fromContext(ctx,dancers:ctx.actives);
    } else
      ctxwork = CallContext.fromContext(ctx);
    //  Needs to be centered since we are comparing to other calls that are centered
    ctxwork.dancers.center();

    //  Need to save this result so sequencer model knows if this is really XML
    //  or punted to a coded call
    found = matchAnimatedCall(ctxwork);
    if (found) {
      DebugSwitch.perform.log('Applying ${xcall.title} from ${xcall.from}');
      if (['Allemande Left',
        'Dixie Grand',
        'Right and Left Grand'].contains(name)) {
        if (!ctxwork.checkResolution(ctx2, xmlmap)) {
          ctx.resolutionError = true;
        }
      }
    } else {
      if (ctx.noCode)
        throw FormationNotFoundError(name);
      try {
        ctx.applyCodedCall(name);
        return;
      } on CallNotFoundError {
        //  Found the call but no code and formations did not match
        throw FormationNotFoundError(name);
      } on CallError {
        //  See if it works with an implied "Do Your Part"
        if (ctx.actives.length < ctx.dancers.length && ctx.canDoYourPart) {
          ctx.applyCalls('Do Your Part $name');
          ctx.didYourPart = true;
        } else
          rethrow;
        return; //  DYP CodedCall that worked
      }
    }

    final allPaths = CallContext.fromFormation(xcall.formation,withPaths: xcall.paths)
        .dancers.map((d) => d.path).toList();
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
        ctx3.dancers[ii].path += path;
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
      ctxwork.actives[i3].path += p;
      //  Remember any special roll
      ctxwork.actives[i3].roll = xcall.roll;
    }

    ctxwork.animate(endbeat);
    var matchResult = ctxwork.computeFormationOffsets(ctx2, xmlmap, delta: 0.2);
    ctxwork.adjustToFormationMatch(matchResult,adjustFirstMovement: true);

    //  Mark dancers that had no XML move as inactive
    //  Needed for post-call modifications e.g. spread
    //  But first check if actives are specifically flagged in the animation
    var inactives = <DancerModel>[];
    ctxwork.animate(0);
    ctxwork.analyze();
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

    ctxwork.appendToSource();

  }

}