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

import '../common_flutter.dart';
import '../moves.dart';
import 'call_error.dart';
import 'calls/action.dart';
import 'calls/call.dart';
import 'calls/coded_call.dart';
import 'calls/set_debug_switches.dart';
import 'calls/xml_call.dart';

enum Rolling {
  LEFT,
  RIGHT,
  NONE
}

class FormationMatchResult {

  final Matrix transform;
  final List<Vector> offsets;
  final List<double> angles;
  FormationMatchResult(this.transform,this.offsets,this.angles);

}

class MappingContext {

  String name;
  final List<int> map;
  final FormationMatchResult match;
  double totalOffset;

  MappingContext(this.name,this.map,this.match,this.totalOffset);
  String show(ctxfrom,ctxto) => map.mapIndexed((index, item) =>
       '${ctxfrom.dancers[index]}=>${ctxto.dancers[map[item]]}').join(' ');

}

class CallContext {

  static var standardFormations = {
    Formation('Normal Lines Compact'): 1.0,
    Formation('Normal Lines'): 1.0,
    Formation('Double Pass Thru'): 1.0,
    Formation('Quarter Tag') : 1.5,
    Formation('Tidal Line RH') : 1.0,
    Formation('Squared Set') : 1.0
  };

  static var twoCoupleFormations = {
    Formation('Facing Couples Compact') : 1.0,
    Formation('Facing Couples') : 1.0,
    Formation('Two-Faced Line RH') : 1.0,
    Formation('Diamond RH') : 1.0,
    Formation('Single Eight Chain Thru') : 1.0,
    Formation('Single Quarter Tag') : 1.0,
    Formation('Square RH') : 1.0
  };

  static Map<RegExp,String> formationMap = {
    '.*lines?'.ri : 'Normal Lines' ,
    '.*waves?'.ri : 'Normal Lines' ,
    '.*thar'.ri : 'Thar RH Boys' ,
    '.*square(d)?set'.ri : 'Squared Set' ,
    '.*boxes'.ri : 'Eight Chain Thru' ,
    '.*columns?'.ri : 'Eight Chain Thru' ,
    '.*(1|3)4tag'.ri : 'Quarter Tag' ,
    '.*diamonds?'.ri : 'Diamonds RH Girl Points' ,
    '.*tidal(wave|line)?'.ri : 'Tidal Line RH' ,
    '.*hourglass'.ri : 'Hourglass RH BP' ,
    '.*galaxy'.ri : 'Galaxy RH GP' ,
    '.*butterfly'.ri : 'Butterfly RH' ,
    '.*o'.ri : 'O RH',
    //  two couples
    '.*box'.ri : 'Facing Couples'
  };

  static final genderMap = {
    'boy': Gender.BOY,
    'girl': Gender.GIRL,
    'phantom': Gender.PHANTOM
  };

  /////// end of static code ///////

  late List<DancerModel> dancers;
  String callname = '';
  LevelData level = LevelData.find('b1')!;
  List<Call> callstack = [];
  List<List<DancerModel>> groups = [];
  Map<double,List<DancerModel>> xSlices = {};
  Map<double,List<DancerModel>> ySlices = {};


  String get groupstr => groups.map((e) => e.length).join();
  CallContext? _source;
  CallContext? get parent => _source;
  bool _snap = true;
  bool _thoseWhoCan = false;
  bool _noExtend = false;
  bool canDoYourPart = true;
  bool resolutionError = false;
  bool asymmetric = false;
  bool didYourPart = false;
  int geometry = Geometry.SQUARE;

  //  Create a context from an array of dancers
  CallContext.fromDancers(List<DancerModel> dancers, {withPaths=false}) {
    this.dancers = dancers.map((d) {
      d.animate(withPaths?0:d.beats);
      var d2 = d.clone();
      if (withPaths)
        d2.path = d.path;
      return d2;
    }).toList().center();
    if (!dancers.areDancersOrdered())
      this.dancers = this.dancers.inOrder();
    asymmetric = !dancers.areDancersOrdered();
    animateToEnd();
    allActive();
  }

  CallContext.fromContext(
      CallContext source, {
        List<DancerModel>? dancers,
        double beat = double.maxFinite,
        withCalls = false
      }) {
    dancers ??= source.dancers;
    dancers.forEach((d) { d.animate(beat); });
    this.dancers = dancers.clone();
    if (!source.asymmetric && !dancers.areDancersOrdered())
      this.dancers = this.dancers.inOrder();
    asymmetric = !dancers.areDancersOrdered();
    _source = source;
    _thoseWhoCan = source._thoseWhoCan;
    _snap = source._snap;
    canDoYourPart = source.canDoYourPart;
    if (withCalls)
      callstack = source.callstack.copy();
  }

  CallContext.fromFormation(Formation f,
      {List<Path>? withPaths, int geometryType=Geometry.SQUARE}) {
    var geometryCount = geometryType;
    if (f.asymmetric) {
      geometryType = Geometry.ASYMMETRIC;
      geometryCount = 1;
      dancers = f.dancers.map((d) => d.clone()).toList();
    } else {
      var geometry = Geometry(geometryType);
      dancers = [for (var d in f.dancers) for (var g = 0; g < geometryType; g++)
        DancerModel.cloneWithGeometry(d, geometry.startMatrix(d.starttx, g))];
    }
    //  Set default DancerModel numbers
    var numbers = ['1', '5', '2', '6', '3', '7', '4', '8'];
    var couples = ['1', '3', '1', '3', '2', '4', '2', '4'];
    for (var i=0; i<min(dancers.length,numbers.length); i++) {
      dancers[i].number = numbers[i];
      dancers[i].numberCouple = couples[i];
    }
    asymmetric = f.asymmetric;
    if (withPaths != null) {
      for (var i=0; i<f.dancers.length; i++) {
        for (var g = 0; g < geometryCount; g++)
          dancers[i*geometryCount + g].path = withPaths[i].clone();
      }
    }
  }

  T findImplementor<T>({Call? startFrom}) {
    var startIndex = callstack.indexOf(startFrom ?? callstack.first);
    for (var i=0; i<callstack.length*2; i++) {
      var ix = (i ~/ 2) * (i.isOdd ? 1 : -1) + startIndex;
      if (ix >= 0 && ix < callstack.length) {
        var call = callstack[ix];
        if (call is T) {
          return call as T;
        }
        else if (call is XMLCall && call.codedContext != null) {
          try {
            var innerCall = call.codedContext!.findImplementor<T>();
            callstack.replaceRange(ix,ix+1,call.codedContext!.callstack);
            return innerCall;
          } on CallError {
            continue;
          }
        }
      }
    }
    throw CallError('Unable to find call that implements $T');
  }

  void noSnap({bool recurse=true}) {
    _snap = false;
    if (recurse) {
      for (var s = _source; s != null; s = s._source)
        s._snap = false;
    }
  }

  //  Get the active dancers, e.g. for 'Boys Trade' the boys are active
  List<DancerModel> get actives => dancers.where( (d) => d.data.active ).toList();
  set actives(List<DancerModel> from) {
    for (var d in dancers)
      d.data.active = from.contains(d);
  }
  List<DancerModel> get inActives => dancers.where( (d) => !d.data.active ).toList();
  void allActive() {
    for (var d in dancers)
      d.data.active = true;
  }
  Set<DancerModel> saveActives() => dancers.where((d) => d.data.active).toSet();
  void restoreActives(Set<DancerModel> saved) {
    for (var d in dancers)
      d.data.active = saved.contains(d);
  }

  List<DancerModel> movingDancers() => dancers.where((d) =>
      d.path.movelist.any((m) => m.fromCall)).toList();

  double get angleOff90 => dancers.first.angleFacing.angleOff90;
   //   dancers.map((d) => d.angleFacing.angleOff90)
   //       .fold<double>(0.0, (a, b) => a.abs() + b.abs()) / dancers.length;


