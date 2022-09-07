/*

  Taminations Square Dance Animations
  Copyright (C) 2021 Brad Christie

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

import '../common.dart';
import 'call_error.dart';
import 'calls/action.dart';
import 'calls/call.dart';
import 'calls/coded_call.dart';
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

}


class CallContext {

  //  XML files that have been loaded
  static var loadedMXL = <String,XmlDocument>{};

  //  Index into files for specific calls
  //  Supplements looking up calls in TamUtils.calldata
  //  Keys are normalized call name
  //  Values are file names
  static var callindex = <String,Set<String>>{};

  static const callindexinitfiles = [
    'c1/block_formation',
    'b1/circle',
    'a1/clover_and_anything',
    'a1/clover_and_anything',
    'c1/cross_your_neighbor',
    'c2/criss_cross_your_neighbor',
    'plus/explode_the_wave',
    'a1/explode_the_line',
    'b1/sashay',
    'b1/ladies_chain',
    'a1/any_hand_concept',
    'a1/split_square_thru',
    'b2/sweep_a_quarter',
    'b1/circulate',
    'b1/face',
    'c1/butterfly_formation',
    'a2/all_4_all_8',
    'a1/as_couples',
    'b1/veer',
    'b1/circle',
    'b1/grand_square',
    'b1/lead_right',
    'b1/first_couple_go',
    'a1/as_couples',
    'c1/recycle',
    'c1/stretch_concept',
    'c1/butterfly_formation',
    'c1/concentric_concept',
    'c1/o_formation',
    'c1/magic_column_formation',
    'c1/phantom_formation',
    'plus/single_circle_to_a_wave',
    'c1/tandem_concept',
    'c1/track_n',
    'c1/triple_box_concept',
    'b2/ocean_wave',
    'c1/wheel_and_anything',
    'plus/chase_right',
    'a1/fractional_tops',
    'a1/quarter_thru',
    'b1/split_the_outside_couple',
    'c2/cross_the_k',
    'a2/transfer_and_anything',
    'ms/eight_chain_thru',
    'b1/separate',
    'c1/anything_the_windmill',
    'c1/anything_to_a_wave',
    'c1/tagging_calls_back_to_a_wave',
    'plus/grand_swing_thru',
    'c2/anything_and_circle',
    'b1/star',
    'b2/alamo_style',
    'c2/once_removed_concept',
    'c1/split_square_thru_variations',
    'c2/unwrap',
    'c2/stretched_concept',
    'c1/finish',
    'ms/fraction_tag',
    'c3a/big_block_concept',
    'plus/triple_scoot',
    'c1/scoot_and_little',
    'a2/hourglass_circulate',
    'c2/reverse_cut_the_diamond',
    'c1/vertical_tag',
    'ms/tag',
    'c2/drop_in',
    'c2/drop_right',
    'c2/reverse_cut_the_galaxy',
    'c2/fascinate',
    'c1/twist_the_line'
  ];

  static const standardFormations = {
    'Normal Lines Compact': 1.0,
    'Normal Lines': 1.0,
    'Double Pass Thru': 1.0,
    'Quarter Tag' : 1.5,
    'Tidal Line RH' : 1.0,
    //  Need I-Beam so Heads Swing Thru doesn't collide with the sides
    //'I-Beam' : 2.0,
  };
  /*
    'Tidal Wave of 6' : 2.0,
    'Diamonds RH Girl Points' : 2.0,
    'Diamonds RH PTP Girl Points' : 3.0,
    'Hourglass RH BP' : 3.0,
    'Galaxy RH GP' : 3.0,
    'Butterfly RH' : 3.0,
    'O RH' : 3.0,
    'Thar RH Boys' : 3.0,
    'Sausage RH' : 3.0,
    'Static Square' : 2.0,
    //'Alamo Wave'
    'Right-Hand Zs' : 2.0,
    'Left-Hand Zs' : 2.0,
    //  Siamese formations
    //  This also covers C-1 Phantom formations
    'Siamese Box 1' : 2.0,
    'Siamese Box 2' : 2.0,
    'Siamese Wave' : 2.0,
    //  Blocks
    'Facing Blocks Right' : 2.0,
    'Facing Blocks Left' : 2.0,
    'Concentric Diamonds RH' : 2.0,
    'Quarter Z RH' : 4.0,
    'Quarter Z LH' : 4.0,
    'Diamond Between Kouples' : 4.0
  };  */

  static const twoCoupleFormations = {
    'Facing Couples Compact' : 1.0,
    'Facing Couples' : 1.0,
    'Two-Faced Line RH' : 1.0,
    'Diamond RH' : 1.0,
    'Single Eight Chain Thru' : 1.0,
    'Single Quarter Tag' : 1.0,
    'Square RH' : 1.0
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

  static Future<XmlDocument> loadOneFile(String link) async {
    if (loadedMXL.containsKey(link))
      return loadedMXL[link]!;
    var doc = await TamUtils.getXMLAsset(link);
    //  Add all the calls to the index
    doc.findAllElements('tam').forEach((tam) {
      var norm = TamUtils.normalizeCall(tam('title')).toLowerCase();
      if (!callindex.containsKey(norm))
        callindex[norm] = <String>{};
      callindex[norm]!.add(link);
    });
    loadedMXL[link] = doc;
    return doc;
  }

  static Set<String> xmlFilesForCall(String norm) {
    var callfiles1 = TamUtils.callmap.containsKey(norm)
        ? TamUtils.callmap[norm]!.map((e) => Uri.parse(e.link).path) : <String>[];
    var callfiles2 = callindex.containsKey(norm)
        ? callindex[norm]! : <String>{};
    callfiles2.addAll(callfiles1);
    return callfiles2;
  }

  //  Load all XML files that might be used to interpret a call
  static Future<void> _loadAllFilesForCall(String call) async {
    for (var item in call.minced()) {
      var norm = TamUtils.normalizeCall(item).toLowerCase();
      var callitems = TamUtils.callmap[norm] ?? <CallListDatum>[];
      for (var callitem in callitems) {
        await loadOneFile(Uri.parse(callitem.link).path);
      }
    }
  }

  static Future<void> init() {
    if (callindex.isEmpty) {
      return Future.wait(callindexinitfiles.map((file) => loadOneFile(file)));
    }
    return Future<void>.value();
  }

  static final genderMap = {
    'boy': Gender.BOY,
    'girl': Gender.GIRL,
    'phantom': Gender.PHANTOM
  };

  /////// end of static code ///////

  late List<Dancer> dancers;
  String callname = '';
  LevelData level = LevelData.find('b1')!;
  List<Call> callstack = [];
  List<List<Dancer>> groups = [];
  String get groupstr => groups.map((e) => e.length).join();
  CallContext? _source;
  CallContext? get parent => _source;
  bool _snap = true;
  bool _thoseWhoCan = false;
  bool resolutionError = false;
  bool asymmetric = false;

  //  Create a context from an array of Dancer
  CallContext.fromDancers(List<Dancer> dancers) {
    this.dancers = dancers.map((d) {
      d.animateToEnd();
      return Dancer.clone(d);
    }).toList();
    allActive();
  }

  CallContext.fromContext(
      CallContext source, {
        List<Dancer>? dancers,
        double beat = double.maxFinite
      }) {
    dancers ??= source.dancers;
    dancers.forEach((d) { d.animate(beat); });
    this.dancers = dancers.map((d) => Dancer.clone(d)).toList();
    if (!dancers.areDancersOrdered())
      this.dancers = this.dancers.center().inOrder();
    _source = source;
    _thoseWhoCan = source._thoseWhoCan;
    _snap = source._snap;
  }

  CallContext.fromFormation(Formation f) {
    dancers = f.dancers.copy();
    asymmetric = f.asymmetric;
  }

  //  Create a context from a formation defined in XML
  //  The element passed in can be either a 'tam' from
  //  an animation, or a formation
  CallContext.fromXML(XmlElement tam, {bool loadPaths=false}) {
    var numberArray = TamUtils.getNumbers(tam);
    var coupleArray = TamUtils.getCouples(tam);
    var paths = loadPaths ? tam.childrenNamed('path') : [];
    var fname = tam('formation');
    var f = fname.isNotBlank
        ? TamUtils.getFormation(fname)
        : (tam.childrenNamed('formation').firstOrNull ?? tam);
    var dancerElements = f.childrenNamed('dancer');
    dancers = [];
    asymmetric = tam('asymmetric').isNotBlank;
    for (var i=0; i<dancerElements.length; i++) {
      var element = dancerElements[i];
      //  This assumes square geometry
      //  Make sure each dancer in the list is immediately followed by its
      //  diagonal opposite, if not asymmetric.  Required for mapping.
      dancers.add(Dancer.fromData(
        number:numberArray[i*2], couple:coupleArray[i*2],
        x:element('x').d,y:element('y').d,angle:element('angle').d,
        gender: Gender.genderMap[element('gender')]!,
        geom: Geometry.getGeometry(Geometry.SQUARE)[0],
        path: paths.length > i ? TamUtils.translatePath(paths[i]) : []
      ));
      if (!asymmetric)
        dancers.add(Dancer.fromData(
            number:numberArray[i*2+1], couple:coupleArray[i*2+1],
            x:element('x').d,y:element('y').d,angle:element('angle').d,
            gender: Gender.genderMap[element('gender')]!,
            geom: Geometry.getGeometry(Geometry.SQUARE)[1],
            path: paths.length > i ? TamUtils.translatePath(paths[i]) : []
        ));
    }
  }

  //  Get a loadable formation name given a more generic name
  static String formationName(String request) {
    for (var e in formationMap.entries) {
      if (request.matches(e.key))
        return e.value;
    }
    throw CallError('Unable to find formation $request');
  }

  //  Load a formation from any sort of name
  static XmlElement _xmlFromName(String name) {
    try {
      return TamUtils.getFormation(name);
    } on Error {
      return TamUtils.getFormation(formationName(name));
    }
  }

  //  Create a CallContext from any sort of formation name
  CallContext.fromName(String name) : this.fromXML(_xmlFromName(name));

  void noSnap({bool recurse=true}) {
    _snap = false;
    if (recurse) {
      for (var s = _source; s != null; s = s._source)
        s._snap = false;
    }
  }

  //  Get the active dancers, e.g. for 'Boys Trade' the boys are active
  List<Dancer> get actives => dancers.where( (d) => d.data.active ).toList();
  List<Dancer> get inActives => dancers.where( (d) => !d.data.active ).toList();
  void allActive() {
    for (var d in dancers)
      d.data.active = true;
  }
  Set<Dancer> saveActives() => dancers.where((d) => d.data.active).toSet();
  void restoreActives(Set<Dancer> saved) {
    for (var d in dancers)
      d.data.active = saved.contains(d);
  }

  List<Dancer> movingDancers() => dancers.where((d) =>
      d.path.movelist.any((m) => m.fromCall)).toList();


  /// Append the result of processing this CallContext to it source.
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
          original.path.skewFromEnd(-vd.x, -vd.y);
        } else
          //  just append clone
          original.path.add(clone.path);
        original.animateToEnd();
        if (!clone.isActive)
          original.data.active = false;
      }
    });
    if (_source != null && _source!.level < level)
      _source!.level = level;
    return didSomething;
  }



  //  Create a new CallContext from a list of dancers
  //  (usually a subset of this CallContext dancers).
  //  Apply a function as a method of the new CallContext.
  //  Then transfer any new calls from the created CallContext to this CallContext.
  //  Return true if anything new was added.
  Future<bool> subContext(List<Dancer> dancers, Future<void> Function(CallContext) block) async {
    var ctx = CallContext.fromContext(this,dancers:dancers.inOrder());
    await block(ctx);
    return ctx.appendToSource(this);
  }

  //  Build a CallContext from the next calls on the stack
  //  up to and including the next Action.
  //  Used for concepts and modifications.
  CallContext? nextActionContext(Call thisCall,
      { List<Dancer>? dancers, bool greedy=false }) {
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

  void insertAfterNextAction(Call thisCall, Call insertCall) {
    //  Find out where we are
    final i = callstack.indexOf(thisCall);
    if (i < 0)
      throw CallError('Unable to find $thisCall in call stack');
    //  Make sure it's not already inserted
    for (var j=i+1; j<callstack.length; j += 1) {
      if (insertCall.name == callstack[j].name)
        return;
    }
    //  Find the next action and insert the call
    for (var j=i+1; j<callstack.length; j += 1) {
      if (callstack[j] is Action) {
        callstack.insert(j, insertCall);
        return;
      }
    }
    throw CallError('Unable to find Action to insert $insertCall');
  }

  //  For now this just checks for collisions in a tidal formation
  //  If a collision is detected, then the animation is
  //  squeezed along the axis of the formation
  void checkForCollisions() {
    if (isOnAxis() && isCollision()) {
      var a = isOnXAxis() ? 0.0 : pi/2;
      for (var d in dancers) {
        d.animate(0.0);
        var b = d.angleFacing;
        var xscale = 1.0-0.5*cos(a+b).abs();
        var yscale = 1.0 - 0.5*sin(a+b).abs();
        d.path.scale(xscale,yscale);
      }
    }
  }

  void thoseWhoCanOnly() {
    _thoseWhoCan = true;
  }

  Path dancerCannotPerform(Dancer d, String call) {
    if (_thoseWhoCan)
      return Path();
    throw CallError('Dancer $d cannot $call.');
  }

  void _checkForAction(String calltext) {
    if (callstack.none((c) => c is Action || c is XMLCall))
      throw CallError('$calltext does nothing.');
  }

  Future<void> applySpecifier(String calltext) async {
    await interpretCall(calltext,noAction: true);
    await performCall();
  }

  Future<void> _applyCall(String call) async {
    var ctx2 = CallContext.fromContext(this);
    await ctx2.interpretCall(call);
    await ctx2.performCall();
    ctx2.appendToSource();
  }

  Future<void> applyCalls(String call1, [String? call2, String? call3, String? call4]) async {
    var calls = [call1,call2,call3,call4].whereType<String>();
    for (var call in calls) {
      final saved = saveActives();
      await _applyCall(call);
      restoreActives(saved);
    }
  }

  Future<void> applyCodedCall(String call) async {
    var ctx2 = CallContext.fromContext(this);
    await ctx2.interpretCall(call,skipFirstXML: true);
    await ctx2.performCall();
    ctx2.appendToSource();
  }

  Future<CallContext?> _checkCalls(List<String> calls) async {
    var testctx = CallContext.fromContext(this);
    try {
      for (var call in calls) {
        await testctx.applyCalls(call);
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
    return calltext.replaceAll('[^a-zA-Z0-9_./-]'.r,' ')
    //  Clean up any whitespace
        .replaceAll('\\s+'.r, ' ').trim()
    //  Standardize capitalization
        .capWords();
  }

  /// This is the main loop for interpreting a call
  ///  [calltxt]  One complete call, lower case, words separated by single spaces
  ///  [noAction] set to true if it's ok for this call not to do anything
  Future<void> interpretCall(String calltext,
      {bool noAction = false, bool skipFirstXML = false}) async {
    calltext = _cleanupCall(calltext);
    await _loadAllFilesForCall(calltext);
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
        //print('Trying $onecall');
        //  First try to find a snapshot match
        if (onecall.norm.lc != calltext.norm.lc || !skipFirstXML) {
          try {
            foundOneCall = await matchXMLcall(onecall);
          } on CallError catch (err2) {
            err = err2;
          }
        }
        //  Then look for a code match
        foundOneCall = foundOneCall || matchCodedCall(onecall);
        //  Finally try a fuzzier snapshot match
        if (onecall.norm.lc != calltext.norm.lc || !skipFirstXML) {
          try {
            foundOneCall =
                foundOneCall || await matchXMLcall(onecall, fuzzy: true);
          } on CallError catch (err3) {
            err = err3;
          }
        }
        if (foundOneCall) {
          //print('    Found $onecall');
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
  Future<bool> matchXMLcall(String calltext, {bool fuzzy = false}) async {
    var ctx0 = this;
    var ctx1 = this;
    //  If there are precursors, run them first so the result
    //  will be used to match formations
    //  Needed for calls like 'Explode And ...'
    if (callstack.isNotEmpty) {
      ctx1 = CallContext.fromContext(this);
      ctx1.callstack = callstack.copy();
      //  Ignore any errors, some precursors (like Half) expect to find more on the stack
      try {
        await ctx1.performCall();
      // ignore: empty_catches
      } on CallError { }
    }
    //  If actives != dancers, create another call context with just the actives
    var dc = ctx1.dancers.length;
    var ac = ctx1.actives.length;
    var perimeter = false;
    var exact = dc == ac;
    if (!exact) {
      //  Don't try to match unless the actives are together
      if (ctx1.actives.any((d) =>
          ctx1.inBetween(d, ctx1.actives.first).any((it) => !it.data.active)
      ))
        perimeter = true;
      ctx1 = CallContext.fromContext(ctx1,dancers:ctx1.actives);
    }
    //  Try to find a match in the xml animations

    var callnorm = TamUtils.normalizeCall(calltext);
    var callfiles = xmlFilesForCall(callnorm.toLowerCase());

    for (var link in callfiles) {
      var file = await loadOneFile(link);
      var tamlist = file.rootElement.findAllElements('tam').where((tam) =>
      tam('sequencer') != 'no' &&
          //  Check for calls that must go around the centers
          (!perimeter || tam('sequencer', '').contains('perimeter')) &&
          //  Check for 4-dancer calls that do not work for 8 dancers
          (exact || !tam('sequencer', '').contains('exact')) &&
          TamUtils.normalizeCall(tam('title')).toLowerCase() ==
              callnorm.toLowerCase());
      if (tamlist.isNotEmpty) {
        final xmlCall = XMLCall(calltext);
        xmlCall.level = LevelData.find(link)!;
        ctx0.callstack.add(xmlCall);
        ctx0.callname += xmlCall.name + ' ';
        return true;
      }
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
    for (var i=0; i<actives.length; i++) {
      var d1 = actives[i];
      var v1 = d1.location;
      var v2 = ctx2.dancers[mapping[i]].location;
      bxa[0][0] += v1.x * v2.x;
      bxa[0][1] += v1.y * v2.x;
      bxa[1][0] += v1.x * v2.y;
      bxa[1][1] += v1.y * v2.y;
      //  Also add a point in front of the dancers, so it will match
      //  the direction the dancers are facing
      var a1 = d1.angleFacing;
      var v1f = v1 + Vector(cos(a1),sin(a1)) * 0.1;
      var a2 = ctx2.dancers[mapping[i]].angleFacing;
      var v2f = v2 + Vector(cos(a2),sin(a2)) * 0.1;
      bxa[0][0] += v1f.x * v2f.x;
      bxa[0][1] += v1f.y * v2f.x;
      bxa[1][0] += v1f.x * v2f.y;
      bxa[1][1] += v1f.y * v2f.y;
    }
    var svdSolution =  Matrix(bxa[0][0], bxa[1][0], 0.0, bxa[0][1], bxa[1][1], 0.0).svd22();
    var u = svdSolution.item1;
    var v = svdSolution.item3;
    var ut = u.transpose();
    var rotmat = (v * ut).snapTo90(delta:delta);
    //  Now rotate the formation and compute any remaining
    //  differences
    for (var j=0; j<actives.length; j++) {
      var d2 = actives[j];
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

  static int dancerRelation(Dancer d1, Dancer d2) => _angleBin(d1.angleToDancer(d2));

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
    double delta = 0.1,
    double maxAngle = 0.2
  }) {
    if (!subformation && dancers.length != ctx2.dancers.length)
      return null;
    //  Find mapping using DFS
    MappingContext? bestMapping;
    var mapping = List.filled(dancers.length, -1);
    var rotated = List.filled(dancers.length, 0);
    var mapindex = 0;
    while (mapindex >= 0 && mapindex < dancers.length) {
      var nextmapping = mapping[mapindex] + 1;
      var found = false;
      while (!found && nextmapping < ctx2.dancers.length) {
        //  Dancers in both contexts must be pairs of diagonal opposites
        //  unless asymmetric is specified
        //  Makes mapping much more efficient
        mapping[mapindex] = nextmapping;
        if (!asymmetric && !ctx2.asymmetric)
          mapping[mapindex + 1] = nextmapping ^ 1;
        if (_testMapping(this, ctx2, mapping, mapindex, sexy:sexy, fuzzy:fuzzy, handholds:handholds, headsmatchsides:headsMatchSides))
          found = true;
        else
          nextmapping += 1;
      }
      if (nextmapping >= ctx2.dancers.length) {
        //  No more mappings for this dancer
        mapping[mapindex] = -1;
        if (!asymmetric && !ctx2.asymmetric)
          mapping[mapindex + 1] = -1;
        //  If requested, try rotating this dancer
        if (rotate > 0 && rotated[mapindex] + rotate < 360) {
          dancers[mapindex].rotateStartAngle(rotate.d);
          rotated[mapindex] += rotate;
          if (!asymmetric && !ctx2.asymmetric) {
            dancers[mapindex + 1].rotateStartAngle(rotate.d);
            rotated[mapindex+1] += rotate;
          }
        } else {
          if (rotated[mapindex]+rotate == 360) {
            //  Restore to original
            dancers[mapindex].rotateStartAngle(rotate.d);
            if (!asymmetric && !ctx2.asymmetric)
              dancers[mapindex+1].rotateStartAngle(rotate.d);
            rotated[mapindex] = 0;
            if (!asymmetric && !ctx2.asymmetric)
              rotated[mapindex+1] = 0;
          }
          mapindex -= asymmetric || ctx2.asymmetric ? 1 : 2;
        }
      } else {
        //  Mapping for this dancer found
        //print('dancer ${dancers[mapindex]} mapped to ${ctx2.dancers[mapping[mapindex]]}');
        mapindex += asymmetric || ctx2.asymmetric ? 1 : 2;
        if (mapindex >= dancers.length) {
          //  All dancers mapped
          //  Rate the mapping and save if best
          var matchResult = computeFormationOffsets(ctx2,mapping,rotated: rotated, delta: delta);
          //  Don't match if some dancers are too far from their mapped location
          var maxOffset = matchResult.offsets.firstBy((it) => -it.length)!;
          //  Don't match if rotation is not multiple of 90 degrees
          var angsnap = matchResult.transform.angle / (pi / 2);
          if (maxOffset.length < maxError && angsnap.isApproxInt(delta : maxAngle)) {
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

  bool _testMapping(CallContext ctx1, CallContext ctx2, List<int>mapping, int i,
      {bool sexy=false, bool fuzzy=false,
        bool handholds=true, bool headsmatchsides=true}) {
    if (sexy && (ctx1.dancers[i].gender != ctx2.dancers[mapping[i]].gender))
      return false;

    //  Special check for calls with 'Heads' or 'Sides'
    if (!headsmatchsides) {
      //  If dancers are in squared set, check that the dancers are in the same
      //  absolute location
      if (ctx1.isSquare()) {
        if (!ctx1.dancers[i].anglePosition.isAround(ctx2.dancers[mapping[i]].anglePosition))
          return false;
      } else {
        //  Dancers not in squared set, call refers to original heads or sides
        if (ctx1.dancers[i].numberCouple.i % 2 !=
            ctx2.dancers[mapping[i]].numberCouple.i % 2)
          return false;
      }
    }

    return ctx1.dancers.indices.every((j) {
      if (mapping[j] < 0 || i == j)
        return true;
      else {
        var relq1 = dancerRelation(ctx1.dancers[i], ctx1.dancers[j]);
        var relt1 = dancerRelation(ctx2.dancers[mapping[i]], ctx2.dancers[mapping[j]]);
        var relq2 = dancerRelation(ctx1.dancers[j], ctx1.dancers[i]);
        var relt2 = dancerRelation(ctx2.dancers[mapping[j]], ctx2.dancers[mapping[i]]);
        //  If dancers are side-by-side, make sure handholding matches by checking distance
        if (handholds && (relq1 == 2 || relq1 == 6) && (relq2 == 2 || relq2 == 6)) {
          var d1 = ctx1.dancers[i].distanceTo(ctx1.dancers[j]);
          var hold1 = d1 < 2.4 &&
              (ctx1.dancerToLeft(ctx1.dancers[i]) == ctx1.dancers[j] ||
                  ctx1.dancerToRight(ctx1.dancers[i]) == ctx1.dancers[j] );
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
      callstack.add(call);
      this.callname += call.name + ' ';
      return true;
    }
    return false;
  }

  //  Perform calls by popping them off the stack until the stack is empty.
  //  This doesn't run an animation, rather it takes the stack of calls
  //  and builds the dancer movements.
  Future<void> performCall() async {
    //  Some calls alter the callstack, so save and restore
    final saveCallstack = callstack.copy();
    for (final d in dancers) {
      d.path.clear();
    }
    analyze();
    for (var i=0; i<callstack.length; i++) {
      var c = callstack[i];
      await c.performCall(this);
      if (i < callstack.length-1)
        analyze();
      //checkCenters();
      //  A few calls (e.g. Hinge) don't know their level
      //  until the call is performed
      if (c.level > level)
        level = c.level;
      extendPaths();
    }
    callstack = saveCallstack;
  }

  //  For calls that just apply to the centers, make sure they
  //  stay in the center and don't collide with the other dancers
  void checkCenters({bool force=false}) {
    if (dancers.length == 8) {
      animate(0.0);
      analyze();
      final moving = force ? center(4) : movingDancers();
      final groupsOK = groups.length > 1 && (groups[0].length == 4 ||
          (groups[0].length == 2 && groups[1].length == 2));
      if (groupsOK && moving.length == 4 && center(4).containsAll(moving)) {
        animateToEnd();
        var minDist = actives.minOf((d) =>
            dancerClosest(d, (d2) => !moving.contains(d2))!.distanceTo(d));
        if (!center(4).containsAll(moving) || !minDist.isGreaterThan(1.0)) {
          //print('WARNING centers mix with other dancers!');
          animate(0.0);
          final ctx2 = CallContext.fromDancers(center(4));
          if (ctx2.isLines()) {
            ctx2.adjustToFormation('Compact Wave RH');
          } else if (ctx2.isDiamond()) {
            ctx2.adjustToFormation('Diamond Compact');
          } else if (ctx2.isColumns()) {
            ctx2.adjustToFormation('Single Double Pass Thru Close');
          } else
            return;
          ctx2.appendToSource(this, false);
          animateToEnd();
        }
      }
      animateToEnd();
    }
  }

  //  See if the current dancer positions resemble a standard formation
  //  and, if so, snap to the standard
  void matchFormationList(Map<String,double> formations, {double maxOffset = 6.1}) {
    //  Make sure newly added animations are finished
    for (var d in dancers) {
      d.path.recalculate();
      d.animateToEnd();
    }
    //  Work on a copy with all dancers active, mapping only uses active dancers
    var ctx1 = CallContext.fromContext(this);
    for (var d in ctx1.dancers)
      d.data.active = true;
    MappingContext? bestMapping;
    for (var f in formations.keys) {
      var ctx2 = CallContext.fromXML(TamUtils.getFormation(f));
      //  See if this formation matches
      //var rot = (f.contains('Lines') || f.contains('Couples')) ? 180 : 90;
      var rot = 180;
      switch (f) {
        case 'Double Pass Thru' :
        case 'I-Beam' :
        rot = 90; break;
      }
      var mapping = ctx1.matchFormations(ctx2,sexy:false,fuzzy:true,rotate:rot,handholds:false);
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
            f == 'Double Pass Thru');
        if (totOffset < maxOffset && angsnap.isApproxInt(delta : 0.05) && !specialHack) {
          if (bestMapping == null || totOffset*favoring + 0.2 < bestMapping.totalOffset) {
            mapping.name = f;
            mapping.totalOffset *= favoring;
            bestMapping = mapping;
          }
        }
      }
    }
    if (bestMapping != null) {
      adjustToFormationMatch(bestMapping.match);
    }
  }

  void matchStandardFormation() {
    if (_snap) {
      if (dancers.length == 8) {
        matchFormationList(standardFormations);
        //  One more check for bad I-Beam
        repairFormation('Misshapen I-Beam', 'I-Beam');
        repairFormation('Misshapen X-Beam', 'X-Beam');
        var ctxCopy = CallContext.fromContext(this);
        var ctxLines = CallContext.fromName('Normal Lines');
        if (ctxCopy.matchFormations(ctxLines,rotate: 180) == null &&
            ctxCopy.matchFormations(ctxLines,rotate:90) != null) {
          adjustToFormation('Double Pass Thru',rotate: 90);
        }
      } else
        matchFormationList(twoCoupleFormations,maxOffset: 2.1);
    }
  }

  void repairFormation(String from, String to) {
    var ctx1 = CallContext.fromContext(this);
    for (var d in ctx1.dancers)
      d.data.active = true;
    var incorrect = CallContext.fromName(from);
    var mapping = ctx1.matchFormations(
        incorrect, sexy: false, fuzzy: true, rotate: 90, handholds: false);
    if (mapping != null) {
      if (mapping.totalOffset < 5.0) {
        var corrected = CallContext.fromName(to);
        var mapping2 = ctx1.matchFormations(corrected, sexy: false,
            fuzzy: true,
            rotate: 90,
            handholds: false);
        if (mapping2 != null)
          adjustToFormationMatch(mapping2.match);
      }
    }
  }

  //  Given a match to a formation, adjust the dancer's last move
  //  so it ends with that formation.
  //  Returns true if any adjustment was made.
  bool adjustToFormationMatch(FormationMatchResult match) {
    var retval = false;
    for (var d in dancers)
      d.data.active = true;
    for (var i=0; i<dancers.length; i++) {
      var d = dancers[i];
      if (match.offsets[i].length > 0.01 || match.angles[i] > 0.1) {
        retval = true;  // adjustment made
        //  Get the last movement
        Movement m;
        if (d.path.movelist.isNotEmpty)
          m = d.path.pop();
        else
          m = (TamUtils.getMove('Stand Ahead')
            ..changeBeats(match.offsets[i].length)
            ..notFromCall()).pop();
        //  Transform the offset to the dancer's angle
        d.animateToEnd();
        var vd = match.offsets[i].rotate(-d.tx.angle);
        //  Apply it
        d.path.add(m.skew(-vd.x,-vd.y).twist(-match.angles[i]));
        d.animateToEnd();
      }
    }
    return retval;
  }

  bool adjustToFormation(String fname, {int rotate = 180, double delta = 0.1}) {
    //  Work on a copy with all dancers active, mapping only uses active dancers???
    var ctx1 = CallContext.fromContext(this);
    for (var d in ctx1.dancers)
      d.data.active = true;
    var ctx2 = CallContext.fromXML(TamUtils.getFormation(fname));
    var mapping = ctx1.matchFormations(ctx2,sexy:false,fuzzy:true,rotate:rotate,handholds:false, maxError : 2.9, delta: delta);
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
    final ss = CallContext.fromName('Squared Set');
    final m = matchFormations(ss,rotate: 180, maxError: 2.9);
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
        adjustToFormation('Squared Set', rotate: 180);
      }
    }
  }

  ///  Rotate phantoms and find the best match
  ///  for a given call
  ///  Phantoms must be in diagonally opposite pairs
  ///  which are rotated together
  ///  unless asym is set
  ///  as this is required for XML mapping to work
  Future<CallContext?> rotatePhantoms(String call,
      {int rotate=180, bool asym=false}) async {
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
      var ctx2 = CallContext.fromContext(this);
      var testctx = await ctx2._checkCalls([call]);
      if (testctx != null) {
        //  Good rotation found
        //  See if it's the "Best" rotation
        var count = testctx.movingDancers().length;
        if (count > bestCount) {
          bestContext = ctx2;
          bestCount = count;
        }
      }
      //  This rotation does not work
    }
    return bestContext;
  }

  //  Use phantoms to fill in a formation starting from the dancers
  //  in the current context
  CallContext? fillFormation(String fname) {
    //  Use letters for phantom numbers so there's no way they can
    //  match the real dancers
    var letters = 'ABCDEFGH';
    var nextPhantom = 0;
    var ctx2 = CallContext.fromXML(TamUtils.getFormation(fname));
    var mapping = matchFormations(ctx2,sexy:false,fuzzy:true,rotate:0,handholds:false, subformation : true);
    if (mapping == null)
      return null;
    var matchResult = mapping.match;
    var rotmat = Matrix.getRotation(-matchResult.transform.angle);
    var unmapped = ctx2.dancers.asMap().keys
        .where((i) => !mapping.map.contains(i)).map((i) => ctx2.dancers[i]).toList();
    var phantoms = unmapped.map((d) {
      var ph = Dancer(letters[nextPhantom],'0',Gender.PHANTOM,Color.GRAY,
          rotmat * d.starttx,
          Geometry.getGeometry(Geometry.SQUARE).first,[]);
      nextPhantom += 1;
      return ph;
    }).toList();
    return CallContext.fromContext(this,dancers:dancers + phantoms);
  }


  //  Return max number of beats among all the dancers
  double maxBeats() => dancers.fold(0.0, (v, d) => max(v,d.path.beats));

  //  Return all dancers, ordered by distance from another dancer,
  //  that satisfies a conditional
  List<Dancer> dancersInOrder(Dancer d, [bool Function(Dancer d)? f]) =>
      (dancers - d).where(f ?? (d)=>true).toList().sortedBy((d2) => d.distanceTo(d2) );

  //  Return closest dancer that satisfies a given conditional
  Dancer? dancerClosest(Dancer d, bool Function(Dancer d2) f) =>
      dancersInOrder(d,f).firstOrNull;

  //  Return dancer directly in front of given dancer
  Dancer? dancerInFront(Dancer d) =>
      dancerClosest(d, (d2) => d2.isInFrontOf(d));
  //  Return dancer directly in back of given dancer
  Dancer? dancerInBack(Dancer d) =>
      dancerClosest(d, (d2) => d2.isInBackOf(d));
  //  Return dancer directly to the right of given dancer
  Dancer? dancerToRight(Dancer d) =>
      dancerClosest(d, (d2) => d2.isRightOf(d));
  //  Return dancer directly to the left of given dancer
  Dancer? dancerToLeft(Dancer d) =>
      dancerClosest(d, (d2) => d2.isLeftOf(d));

  //  Return dancer that is facing the front of this dancer
  Dancer? dancerFacing(Dancer d) {
    var d2 = dancerInFront(d);
    return d2 != null && dancerInFront(d2) == d ? d2 : null;
  }

  //  Return dancers that are in between two other dancers
  List<Dancer> inBetween(Dancer d1, Dancer d2) =>
      dancers.where((d) =>
      d != d1 && d != d2 &&
          (d.distanceTo(d1)+d.distanceTo(d2)).isAbout(d1.distanceTo(d2))).toList();

  //  Return all the dancers to the right, in order
  List<Dancer> dancersToRight(Dancer d) =>
      dancersInOrder(d, (d2) => d2.isRightOf(d));

  //  Return all the dancers to the left, in order
  List<Dancer> dancersToLeft(Dancer d) =>
      dancersInOrder(d, (d2) => d2.isLeftOf(d));

  //  Return all the dancers in front, in order
  List<Dancer> dancersInFront(Dancer d) =>
      dancersInOrder(d, (d2) => d2.isInFrontOf(d));

  //  Return all the dancers in back, in order
  List<Dancer> dancersInBack(Dancer d) =>
      dancersInOrder(d, (d2) => d2.isInBackOf(d));

  //  Return outer 2, 4 , 6 dancers
  List<Dancer> outer(int num) =>
      dancers.sortedWith((d1, d2) => d1.location.length.compareTo(d2.location.length))
          .drop(dancers.length-num);

  //  Return center 2, 4 , 6 dancers
  List<Dancer> center(int num) =>
      dancers.sortedWith((d1, d2) => d1.location.length.compareTo(d2.location.length))
          .take(num).toList();

  //  Smarter code for center 6, works for 1/4 and 3/4 tags
  //  Requires call to analyze()
  List<Dancer> center6() {
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
  List<Dancer> pointsOfDiamondFormation(String f) {
    final ctx2 = CallContext.fromXML(TamUtils.getFormation(f));
    final points = <Dancer>[];
    final mapping = ctx2.matchFormations(this,rotate: 180, subformation: true);
    if (mapping != null) {
      for (var i=0; i<ctx2.dancers.length; i++) {
        if (ctx2.dancers[i].gender == Gender.GIRL)
          points.add(dancers[mapping.map[i]]);
      }
    }
    return points;
  }

  List<Dancer> points() {
    var points =
        pointsOfDiamondFormation('Diamonds RH Girl Points') +
        pointsOfDiamondFormation('Diamonds RH PTP Girl Points') +
        pointsOfDiamondFormation('Hourglass RH GP') +
        pointsOfDiamondFormation('Galaxy RH GP');
    //  Only try single diamond if none others found
    //  Otherwise points of hourglass central diamond
    //  are incorrectly added
    if (points.isEmpty)
      points = pointsOfDiamondFormation('Diamond LH Boys Center');
    return points;
  }

  //  Return pair of boxes for dancers in a 2x4 formation
  List<List<Dancer>>? boxes() {
    if (!isTBone())
      return null;
    var farout = outer(4).first;
    var isX = farout.location.x.abs() > farout.location.y.abs();
    return dancers.partition(
            (d) => isX ? d.location.x < 0 : d.location.y < 0
    );
  }

  List<Dancer>? waveOf6() {
    final xDancers = dancers.where((d) => d.isOnXAxis);
    final yDancers = dancers.where((d) => d.isOnYAxis);
    if (xDancers.length == 6)
      return xDancers.toList();
    else if (yDancers.length == 6)
      return yDancers.toList();
    else
      return null;
  }

  List<Dancer> dancersHoldingRightHands({bool isGrand=true}) =>
      dancers.where((d) {
        final d2 = dancerToRight(d);
        return d2 != null && d.distanceTo(d2) < 3.5 &&
            dancerToRight(d2) == d &&
            (isGrand || !isTidal() ||
                !d.data.verycenter || !d2.data.verycenter);
      }).toList();

  List<Dancer> dancersHoldingLeftHands({bool isGrand=true}) =>
      dancers.where((d) {
        final d2 = dancerToLeft(d);
        return d2 != null && d.distanceTo(d2) < 3.5 &&
            dancerToLeft(d2) == d &&
            (isGrand || !isTidal() ||
                !d.data.verycenter || !d2.data.verycenter);
      }).toList();

  List<Dancer> dancersHoldingSameHands({ required bool isRight, bool isGrand=true}) =>
      isRight ? dancersHoldingRightHands(isGrand:isGrand)
              : dancersHoldingLeftHands(isGrand:isGrand);

  //  Return true if this dancer is in a wave or mini-wave
  bool isInWave(Dancer d, [Dancer? d2]) {
    d2 ??= d.data.partner;
    return d2 != null && d.angleToDancer(d2).isAround(d2.angleToDancer(d)) &&
        d.distanceTo(d2) < 2.4;
  }

  //  Return true if two dancers are facing the same direction
  bool isFacingSameDirection(Dancer d, Dancer d2) =>
      d.angleFacing.isAround(d2.angleFacing);

  //  Return true if this dancer is part of a couple facing same direction
  bool isInCouple(Dancer d, [Dancer? d2]) {
    d2 ??= d.data.partner;
    return d2 != null && isFacingSameDirection(d,d2);
  }

  //  Return true if this dancer is in tandem with another dancer
  Dancer? tandemDancer(Dancer d) {
    if (d.data.trailer && (dancerInFront(d)?.data.leader ?? false))
      return dancerInFront(d);
    else if (d.data.leader && (dancerInBack(d)?.data.trailer ?? false))
      return dancerInBack(d);
    else
      return null;
  }
  bool isInTandem(Dancer d) => tandemDancer(d) != null;

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
  bool isLines() => dancers.every((d) =>
      dancersToRight(d).length + dancersToLeft(d).length == 3
  );

  bool isWaves() => dancers.every((d) {
    var dr = dancerToRight(d);
    var dl = dancerToLeft(d);
    if ((dr == null || d.distanceTo(dr) > 2.1) &&
        (dl == null || d.distanceTo(dl) > 2.1))
      return false;
    if (dr != null && d.distanceTo(dr) < 2.1 && !isInWave(d,dr))
      return false;
    if (dl != null && d.distanceTo(dl) < 2.1 && !isInWave(d,dl))
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
  bool isThar() => isLines() &&
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

  bool isDiamond() => dancers.every((d) => dancers.where((d2) {
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
  String tagDirection(Dancer d) {
    if (dancerToRight(d)?.data.center == true)
      return 'Right';
    else if (dancerToLeft(d)?.data.center == true)
      return 'Left';
    return '';
  }

  //  Is there a dancer at a specific spot?
  Dancer? dancerAt(Vector spot) =>
      dancers.where((d) => d.location == spot).firstOrNull;

  //  Are two dancers on the same spot?
  bool isCollision() => dancers.any((d) =>
      dancers.any((d2) =>
      d != d2 && d.location == d2.location
      )
  );

  //  Get direction dancer would Roll
  Rolling roll(Dancer dv) {
    var d = dv;
    if (d.path.movelist.isEmpty && _source != null)
      d = _source!.dancers.firstWhere((d2) => d2 == dv);
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
          d.path.changeBeats(d.path.beats + b);
        } else {
          //  Large change - add that number as needed by using the 'Stand' move
          d.path.add(TamUtils.getMove('Stand')
            ..changeBeats(b)
            ..notFromCall());
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
      d.path.changeBeats(newbeats);
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

  //  Move a dancer to a specific position (location and angle)
  //  Location and angle are in the dance floor space
  Path moveToPosition(Dancer d, Vector location, double angle) {
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
    //  Otherwise, if there are 4 dancers closer to the center than the other 4,
    //  they are the centers
    else if (dancers.length > 4 &&
        !(dorder[3].location.length.isAbout(dorder[4].location.length))) {
      for (var i in [0,1,2,3])
        dorder[i].data.center = true;
    }

  }

}