  /// Append the result of processing this CallContext to its source.
  /// The CallContext must have been previously cloned from the source.
  //  Return true if anything new was added.
  bool appendToSource([CallContext? ctx, bool adjust=false]) {
    var didSomething = false;
    dancers.forEach((clone) {
      var original = ctx == null
          ? clone.clonedFrom
          : ctx.dancers.where((d) => d == clone).firstOrNull;
      if (original != null) {
        //  Phantoms might have been rotated in clone,
        //  so set start angle in original to match
        if (clone.gender == Gender.PHANTOM && original.path.movelist.isEmpty)
          original.setStartAngle(clone.starttx.angle);
        didSomething |= clone.path.movelist.isNotEmpty;
        if (adjust) {
          //  Adjust path to match final position of subcontext
          //  instead of appending moves, like in adjustToFormationMatch
          original.animateToEnd();
          clone.animateToEnd();
          var offset = original.location - clone.location;
          original.animateToEnd();
          //  Apply the offset
          var vd = offset.rotate(-original.angleFacing);
          original.path = original.path.skewFromEnd(-vd.x, -vd.y);
        } else
          //  just append clone
          original.path += clone.path;
        original.animateToEnd();
        if (!clone.isActive)
          original.data.active = false;
      }
    });
    if (_source != null && _source!.level < level)
      _source!.level = level;
    ctx?.didYourPart |= didYourPart;
    ctx?.asymmetric |= dancers.areDancersOrdered();
    ctx?.resolutionError |= resolutionError;
    return didSomething;
  }



  //  Create a new CallContext from a list of dancers
  //  (usually a subset of this CallContext dancers).
  //  Apply a function as a method of the new CallContext.
  //  Then transfer any new calls from the created CallContext to this CallContext.
  //  Return true if anything new was added.
  bool subContext(Iterable<DancerModel> dancers, void Function(CallContext) block) {
    var ctx = CallContext.fromContext(this,dancers:dancers.toList().inOrder());
    ctx.analyze();
    block(ctx);
    return ctx.appendToSource(this);
  }

  void activesContext(void Function(CallContext) block) {
    if (actives.length == dancers.length)
      block(this);
    else
      subContext(actives,block);
  }

  //  Create a new CallContext from a selection of the current context
  bool selectContext(Call filter, void Function(CallContext) block) {
    var savedActives = saveActives();
    filter.performCall(this);
    var retval = subContext(actives,block);
    restoreActives(savedActives);
    return retval;
  }

  //  Build a CallContext from the next calls on the stack
  //  up to and including the next Action.
  //  Used for concepts and modifications.
  CallContext? nextActionContext(Call thisCall,
      { List<DancerModel>? dancers, bool greedy=false }) {
    final stackIndex = callstack.indexOf(thisCall);
    final actionctx = CallContext.fromContext(this,dancers:dancers);
    //  Look for the next action on the stack
    var call = callstack[stackIndex];
    while (stackIndex+1 < callstack.length) {
      call = callstack.removeAt(stackIndex+1);
      actionctx.callstack.add(call);
      if (!greedy && (call is Action || call is XMLCall))
        return actionctx;
    }
    return greedy ? actionctx : null;
  }

  void thoseWhoCanOnly() {
    _thoseWhoCan = true;
  }

  void noExtend() {
    _noExtend = true;
  }

  Path dancerCannotPerform(DancerModel d, String call) {
    if (_thoseWhoCan)
      return Path();
    throw CallError('Dancer $d cannot $call.');
  }

  void _checkForAction(String calltext) {
    if (callstack.none((c) => c is Action || c is XMLCall || c is SetDebugSwitch))
      throw CallError('$calltext does nothing.');
  }

  void applySpecifier(String calltext,{bool negate=false}) {
    var ctx2 = CallContext.fromContext(this);
    ctx2.interpretCall(calltext,noAction: true);
    ctx2.performCall();
    for (var d in actives) {
      if (ctx2.inActives.contains(d) ^ negate)
        d.data.active = false;
    }
  }

  void _applyCall(String call) {
    var ctx2 = CallContext.fromContext(this);
    ctx2.interpretCall(call);
    ctx2.performCall();
    ctx2.appendToSource();
  }

  void applyCalls(String call1, [String? call2, String? call3, String? call4]) {
    var calls = [call1,call2,call3,call4].whereType<String>();
    for (var call in calls) {
      final saved = saveActives();
      _applyCall(call);
      restoreActives(saved);
    }
  }

  void applyCodedCall(String call) {
    var ctx2 = CallContext.fromContext(this);
    ctx2.interpretCall(call,skipFirstXML: true);
    ctx2.performCall();
    ctx2.appendToSource();
  }

  CallContext? _checkCalls(List<String> calls) {
    var testctx = CallContext.fromContext(this);
    try {
      for (var call in calls) {
        testctx.applyCalls(call);
        if (testctx.isCollision())
          return null;
      }
    } on CallError catch (_) {
      return null;
    }
    return testctx;
  }

  void animate(double beat) {
    for (var d in dancers)
      d.animate(beat);
  }
  void animateToEnd() {
    for (var d in dancers)
      d.animateToEnd();
  }

  String _cleanupCall(String calltext) {
    //  Remove any non-alphanums except some used in calls
    //  Underscore is used for hidden calls used internally by the sequencer
    //  Dot for fractions (Swing Thru 1.5)
    //  Slash also for fractions (Swing Thru 1 1/2)
    //  Dash for Mini-Busy, Out-Roll Circulate e.g.
    return calltext.replaceAll('[^a-zA-Z0-9_./-/&]'.r,' ')
    //  Clean up any whitespace
        .replaceAll('\\s+'.r, ' ').trim()
    //  Standardize capitalization
        .capWords();
  }

  /// This is the main loop for interpreting a call
  ///  [calltxt]  One complete call, lower case, words separated by single spaces
  ///  [noAction] set to true if it's ok for this call not to do anything
  void interpretCall(String calltext,
      {bool noAction = false, bool skipFirstXML = false}) {
    calltext = _cleanupCall(calltext);
    CallError err = CallNotFoundError(calltext);
    //  Clear out any previous paths from incomplete parsing
    for (var d in dancers) {
      d.path = Path();
    }
    callname = '';
    //  If a partial interpretation is found (like 'boys' of 'boys run')
    //  it gets popped off the front and this loop interprets the rest
    while (calltext.isNotEmpty) {
      //  Try chopping off each word from the end of the call until
      //  we find something we know
      var foundOneCall = false;
      //  Hack to make sure Trade Circulate is not split up
      //  Needed for Phantom Trade Circulate
      var chopped = calltext.matches('trade circulate'.ri)
          ? ['Trade Circulate'] : calltext.chopped();
      for (var onecall in chopped) {
        DebugSwitch.parsing.log('Trying $onecall');
        //  First try to find a snapshot match
        var canDoXML = (onecall.norm.lc != calltext.norm.lc || !skipFirstXML) &&
            (callstack.isEmpty || !callstack.last.nextCallCoded);
        if (canDoXML) {
          try {
            foundOneCall = matchXMLcall(onecall);
          } on CallError catch (err2) {
            err = err2;
          }
        }
        //  Then look for a code match
        foundOneCall = foundOneCall || matchCodedCall(onecall);
        //  Finally try a fuzzier snapshot match
        if (canDoXML) {
          try {
            foundOneCall =
                foundOneCall || matchXMLcall(onecall, fuzzy: true);
          } on CallError catch (err3) {
            err = err3;
          }
        }
        if (foundOneCall) {
          DebugSwitch.parsing.log('    Found $onecall as ${callstack.last}');
          //  Remove the words we matched, break out of
          //  the chopped loop, and continue if any words left
          calltext = calltext.replaceFirst(onecall, '').trim();
          skipFirstXML = false;
          break;
        }
      }
      //  Every combination from calltext.chopped failed
      if (!foundOneCall) {
        throw err;
      }
    }
    //  calltext empty - successful parse complete
    if (!noAction)
      _checkForAction(calltext);
  }

  //  Main routine to map a call to an animation in a Taminations XML file
  bool matchXMLcall(String calltext, {bool fuzzy = false}) {
    //  Try to find a match in the xml animations
    var norm = normalizeCall(calltext);
    if (XMLCall.lookupAnimatedCall(norm).isNotEmpty) {
      final xmlCall = XMLCall(calltext);
      try {
        xmlCall.codedContext = CallContext.fromContext(this)
          ..interpretCall(calltext, skipFirstXML: true);
      } on CallError {
        xmlCall.codedContext = null;
      }
      xmlCall.addToStack(this);
      callname += xmlCall.name + ' ';
      return true;
    }
    return false;
  }

  //  For calls that should only be used when the square is resolved,
  //  check that the dancers are in the correct order.
  //  This is only used for XML calls, coded calls check in their code.
  //  Since the XML dancers are resolved, the user's dancers must map
  //  to them in order plus or minus a rotation.
  //  So the mapping of the couples numbering mod 4 must be the same.
  bool checkResolution(CallContext ctx2, List<int> mapping) {
    var pairings = dancers.indices.map((i) {
      var d = dancers[i];
      return  (d.numberCouple.d - ctx2.dancers[mapping[i]].numberCouple.d + 4) % 4;
    });
    return pairings.toSet().length == 1;
  }

  //  Once a mapping of two formations is found,
  //  this finds the best rotation to fit one onto the other
  //  and computes the difference between the two.
  FormationMatchResult computeFormationOffsets(CallContext ctx2, List<int>mapping,
      {List<int>?rotated, double delta=0.1}) {
    var dvbest = <Vector>[];
    var dabest = <double>[];
    //  We don't know how the XML formation needs to be turned to overlap
    //  the current formation.  So do an RMS fit to find the best match.
    var bxa = [ [ 0.0, 0.0], [0.0,0.0] ];
    for (var i=0; i<dancers.length; i++) {
      var d1 = dancers[i];
      var v1 = d1.location;
      var v2 = ctx2.dancers[mapping[i]].location;
      bxa[0][0] += v1.x * v2.x;
      bxa[0][1] += v1.y * v2.x;
      bxa[1][0] += v1.x * v2.y;
      bxa[1][1] += v1.y * v2.y;
      //  Also add a point in front of the dancers, so it will match
      //  the direction the dancers are facing
      //  And another point to the left
      for (var x=0; x<2; x+=1) {
        var a1 = d1.angleFacing + x*pi/2;
        var v1f = v1 + Vector(cos(a1), sin(a1)) * 0.1;
        var a2 = ctx2.dancers[mapping[i]].angleFacing;
        var v2f = v2 + Vector(cos(a2), sin(a2)) * 0.1;
        bxa[0][0] += v1f.x * v2f.x;
        bxa[0][1] += v1f.y * v2f.x;
        bxa[1][0] += v1f.x * v2f.y;
        bxa[1][1] += v1f.y * v2f.y;
      }
    }
    var svdSolution =  Matrix(bxa[0][0], bxa[1][0], 0.0, bxa[0][1], bxa[1][1], 0.0).svd22();
    var u = svdSolution.item1;
    var v = svdSolution.item3;
    var ut = u.transpose();
    var rotmat = (v * ut).snapTo90(delta:delta);
    //  Now rotate the formation and compute any remaining
    //  differences
    for (var j=0; j<dancers.length; j++) {
      var d2 = dancers[j];
      var v1 = d2.location;
      var v2 = rotmat * ctx2.dancers[mapping[j]].location;
      dvbest.add(v1 - v2);
      var a1 = d2.angleFacing;
      //var r = rotated?[mapping[j]].d.toRadians ?? 0.0;
      var a2 = (rotmat * ctx2.dancers[mapping[j]].tx).angle; // + r;
      dabest.add(a1.angleDiff(a2));
    }
    return FormationMatchResult(rotmat,dvbest,dabest);
  }

  /*
   * Algorithm to match formations
   * Match dancers relative to each other, rather than compare absolute positions
   * Returns integer values for axis and quadrant directions
   *           0
   *         1 | 7
   *       2 --+-- 6
   *         3 | 5
   *           4
   * 2 cases
   *   1.  Dancers facing same or opposite directions
   *       - If dancers are lined up 0, 90, 180, 270 angles must match
   *       - Other angles match by quadrant
   *   2.  Dancers facing other relative directions (commonly 90 degrees)
   *       - Dancers must match quadrant or adj boundary
   *
   *
   *
   */
  static int _angleBin(double a) {
    if (a.isAround(0.0)) return 0;
    if (a.isAround(pi/2)) return 2;
    if (a.isAround(pi)) return 4;
    if (a.isAround(-pi/2)) return 6;
    if (a > 0 && a < pi/2) return 1;
    if (a > pi/2 && a < pi) return 3;
    if (a < 0 && a > -pi/2) return 7;
    if (a < -pi/2 && a > -pi) return 5;
    return -1;
  }

  static int dancerRelation(DancerModel d1, DancerModel d2) => _angleBin(d1.angleToDancer(d2));

  //  Test two sets of dancers to see if the formations match.
  //  Most often ctx2 is a defined formation.
  //  Returns a mapping from this context to ctx2
  //  or null if no mapping.
  MappingContext? matchFormations(CallContext ctx2,{
    bool sexy=false, // don't match girls with boys
    bool fuzzy=false,  // dancers can be somewhat offset
    int rotate=0, // rotate dancers by 90s or 180 degrees to match
    bool handholds=true,// dancers holding hands don't match dancers not
    //  For calls specific to Heads or Sides
    //  set headsmatchsides to false
    bool headsMatchSides=true,
    bool subformation=false,  //  don't need to match all the dancers of ctx2
    double maxError=1.9,
    double delta = 0.2,
    double maxAngle = 0.2
  }) {
    DebugSwitch.mapping.log('matchFormations ${dancers.length}  ${ctx2.dancers.length}');
    if (!subformation && dancers.length != ctx2.dancers.length)
      return null;
    //  Work on a copy of this CallContext, rotating dancers can mess it up
    var workctx = CallContext.fromContext(this);
    //  Find mapping using DFS
    MappingContext? bestMapping;
    var mapping = List.filled(workctx.dancers.length, -1);
    var rotated = List.filled(workctx.dancers.length, 0);
    var mapindex = 0;
    while (mapindex >= 0 && mapindex < workctx.dancers.length) {
      var nextmapping = mapping[mapindex] + 1;
      var found = false;
      while (!found && nextmapping < ctx2.dancers.length) {
        //  Dancers in both contexts must be pairs of diagonal opposites
        //  unless asymmetric is specified
        //  Makes mapping much more efficient
        mapping[mapindex] = nextmapping;
        if (!asymmetric && !ctx2.asymmetric)
          mapping[mapindex + 1] = nextmapping ^ 1;
        if (_testMapping(workctx, workctx.dancers, ctx2, mapping, mapindex, sexy:sexy, fuzzy:fuzzy, handholds:handholds, headsmatchsides:headsMatchSides))
          found = true;
        else
          nextmapping += 1;
      }
      if (nextmapping >= ctx2.dancers.length) {
        //  No more mappings for this Dancer
        mapping[mapindex] = -1;
        if (!asymmetric && !ctx2.asymmetric)
          mapping[mapindex + 1] = -1;
        //  If requested, try rotating this DancerModel
        if (rotate > 0 && rotated[mapindex] + rotate < 360) {
          workctx.dancers[mapindex].rotateStartAngle(rotate.d);
          rotated[mapindex] += rotate;
          if (!asymmetric && !ctx2.asymmetric) {
            workctx.dancers[mapindex + 1].rotateStartAngle(rotate.d);
            rotated[mapindex+1] += rotate;
          }
        } else {
          if (rotated[mapindex]+rotate == 360) {
            //  Restore to original
            workctx.dancers[mapindex].rotateStartAngle(rotate.d);
            if (!asymmetric && !ctx2.asymmetric)
              workctx.dancers[mapindex+1].rotateStartAngle(rotate.d);
            rotated[mapindex] = 0;
            if (!asymmetric && !ctx2.asymmetric)
              rotated[mapindex+1] = 0;
          }
          mapindex -= asymmetric || ctx2.asymmetric ? 1 : 2;
        }
      } else {
        //  Mapping for this DancerModel found
        DebugSwitch.mapping.log('Dancer ${dancers[mapindex]} mapped to ${ctx2.dancers[mapping[mapindex]]}');
        mapindex += asymmetric || ctx2.asymmetric ? 1 : 2;
        if (mapindex >= workctx.dancers.length) {
          //  All dancers mapped
          //  Rate the mapping and save if best
          var matchResult = workctx.computeFormationOffsets(ctx2,mapping,rotated: rotated, delta: delta);
          //  Don't match if some dancers are too far from their mapped location
          var maxOffset = matchResult.offsets.firstBy((it) => -it.length)!;
          //  Don't match if rotation is not multiple of 90 degrees
          //  But allow for a rotation of the current context
          //  for fractional tops
          //  TODO check this math!!
          var matchAngle = matchResult.transform.angle.angleOff90;
          var matchAngleDiff1 = angleOff90.angleDiff(ctx2.angleOff90).angleDiff(matchAngle);
          var matchAngleDiff2 = angleOff90.angleDiff(ctx2.angleOff90).angleDiff(-matchAngle);
          //print('$matchAngle  $matchAngleDiff1  $matchAngleDiff2');
          var angleOK = matchAngle.isAround(0.0,delta:0.15) ||
              matchAngleDiff1.isAround(0.0,delta:0.15) ||
              matchAngleDiff2.isAround(0.0,delta:0.15);
          if (maxOffset.length < maxError && angleOK) {
            var totOffset = matchResult.offsets.fold<double>(0.0, (s, v) => s + v.length);
            if (bestMapping == null || totOffset < bestMapping.totalOffset)
              bestMapping = MappingContext(' ', mapping.copy(), matchResult, totOffset);
          }
          // continue to look for more mappings
          mapindex -= asymmetric || ctx2.asymmetric ? 1 : 2;
        }
      }
    }
    return bestMapping;
  }

  bool _testMapping(CallContext ctx1, List<DancerModel> ctx1Dancers, CallContext ctx2, List<int>mapping, int i,
      {bool sexy=false, bool fuzzy=false,
        bool handholds=true, bool headsmatchsides=true}) {

    //  Check for multiple mappings to the same dancer
    for (var j=0; j<i; j++)
      if (mapping[j] == mapping[i])
        return false;

    //  Gender check
    if (sexy && (ctx1Dancers[i].gender != ctx2.dancers[mapping[i]].gender))
      return false;

    //  Special check for calls with 'Heads' or 'Sides'
    if (!headsmatchsides) {
      //  If dancers are in squared set, check that the dancers are in the same
      //  absolute location
      if (ctx1.isSquare()) {
        if (!ctx1Dancers[i].anglePosition.isAround(ctx2.dancers[mapping[i]].anglePosition))
          return false;
      } else {
        //  Dancers not in squared set, call refers to original heads or sides
        if (ctx1Dancers[i].numberCouple.i % 2 !=
            ctx2.dancers[mapping[i]].numberCouple.i % 2)
          return false;
      }
    }

    return ctx1Dancers.indices.every((j) {
      if (mapping[j] < 0 || i == j)
        return true;
      else {
        var relq1 = dancerRelation(ctx1Dancers[i], ctx1Dancers[j]);
        var relt1 = dancerRelation(ctx2.dancers[mapping[i]], ctx2.dancers[mapping[j]]);
        var relq2 = dancerRelation(ctx1Dancers[j], ctx1Dancers[i]);
        var relt2 = dancerRelation(ctx2.dancers[mapping[j]], ctx2.dancers[mapping[i]]);
        //  If dancers are side-by-side, make sure handholding matches by checking distance
        if (handholds && (relq1 == 2 || relq1 == 6) && (relq2 == 2 || relq2 == 6)) {
          var d1 = ctx1Dancers[i].distanceTo(ctx1Dancers[j]);
          var hold1 = d1 < 2.4 &&
              (ctx1.dancerToLeft(ctx1Dancers[i]) == ctx1Dancers[j] ||
                  ctx1.dancerToRight(ctx1Dancers[i]) == ctx1Dancers[j] );
          var d2 = ctx2.dancers[mapping[i]].distanceTo(ctx2.dancers[mapping[j]]);
          var hold2 = d2 < 2.4 &&
              (ctx2.dancerToLeft(ctx2.dancers[mapping[i]]) == ctx2.dancers[mapping[j]] ||
               ctx2.dancerToRight(ctx2.dancers[mapping[i]]) == ctx2.dancers[mapping[j]] );
          return relq1 == relt1 && relq2 == relt2 && hold1 == hold2;
        }
        if (fuzzy) {
          var reldif1 = (relt1-relq1).abs();
          var reldif2 = (relt2-relq2).abs();
          return (reldif1==0 || reldif1==1 || reldif1==7) &&
                 (reldif2==0 || reldif2==1 || reldif2==7);
        }
        return relq1 == relt1 && relq2 == relt2;
      }
    });

  }

  bool matchCodedCall(String callname) {
    var call = CodedCall.fromName(callname);
    if (call != null) {
      call.addToStack(this);
      this.callname += call.name + ' ';
      return true;
    }
    return false;
  }

  //  Perform calls by popping them off the stack until the stack is empty.
  //  This doesn't run an animation, rather it takes the stack of calls
  //  and builds the DancerModel movements.
  CallContext performCall({bool tryDoYourPart=false}) {
    //  Some calls alter the callstack, so save and restore
    final saveCallstack = callstack.copy();
    for (final d in dancers) {
      d.path.clear();
    }
    analyze();
    canDoYourPart = tryDoYourPart;
    for (var i=0; i<callstack.length; i++) {
      var c = callstack[i];
     DebugSwitch.perform.log('Performing ${c.name} with object $c');
      c.performCall(this);
      if (i < callstack.length-1)
        analyze();
      //  A few calls (e.g. Hinge) don't know their level
      //  until the call is performed
      if (c.level > level)
        level = c.level;
      if (!_noExtend)
        extendPaths();
    }
    callstack = saveCallstack;
    return this;
  }

  //  For calls that just apply to the centers, make sure they
  //  stay in the center and don't collide with the other dancers
  //  Also checks if the outer 4 are doing a call that collides
  //  with the centers
  void checkCenters({bool force=false}) {
    if (dancers.length == 8) {
      animate(0.0);
      analyze();
      final moving = force ? center(4) : movingDancers();
      final cw4 = centerWaveOf4();
      final cd4 = centerDiamond();
      final out4 = outer(4);
      //  Make sure that we really have a center 4
      final groupsOK = groups.length > 1 && (groups[0].length == 4 ||
          (groups[0].length == 2 && groups[1].length == 2));
      //  And those are the only dancers performing the call,
      //  or the outer 4 are the only dancers performing the call
      if (moving.length == 4 && (
          (cw4?.containsAll(moving) ?? false) ||
          (cd4?.containsAll(moving) ?? false) ||
          out4.containsAll(moving) ||
          (groupsOK && center(4).containsAll(moving)))) {
        //  Now check if there's a collision between center dancers
        //  and outer dancers
        animateToEnd();
        var minDist = actives.minOf((d) =>
            dancerClosest(d, (d2) => !moving.contains(d2))!.distanceTo(d));
        if (minDist.isGreaterThan(1.0)) {
          if (center(4).containsAll(moving) ||
              out4.containsAll(moving) ||
              (centerWaveOf4()?.containsAll(moving) ?? false) ||
              (centerDiamond()?.containsAll(moving) ?? false))
            return;
        }
        //  Collision likely - squeeze the original center 4 into
        //  a more compact formation
        final ctx2 = CallContext.fromDancers(
            out4.containsAll(moving) ? dancers - moving : moving, withPaths: true);
        if (ctx2.isLines()) {
          ctx2.adjustToFormation(Formation('Compact Wave RH'));
        } else if (ctx2.isDiamond()) {
          ctx2.adjustToFormation(Formation('Diamond Compact'));
        } else if (ctx2.isColumns()) {
          ctx2.adjustToFormation(Formation('Single Double Pass Thru Close'));
        } else
          return;
        for (var d in ctx2.dancers)
          dancers.find(d.number.i).path = d.path;
        animateToEnd();
      }
    }
  }

  //  See if the current DancerModel positions resemble a standard formation
  //  and, if so, snap to the standard
  //  Returns true if a match was found
  bool matchFormationList(Map<Formation,double> formations,
      {double maxOffset = 6.1, double delta = 0.05}) {
    //  Make sure newly added animations are finished
    for (var d in dancers) {
      d.path.recalculate();
      d.animateToEnd();
    }
    MappingContext? bestMapping;
    for (var f in formations.keys) {
      var ctx2 = CallContext.fromFormation(f);
      //  See if this formation matches
      var rot = 180;
      switch (f.name) {
        case 'Double Pass Thru' :
        case 'I-Beam' :
        case 'Squared Set' :
        rot = 90; break;
      }
      var mapping = matchFormations(ctx2,sexy:false,fuzzy:true,rotate:rot,handholds:false, delta: delta);
      if (mapping != null) {
        //  If it does, get the offsets
        var matchResult = mapping.match;
        //  If the match is at some odd angle (not a multiple of 90 degrees)
        //  then consider it bogus
        var angsnap = matchResult.transform.angle / (pi / 2);
        var totOffset = matchResult.offsets.fold<double>(0.0, (s, v) => s + v.length );
        //  Favor formations closer to the top of the list
        //  Especially favor lines
        var favoring = formations[f]!;
        //  Special hack to favor lines over boxes
        var specialHack =
        ((bestMapping?.name.startsWith('Normal Lines') ?? false) &&
            f.name == 'Double Pass Thru');
        if (totOffset < maxOffset && angsnap.isApproxInt(delta : 0.05) && !specialHack) {
          if (bestMapping == null || totOffset*favoring + 0.2 < bestMapping.totalOffset) {
            mapping.name = f.name;
            mapping.totalOffset *= favoring;
            bestMapping = mapping;
          }
        }
      }
    }
    if (bestMapping != null) {
      adjustToFormationMatch(bestMapping.match);
    }
    return bestMapping != null;
  }

  void matchStandardFormation() {
    if (_snap) {
      if (dancers.length == 8) {
        matchFormationList(standardFormations);
        //  One more check for bad I-Beam
        repairFormation(Formation('Misshapen I-Beam'), Formation('I-Beam'));
        repairFormation(Formation('Misshapen X-Beam'), Formation('X-Beam'));
        var ctxLines = CallContext.fromFormation(Formation('Normal Lines'));
        if (matchFormations(ctxLines,rotate: 180) == null &&
            matchFormations(ctxLines,rotate:90) != null) {
          adjustToFormation(Formation('Double Pass Thru'),rotate: 90);
        }
      } else
        matchFormationList(twoCoupleFormations,maxOffset: 2.1);
    }
  }

  void repairFormation(Formation from, Formation to) {
    var ctx1 = CallContext.fromContext(this);
    var incorrect = CallContext.fromFormation(from);
    var mapping = ctx1.matchFormations(
        incorrect, sexy: false, fuzzy: true, rotate: 90, handholds: false);
    if (mapping != null) {
      if (mapping.totalOffset < 5.0) {
        var corrected = CallContext.fromFormation(to);
        var mapping2 = ctx1.matchFormations(corrected, sexy: false,
            fuzzy: true,
            rotate: 90,
            handholds: false);
        if (mapping2 != null)
          adjustToFormationMatch(mapping2.match);
      }
    }
  }

  //  Given a match to a formation, adjust the DancerModel's last move
  //  so it ends with that formation.
  //  Returns true if any adjustment was made.
  bool adjustToFormationMatch(FormationMatchResult match,
      {List<int>? map, bool adjustFirstMovement=false} ) {
    var retval = false;
    animateToEnd();
    for (var i=0; i<dancers.length; i++) {
      if (map != null && map[i] < 0)
        continue;
      var d = dancers[i];
      if (match.offsets[i].length > 0.01 || match.angles[i] > 0.1) {
        retval = true;  // adjustment made
        //  Get the last movement
        Movement m;
        if (d.path.movelist.isNotEmpty)
          m = adjustFirstMovement ? d.path.shift()! : d.path.pop();
        else
          m = StandAhead
            .changeBeats(match.offsets[i].length)
            .notFromCall().pop();
        //  Transform the offset to the DancerModel's angle
        if (adjustFirstMovement)
          d.animate(0);
        else
          d.animateToEnd();
        var vd = -match.offsets[i].rotate(-d.tx.angle);
        var va = -match.angles[i];
        //  Apply it
        m = m.skew(vd.x,vd.y).twist(va);
        if (adjustFirstMovement)
          d.path.unshift(m);
        else
          d.path += m;
      }
    }
    animateToEnd();
    return retval;
  }

  bool adjustToFormation(Formation formation, {
    int rotate = 180,
    bool subformation = false,
    double maxError = 2.9,
    double delta = 0.1}) {
    //  Work on a copy with all dancers active, mapping only uses active dancers???
    //var ctx1 = CallContext.fromContext(this);
    var ctx2 = CallContext.fromFormation(formation);
    animateToEnd();
    var mapping = matchFormations(ctx2,sexy:false,fuzzy:true,rotate:rotate,handholds:false, maxError : maxError, subformation: subformation, delta: delta);
    if (mapping != null) {
      //  If it does, get the offsets
      adjustToFormationMatch(mapping.match);
      return true;
    }
    return false;
  }

  //  Follow the Squared Set convention
  void adjustForSquaredSetCovention() {
    //  First see if we are starting from a squared set
    animate(0.0);
    final ss = CallContext.fromFormation(Formation('Squared Set'));
    final m = matchFormations(ss,rotate: 180, maxError: 0.9);
    if (m != null) {
      //  Applies to only heads or only sides, not if all or a mix are active
      var headsActive = false;
      var sidesActive = false;
      for (var i=0; i<actives.length; i++) {
        final d2 = ss.dancers[m.map[i]];
        if (d2.location.x.abs().isAbout(3.0))
          headsActive = true;
        else
          sidesActive = true;
      }
      if (!headsActive || !sidesActive) {
        animateToEnd();
        //  So now adjust back to squared set if possible
        adjustToFormation(Formation('Squared Set'), rotate: 180);
      }
    }
  }

  ///  Rotate phantoms and find the best match
  ///  for a given call
  ///  Phantoms must be in diagonally opposite pairs
  ///  which are rotated together
  ///  unless asym is set
  ///  as this is required for XML mapping to work
  CallContext? rotatePhantoms(String call,
      {int rotate=180, bool asym=false}) {
    var phantoms = dancers.where((it) => it.gender == Gender.PHANTOM).toList();
    //  Compute number of possibilities
    var rotnum = 360 ~/ rotate;
    var phanum = (asym) ? phantoms.length : phantoms.length ~/ 2;
    var topindex = rotnum.pow(phanum);
    CallContext? bestContext;
    var bestCount = 0;
    //  Loop through each possibility
    for (var mapindex=0; mapindex<topindex; mapindex++) {
      //  Set rotation of each phantom
      //  Flip one phantom selected with a Gray sequence
      //  https://en.wikipedia.org/wiki/Gray_code
      if (mapindex > 0) { //  mapindex == 0 is first check with no rotations
        var p = 0;
        for (var i=0; i<phanum; i++) {
          if ((mapindex ~/ rotnum.pow(i)) % rotnum > 0) {
            p = i;
            break;
          }
        }
        if (asym)
          phantoms[p].rotateStartAngle((rotate).d);
        else {
          phantoms[p * 2].rotateStartAngle((rotate).d);
          phantoms[p * 2 + 1].rotateStartAngle((rotate).d);
        }
      }
      //  The resulting formation must be symmetric
      var isSym = true;
      for (var d1 in dancers) {
        for (var d2 in dancers) {
          if (d1.location.isAbout(-d2.location) &&
          !d1.angleFacing.isAround(d2.angleFacing+pi))
            isSym = false;
        }
      }
      if (isSym) {
        var ctx2 = CallContext.fromContext(this);
        var testctx = ctx2._checkCalls([call]);
        if (testctx != null) {
          //  Good rotation found
          //  See if it's the "Best" rotation
          var count = testctx.movingDancers().length;
          if (count > bestCount) {
            bestContext = ctx2;
            bestCount = count;
          }
        }
      }
      //  This rotation does not work
    }
    return bestContext;
  }

  //  Return max number of beats among all the dancers
  double maxBeats() => dancers.fold(0.0, (v, d) => max(v,d.path.beats));

  //  Return all dancers, ordered by distance from another DancerModel,
  //  that satisfies a conditional
  List<DancerModel> dancersInOrder(DancerModel d, [bool Function(DancerModel d)? f]) =>
      (dancers - d).where(f ?? (d)=>true).toList().sortedBy((d2) => d.distanceTo(d2) );

  //  Return closest dancer that satisfies a given conditional
  DancerModel? dancerClosest(DancerModel d, bool Function(DancerModel d2) f) =>
      dancersInOrder(d,f).firstOrNull;

  //  Return dancer directly in front of given DancerModel
  DancerModel? dancerInFront(DancerModel d) =>
      dancerClosest(d, (d2) => d2.isInFrontOf(d));
  //  Return dancer directly in back of given DancerModel
  DancerModel? dancerInBack(DancerModel d) =>
      dancerClosest(d, (d2) => d2.isInBackOf(d));
  //  Return dancer directly to the right of given DancerModel
  DancerModel? dancerToRight(DancerModel d, {double minDistance=99.0}) =>
      dancerClosest(d, (d2) =>
      d2.isRightOf(d) && !d2.distanceTo(d).isGreaterThan(minDistance));
  //  Return dancer directly to the left of given DancerModel
  DancerModel? dancerToLeft(DancerModel d, {double minDistance=99.0}) =>
      dancerClosest(d, (d2)
      => d2.isLeftOf(d) && !d2.distanceTo(d).isGreaterThan(minDistance));
  //  Return dancer that is facing the front of this DancerModel
  DancerModel? dancerFacing(DancerModel d) {
    var d2 = dancerInFront(d);
    return d2 != null && dancerInFront(d2) == d ? d2 : null;
  }

  //  Return dancers that are in between two other dancers
  List<DancerModel> inBetween(DancerModel d1, DancerModel d2) =>
      dancers.where((d) =>
      d != d1 && d != d2 &&
          (d.distanceTo(d1)+d.distanceTo(d2)).isAbout(d1.distanceTo(d2))).toList();

  //  Return all the dancers to the right, in order
  List<DancerModel> dancersToRight(DancerModel d) =>
      dancersInOrder(d, (d2) => d2.isRightOf(d));

  //  Return all the dancers to the left, in order
  List<DancerModel> dancersToLeft(DancerModel d) =>
      dancersInOrder(d, (d2) => d2.isLeftOf(d));

  //  Return all the dancers in front, in order
  List<DancerModel> dancersInFront(DancerModel d) =>
      dancersInOrder(d, (d2) => d2.isInFrontOf(d));

  //  Return all the dancers in back, in order
  List<DancerModel> dancersInBack(DancerModel d) =>
      dancersInOrder(d, (d2) => d2.isInBackOf(d));

  //  Return outer 2, 4 , 6 dancers
  List<DancerModel> outer(int num) =>
      dancers.sortedWith((d1, d2) => d1.location.length.compareTo(d2.location.length))
          .drop(dancers.length-num);

  //  Return center 2, 4 , 6 dancers
  List<DancerModel> center(int num) {
    //  Special test for center 4 dancers in a line/wave
    //  These are considered the center 4 regardless of
    //  the geometry of the others
    if (num == 4) {
      var cw4 = centerWaveOf4();
      var cd4 = centerDiamond();
      if (cw4 != null && cd4 == null)
        return cw4;
      else if (cd4 != null && cw4 == null)
        return cd4;
    }
    return dancers.sortedWith((d1, d2) =>
        d1.location.length.compareTo(d2.location.length))
        .take(num).toList();
  }

  //  Smarter code for center 6, works for 1/4 and 3/4 tags
  //  Requires call to analyze()
  List<DancerModel> center6() {
    if (dancers.length == 6)
      return dancers;
    if (dancers.length != 8)
      throw CallError('Not enough dancers.');
    if (groups.length < 2)
      throw CallError('Cannot find 6 dancers in center');
    //  Look for the easy case - two dancers obviously further out than the rest
    var farOut = groups.last;
    if (farOut.length == 2) {
      return dancers - farOut;
    } else {
      // That didn't work - look for a 2-2-4 arrangement where the outer 4
      // are not much further out than the closer in 2 and assume
      // the user considers those 2 to be on the outside
      var lessFarOut = groups[groups.length-2];
      if (lessFarOut.length == 2 &&
          farOut[0].location.length - lessFarOut[0].location.length < 0.5) {
        return dancers - lessFarOut;
      }
      else  //  Could not separate 6 dancers from other 2
        throw CallError('Cannot find 6 dancers in center');
    }
  }


  //  Returns points of a diamond formations
  //  Formation to match must have girl points
  List<DancerModel> pointsOfDiamondFormation(Formation f) {
    final ctx2 = CallContext.fromFormation(f);
    final points = <DancerModel>[];
    final mapping = ctx2.matchFormations(this,rotate: 180, subformation: true);
    if (mapping != null) {
      for (var i=0; i<ctx2.dancers.length; i++) {
        if (ctx2.dancers[i].gender == Gender.GIRL)
          points.add(dancers[mapping.map[i]]);
      }
    }
    return points;
  }

  List<DancerModel> points() {
    var points =
        pointsOfDiamondFormation(Formation('Diamonds RH Girl Points')) +
        pointsOfDiamondFormation(Formation('Diamonds RH PTP Girl Points')) +
        pointsOfDiamondFormation(Formation('Hourglass RH GP')) +
        pointsOfDiamondFormation(Formation('Galaxy RH GP'));
    //  Only try single diamond if none others found
    //  Otherwise points of hourglass central diamond
    //  are incorrectly added
    if (points.isEmpty)
      points = pointsOfDiamondFormation(Formation('Diamond LH Boys Center'));
    return points;
  }

  //  Return pair of boxes for dancers in a 2x4 formation
  List<List<DancerModel>>? boxes() {
    if (!isTBone())
      return null;
    var farout = outer(4).first;
    var isX = farout.location.x.abs() > farout.location.y.abs();
    return dancers.partition(
            (d) => isX ? d.location.x < 0 : d.location.y < 0
    );
  }

  List<DancerModel>? waveOf6() {
    final xDancers = dancers.where((d) => d.isOnXAxis);
    final yDancers = dancers.where((d) => d.isOnYAxis);
    if (xDancers.length == 6)
      return xDancers.toList();
    else if (yDancers.length == 6)
      return yDancers.toList();
    else
      return null;
  }

  //  Return dancers in center wave or line
  List<DancerModel>? centerWaveOf4() {
    var waveOf4 = <DancerModel>[];
    //  Get the dancers on each axis
    final xd = dancers.where((d) => d.location.x.isAbout(0.0)).toList();
    final yd = dancers.where((d) => d.location.y.isAbout(0.0)).toList();
    //  If there are 6 or 8 dancers on one axis,
    //  the center 4 of those is the Center Wave of 4
    if (xd.length > 4)
      waveOf4 = xd.sortedWith((d1, d2) => d1.location.length.compareTo(d2.location.length))
          .take(4).toList();
    else if (yd.length > 4)
      waveOf4 = yd.sortedWith((d1, d2) => d1.location.length.compareTo(d2.location.length))
          .take(4).toList();
    else {
      //  Otherwise, find the 2 dancers in the very center
      //  Those and their adjacent dancers make the center wave of 4
      final vc = dancers.where((d) => !d.location.length.isGreaterThan(1.0)).toList();
      if (vc.length == 2) {
        waveOf4 = [
          dancerToRight(vc.first,minDistance: 2.0),
          dancerToLeft(vc.first,minDistance: 2.0),
          dancerToRight(vc.second,minDistance: 2.0),
          dancerToLeft(vc.second,minDistance: 2.0),
        ].whereType<DancerModel>().toList();
      }
    }
    //  Check that these are in a wave or line
    if (waveOf4.length == 4) {
      if (waveOf4.every((d) =>
                (dancersToRight(d)+dancersToLeft(d)).where((d2) => waveOf4.contains(d2)).length ==3))
        return waveOf4;
    }
    return null;
  }

  //  This return the center 4 dancers if they are in any diamond-like
  //  formation, including single tag or star
  List<DancerModel>? centerDiamond() {
    var dordered = dancers.sortedBy((d) => d.location.length);
    var diamondOf4 = <DancerModel?>[
      dordered.where((d) => d.location.x.isAbout(0) && d.location.y.isGreaterThan(0)).firstOrNull,
      dordered.where((d) => d.location.x.isAbout(0) && d.location.y.isLessThan(0)).firstOrNull,
      dordered.where((d) => d.location.x.isGreaterThan(0) && d.location.y.isAbout(0)).firstOrNull,
      dordered.where((d) => d.location.x.isLessThan(0) && d.location.y.isAbout(0)).firstOrNull,
    ].whereType<DancerModel>().toList();
    return diamondOf4.length == 4 ? diamondOf4 : null;
  }

  List<DancerModel> dancersHoldingRightHands({bool isGrand=true}) =>
      dancers.where((d) {
        final d2 = dancerToRight(d,minDistance: 3.0);
        return d2 != null && dancerToRight(d2) == d &&
            (isGrand || !isTidal() ||
                !d.data.verycenter || !d2.data.verycenter);
      }).toList();

  List<DancerModel> dancersHoldingLeftHands({bool isGrand=true}) =>
      dancers.where((d) {
        final d2 = dancerToLeft(d,minDistance: 3.0);
        return d2 != null && dancerToLeft(d2) == d &&
            (isGrand || !isTidal() ||
                !d.data.verycenter || !d2.data.verycenter);
      }).toList();

  List<DancerModel> dancersHoldingSameHands({ required bool isRight, bool isGrand=true}) =>
      isRight ? dancersHoldingRightHands(isGrand:isGrand)
              : dancersHoldingLeftHands(isGrand:isGrand);

  //  Return true if this dancer is in a wave or mini-wave
  bool isInWave(DancerModel d, [DancerModel? d2]) {
    d2 ??= d.data.partner;
    return d2 != null && d.angleToDancer(d2).isAround(d2.angleToDancer(d)) &&
        d.distanceTo(d2) < 2.4;
  }

  //  Return true if two dancers are facing the same direction
  bool isFacingSameDirection(DancerModel d, DancerModel d2) =>
      d.angleFacing.isAround(d2.angleFacing);

  //  Return true if this dancer is part of a couple facing same direction
  bool isInCouple(DancerModel d, [DancerModel? d2]) {
    d2 ??= d.data.partner;
    return d2 != null && isFacingSameDirection(d,d2);
  }

  //  Return true if this dancer is in tandem with another DancerModel
  DancerModel? tandemDancer(DancerModel d) {
    if (d.data.trailer && (dancerInFront(d)?.data.leader ?? false))
      return dancerInFront(d);
    else if (d.data.leader && (dancerInBack(d)?.data.trailer ?? false))
      return dancerInBack(d);
    else
      return null;
  }
  bool isInTandem(DancerModel d) => tandemDancer(d) != null;

  //  Return true if this is 4 dancers in a box
  bool isBox() =>
      //  Must have 4 dancers
      dancers.length == 4 &&
          //  Each dancer must have one dancer at the same X coordinate
          //  and one dancer at the same Y coordinate
          dancers.every((d) =>
              dancers.where((it) => d.location.x.isAbout(it.location.x)).length == 2 &&
              dancers.where((it) => d.location.y.isAbout(it.location.y)).length == 2
          );

  //  Return true if 8 dancers are in 2 general lines of 4 dancers each
  //  Also works for 4 dancers in 1 line
  bool isInLine(DancerModel d) =>
      dancersToRight(d).length + dancersToLeft(d).length == 3;
  bool isLines() => dancers.every((d) => isInLine(d));

  bool isWaves() => dancers.every((d) {
    var dr = dancerToRight(d,minDistance: 2.0);
    var dl = dancerToLeft(d,minDistance: 2.0);
    if (dr == null && dl == null)
      return false;
    if (dr != null && !isInWave(d,dr))
      return false;
    if (dl != null && !isInWave(d,dl))
      return false;
    return true;
  });

  //  Return true if 8 dancers are in 2 general columns of 4 dancers each
  //  Or 1 column of 4 dancers
  bool isColumns([int num = 4]) =>
      dancers.every((d) =>
          dancersInFront(d).length + dancersInBack(d).length == num - 1
  );

  //  Return true if 8 dancers are in two-faced lines
  bool isTwoFacedLines() =>
      isLines() &&
          dancers.every((d) => isInCouple(d)) &&
          dancers.where((d) => d.data.leader).length == 4 &&
          dancers.where((d) => d.data.trailer).length == 4;

  //  Return true if dancers are at squared set positions
  bool isSquare() => dancers.every((d) {
    var loc = d.location;
    return (loc.x.abs().isAbout(3.0,delta:0.6) && loc.y.abs().isAbout(1.0,delta:0.6)) ||
           (loc.x.abs().isAbout(1.0,delta:0.6) && loc.y.abs().isAbout(3.0,delta:0.6));
  });

  //  Return true if dancers are tidal line or wave
  bool isTidal() =>
      dancersToRight(dancers.first).length + dancersToLeft(dancers.first).length == 7;

  //  Return true if dancers are all on one axis
  //  Could be tidal or could be e.g. dancers all facing center
  bool isOnXAxis() => dancers.every((d) => d.isOnXAxis);
  bool isOnYAxis() => dancers.every((d) => d.isOnYAxis);
  bool isOnAxis() => isOnXAxis() || isOnYAxis();

  //  Dancers in any kind of thar
  bool isThar({bool tandemsOK=false}) => (tandemsOK || isLines()) &&
      dancers.where((d) => d.isOnXAxis).length == 4 &&
      dancers.where((d) => d.isOnYAxis).length == 4;

  //  Return true if dancers are in any type of 2x4 formation
  bool isTBone() {
    var centerCount = dancers.where((d) =>
        d.location.x.abs().isAbout(1.0) && d.location.y.abs().isAbout(1.0)
    ).length;
    var xCount = dancers.where((d) =>
        d.location.x.abs().isAbout(3.0) && d.location.y.abs().isAbout(1.0)
    ).length;
    var yCount = dancers.where((d) =>
        d.location.x.abs().isAbout(1.0) && d.location.y.abs().isAbout(3.0)
    ).length;
    return centerCount == 4 &&
        ((xCount==4 && yCount==0) || (xCount==0 && yCount==4));
  }
  bool is2x4() => dancers.length == 8 && (isLines() || isTBone());

  bool isDiamond() => dancers.length==4 && dancers.every((d) => dancers.where((d2) {
      if (d2 == d)
        return false;
      var a = d.angleToDancer(d2).abs();
      return !a.isAround(pi / 2) && a < pi / 2;
    }).length == 1
  );


  //  Sometimes we have to work with an asymmetric context
  bool isAsym() =>
  !dancers.every((d) => !dancers.none((d2) =>
      d2.location.isAbout(-d.location) &&
      d2.angleFacing.isAround(d.angleFacing + pi)
  ));

  //  Direction dancer would turn to Tag the Line
  String tagDirection(DancerModel d) {
    if (dancerToRight(d)?.data.center == true)
      return 'Right';
    else if (dancerToLeft(d)?.data.center == true)
      return 'Left';
    return '';
  }

  //  Is there a dancer at a specific spot?
  DancerModel? dancerAt(Vector spot) =>
      dancers.where((d) => d.location == spot).firstOrNull;

  //  Are two dancers on the same spot?
  List<DancerModel> collidingDancers() => dancers.where((d) =>
      dancers.any((d2) =>
      d != d2 && d.location == d2.location
      )
  ).toList();
  bool isCollision() => collidingDancers().isNotEmpty;

  //  Get direction dancer would Roll
  Rolling roll(DancerModel dv) {
    var d = dv;
    //  If nothing in this context, dive into parent contexts
    //  to find something to base the roll direction
    var mySource = _source;
    while (d.path.movelist.isEmpty && mySource != null) {
      d = mySource.dancers.firstWhere((d2) => d2 == dv);
      mySource = mySource._source;
    }
    var move = d.path.movelist.where((m) => m.fromCall).lastOrNull;
    if ((move?.brotate.rolling() ?? 0.0) > 0.1)
      return Rolling.LEFT;
    else if ((move?.brotate.rolling() ?? 0.0) < -0.1)
      return Rolling.RIGHT;
    return Rolling.NONE;
  }

  void extendPaths() {
    //  Remove anything previously added
    contractPaths();
    //  get the longest number of beats
    var maxb = maxBeats();
    for (var d in dancers) {
      var b = maxb - d.path.beats;
      if (b > 0) {
        if (b < 1 && d.path.movelist.isNotEmpty) {
          //  Small change - ust change the length
          d.path = d.path.changeBeats(d.path.beats + b);
        } else {
          //  Large change - add that number as needed by using the 'Stand' move
          d.path = d.path + Stand.changeBeats(b).notFromCall();
        }
      }
    }
  }

  //  Strip off extra beats added by extendPaths
  void contractPaths() {
    for (var d in dancers) {
      while (d.path.movelist.isNotEmpty && d.path.movelist.last.fromCall == false) {
        d.path.pop();
      }
    }
  }

  //  Make all dancers dance their part in a specific number of beats
  void changeBeats(double newbeats) {
    contractPaths();
    for (var d in dancers)
      d.path = d.path.changeBeats(newbeats);
  }

  //  Center dancers around the origin
  //  Useful for a CallContext created from an arbitrary set of dancers
  void recenter() {
    animate(0.0);
    var maxx = dancers.map((d) => d.location.x).reduce(max);
    var minx = dancers.map((d) => d.location.x).reduce(min);
    var maxy = dancers.map((d) => d.location.y).reduce(max);
    var miny = dancers.map((d) => d.location.y).reduce(min);
    var shift = Vector((maxx+minx)/2,(maxy+miny)/2);
    for (var d in dancers) {
      d.setStartPosition(d.location - shift);
    }
  }

  //  For calls where the Facing Couples Rule applies.
  //  This puts the appropriate facing dancers into waves.
  void applyFacingCouplesRule() {
    if (dancers.where((d) => !isInWave(d)).isNotEmpty) {
      try {
        if (dancers.where((d) => isInWave(d)).isEmpty)
          applyCalls('Facing Dancers Step to a Wave');
        else
          applyCalls('Wave Dancers Nothing While Others Facing Dancers Step to a Wave');
      } on CallError catch(_) { }
      analyze();
    }
  }

  //  Move a dancer to a specific position (location and angle)
  //  Location and angle are in the dance floor space
  Path moveToPosition(DancerModel d, Vector location, double angle) {
    //  Compute transform matrix to new location
    final tohome = (location - d.location).rotate(-d.tx.angle);
    final adiff = angle.angleDiff(d.tx.angle);
    final t = Matrix.getTranslation(tohome) * Matrix.getRotation(adiff);
    //  Get movement and path from transform
    final fracMove = Movement.fromTransform(t,beats: 2.0);
    return Path.fromMovement(fracMove);
  }

  //  This is useful for calls that depend on re-defining dancer types
  //  for subgroups, e.g. 'Centers Zoom'
  void analyzeActives() {
    //  If all dancers are active then the usual call to analyze() will suffice
    if (actives.length != dancers.length) {
      var ctx2 = CallContext.fromContext(this,dancers:actives);
      ctx2.analyze();
      for (var d in actives) {
        var d2 = ctx2.dancers.firstWhere((it) => it == d);
        d.data.beau = d2.data.beau;
        d.data.belle = d2.data.belle;
        d.data.leader = d2.data.leader;
        d.data.trailer = d2.data.trailer;
        d.data.center = d2.data.center;
        d.data.end = d2.data.end;
        d.data.partner = dancers.where((it) => it == d2.data.partner).firstOrNull;
      }
    }
  }

  void analyze() {
    for (var d in dancers) {
      //d.animateToEnd();
      d.data.beau = false;
      d.data.belle = false;
      d.data.leader = false;
      d.data.trailer = false;
      d.data.partner = null;
      d.data.center = false;
      d.data.end = false;
      d.data.verycenter = false;
    }
    var isTidal = false;
    var centerWave = centerWaveOf4();
    for (var d1 in dancers.sortedBy((d) => -d.location.length)) {
      var bestleft = dancerToLeft(d1);
      var bestright = dancerToRight(d1);
      var leftcount = dancersToLeft(d1).length;
      var rightcount = dancersToRight(d1).length;
      var frontcount = dancersInFront(d1).length;
      var backcount = dancersInBack(d1).length;
      //  Use the results of the counts to assign belle/beau/leader/trailer
      //  and partner
      var bestleftMismatch = bestleft != null &&
          !isInWave(d1,bestleft) && !isInCouple(d1,bestleft);
      var bestRightMismatch = bestright != null &&
          !isInWave(d1,bestright) && !isInCouple(d1,bestright);
      if (leftcount % 2 == 1 && rightcount % 2 == 0 && !bestleftMismatch &&
          //  Allow a wide distance so concepts like siamese work
          d1.distanceTo(bestleft!) < 5 || (bestleft != null && bestRightMismatch)) {
        d1.data.partner = bestleft;
        d1.data.belle = true;
      }
      else if (rightcount % 2 == 1 && leftcount % 2 == 0 && !bestRightMismatch &&
          d1.distanceTo(bestright!) < 5 || (bestright != null && bestleftMismatch)) {
        d1.data.partner = bestright;
        d1.data.beau = true;
      }
      if (frontcount % 2 == 0 && backcount % 2 == 1)
        d1.data.leader = true;
      else if (frontcount % 2 == 1 && backcount % 2 == 0)
        d1.data.trailer = true;
      //  Assign ends
      if (rightcount == 0 && leftcount > 1)
        d1.data.end = true;
      else if (leftcount == 0 && rightcount > 1)
        d1.data.end = true;
      else if (frontcount == 3 && backcount == 0)
        d1.data.end = true;
      else if (backcount == 3 && frontcount == 0)
        d1.data.end = true;
      //  The very centers of a tidal wave are ends
      //  Remember this special case for assigning centers later
      if (rightcount == 3 && leftcount == 4 ||
          rightcount == 4 && leftcount == 3) {
        d1.data.end = true;
        isTidal = true;
      }
    }
    //  But if there's a center wave (like quarter tags)
    //  then we don't have leaders / trailers
    //  unless the outer 4 are facing out, then they are leaders
    if (centerWave != null) {
      dancers.where((d) => !centerWave.contains(d)).forEach((d) {
        if (d.isFacingOut && isInCouple(d))
          d.data.leader = true;
      });
    }
    //  Analyze for centers and very centers
    //  Sort and group dancers by distance from center
    var dorder = dancers.sortedBy((d) => d.location.length);
    groups.clear();
    var dist = -1.0;
    for (var d in dorder) {
      if (d.location.length.isGreaterThan(dist))
        groups.add([]);
      groups.last.add(d);
      dist = d.location.length;
    }

    xSlices = dancers.groupBy((d) => (d.location.x*10).round()/10.0);
    ySlices = dancers.groupBy((d) => (d.location.y*10).round()/10.0);

    //  The 2 dancers closest to the center
    //  are centers (4 dancers) or very centers (8 dancers)
    if (dancers.length > 2) {
      if (!dorder[1].location.length.isAbout(dorder[2].location.length)) {
        if (dancers.length == 4) {
          dorder.first.data.center = true;
          dorder[1].data.center = true;
        } else {
          dorder.first.data.verycenter = true;
          dorder[1].data.verycenter = true;
        }
      }
    }

    // If tidal, then the next 4 dancers are centers
    if (isTidal) {
      for (var i in [2,3,4,5])
        dorder[i].data.center = true;
    }
    //  If there's a center wave/line of 4, use that
    else if (dancers.length == 8 && centerWave != null) {
      for (var d in dancers) {
        d.data.center = centerWave.contains(d);
        d.data.end = !d.data.center;
      }
    }
    //  Otherwise, if there are 4 dancers closer to the center than the other 4,
    //  they are the centers
    else if (dancers.length == 8 &&
        !(dorder[3].location.length.isAbout(dorder[4].location.length))) {
      for (var i in [0,1,2,3])
        dorder[i].data.center = true;
      for (var i in [4,5,6,7])
        dorder[i].data.end = true;
    }

  }

}