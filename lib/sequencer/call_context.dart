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



import 'dart:math';

import 'package:flutter/material.dart';
import 'package:taminations/color.dart';
import 'package:taminations/geometry.dart';
import 'package:taminations/level_data.dart';
import 'package:taminations/math/matrix.dart';
import 'package:taminations/math/vector.dart';
import 'package:taminations/sequencer/calls/call.dart';
import 'package:xml/xml.dart';

import '../dancer.dart';
import '../tam_utils.dart';
import '../extensions.dart';
import '../level_data.dart';

class CallContext {

  //  XML files that have been loaded
  static var loadedMXL = Map<String,XmlDocument>();

  //  Index into files for specific calls
  //  Supplements looking up calls in TamUtils.calldata
  //  Keys are normalized call name
  //  Values are file names
  static var callindex = Map<String,Set<String>>();

  static const callindexinitfiles = [
    "c1/block_formation",
    "b1/circle",
    "a1/clover_and_anything",
    "a1/cross_clover_and_anything",
    "c1/cross_your_neighbor",
    "c2/criss_cross_your_neighbor",
    "plus/explode_the_wave",
    "a1/explode_the_line",
    "b1/sashay",
    "b1/ladies_chain",
    "a1/any_hand_concept",
    "a1/split_square_thru",
    "b2/sweep_a_quarter",
    "b1/circulate",
    "b1/face",
    "c1/butterfly_formation",
    "a2/all_4_all_8",
    "a1/as_couples",
    "b1/veer",
    "b1/circle",
    "b1/grand_square",
    "b1/lead_right",
    "b2/first_couple_go",
    "a1/as_couples",
    "c1/stretch_concept",
    "c1/butterfly_formation",
    "c1/concentric_concept",
    "c1/o_formation",
    "c1/box_split_recycle",
    "c1/magic_column_formation",
    "c1/phantom_formation",
    "plus/single_circle_to_a_wave",
    "c1/tandem_concept",
    "c1/track_n",
    "c1/triple_box_concept",
    "b2/ocean_wave",
    "c1/wheel_and_anything",
    "plus/chase_right",
    "a1/fractional_tops",
    "a1/quarter_thru",
    "a1/three_quarter_thru",
    "b1/split_the_outside_couple",
    "c2/anything_the_k",
    "a2/transfer_and_anything",
    "ms/eight_chain_thru",
    "b1/separate",
    "c1/anything_the_windmill",
    "c1/anything_to_a_wave",
    "c1/tagging_calls_back_to_a_wave",
    "plus/grand_swing_thru",
    "c2/anything_and_circle",
    "b1/star",
    "b2/alamo_style",
    "c2/once_removed_concept",
    "c1/split_square_thru_variations",
    "c2/unwrap",
    "c2/stretched_concept"
  ];

  static const standardFormations = {
    "Normal Lines Compact" : 1.0,
    "Normal Lines" : 1.0,
    "Double Pass Thru" : 1.0,
    "Quarter Tag" : 1.5,
    "Tidal Line RH" : 1.0,
    "Tidal Wave of 6" : 2.0,
    "I-Beam" : 2.0,
    "Diamonds RH Girl Points" : 2.0,
    "Diamonds RH PTP Girl Points" : 3.0,
    "Hourglass RH BP" : 3.0,
    "Galaxy RH GP" : 3.0,
    "Butterfly RH" : 3.0,
    "O RH" : 3.0,
    "Thar RH Boys" : 3.0,
    "Sausage RH" : 3.0,
    "Static Square" : 2.0,
    //"Alamo Wave"
    "Right-Hand Zs" : 2.0,
    "Left-Hand Zs" : 2.0,
    //  Siamese formations
    //  This also covers C-1 Phantom formations
    "Siamese Box 1" : 2.0,
    "Siamese Box 2" : 2.0,
    "Siamese Wave" : 2.0,
    //  Blocks
    "Facing Blocks Right" : 2.0,
    "Facing Blocks Left" : 2.0,
    "Concentric Diamonds RH" : 2.0,
    "Quarter Z RH" : 4.0,
    "Quarter Z LH" : 4.0
  };

  static const twoCoupleFormations = {
    "Facing Couples Compact" : 1.0,
    "Facing Couples" : 1.0,
    "Two-Faced Line RH" : 1.0,
    "Diamond RH" : 1.0,
    "Single Eight Chain Thru" : 1.0,
    "Single Quarter Tag" : 1.0,
    "Square RH" : 1.0
  };

  static Future<void> loadOneFile(String link) {
    if (loadedMXL.containsKey(link))
      return Future<void>.value();
    TamUtils.getXMLAsset(link).then((doc) {
      //  Add all the calls to the index
      doc.findAllElements("tam").forEach((tam) {
        var norm = TamUtils.normalizeCall(tam.getAttribute("title"));
        if (!callindex.containsKey(norm))
          callindex[norm] = Set<String>();
        callindex[norm].add(link);
      });
      //  TODO ??? look for xrefs and load
      loadedMXL[link] = doc;
    });
  }

  static Future<void> init() {
    if (callindex.length == 0) {
      return Future.wait(callindexinitfiles.map((file) => loadOneFile(file)));
    }
    return Future<void>.value();
  }

  /////// end of static code ///////

  List<Dancer> dancers;
  String callname = "";
  LevelDatum level = LevelData.find("b1");
  List<Call> callstack = [];
  List<List<Dancer>> groups = [];
  String get groupstr => groups.map((e) => e.length).join();
  CallContext _source;
  bool _snap = true;
  bool _thoseWhoCan = false;

  //  Create a context from an array of Dancer
  CallContext.fromDancers(List<Dancer> dancers) {
    this.dancers = dancers.map((d) {
      d.animateToEnd();
      return Dancer.clone(d);
    });
  }

  CallContext.fromContext(
      CallContext source, {
        List<Dancer> sourceDancers,
        double beat = double.maxFinite
      }) {
    if (sourceDancers == null)
      sourceDancers = source.dancers;
    sourceDancers.forEach((d) { d.animate(beat); });
      dancers = sourceDancers.map((d) => Dancer.clone(d));
    if (!sourceDancers.areDancersOrdered())
      dancers = dancers.center().inOrder();
    _source = source;
    _snap = source._snap;
  }

  //  Create a context from a formation defined in XML
  //  The element passed in can be either a "tam" from
  //  an animation, or a formation
  CallContext.fromXML(XmlElement tam, [bool loadPaths=false]) {
    var numberArray = TamUtils.getNumbers(tam);
    var coupleArray = TamUtils.getCouples(tam);
    List<XmlElement> paths = loadPaths ? tam.childrenNamed("path") : [];
    var fname = tam.getAttribute("formation");
    var f = fname != null
        ? TamUtils.getFormation(fname)
        : (tam.childrenNamed("formation").firstOrNull ?? tam);
    var dancerElements = f.childrenNamed("dancer");
    for (var i=0; i<dancerElements.length; i++) {
      var element = dancerElements[i];
      //  This assumes square geometry
      //  Make sure each dancer in the list is immediately followed by its
      //  diagonal opposite.  Required for mapping.
      dancers.add(Dancer(
        numberArray[i*2], coupleArray[i*2],
        Gender.BOY,
        Color.WHITE,  // not used
        Matrix.getTranslation(element.getAttribute("x").d,element.getAttribute("y").d) *
          Matrix.getRotation(element.getAttribute("angle").d.toRadians),
        Geometry.getGeometry(Geometry.SQUARE).first,
        paths.length > i ? TamUtils.translatePath(paths[i]) : []
      ));
      dancers.add(Dancer(
          numberArray[i*2+1], coupleArray[i*2+1],
          Gender.BOY,
          Color.WHITE,  // not used
          Matrix.getTranslation(element.getAttribute("x").d,element.getAttribute("y").d) *
              Matrix.getRotation(element.getAttribute("angle").d.toRadians),
          Geometry.getGeometry(Geometry.SQUARE)[1],
          paths.length > i ? TamUtils.translatePath(paths[i]) : []
      ));
    }
  }

  void noSnap() { _snap = false; }

  //  Get the active dancers, e.g. for "Boys Trade" the boys are active
  List<Dancer> get actives => dancers.where( (d) => d.data.active );

  /// Append the result of processing this CallContext to it source.
  /// The CallContext must have been previously cloned from the source.
  void appendToSource() {
    dancers.forEach((clone) {
      var original = clone.clonedFrom;
      //  Phantoms might have been rotated in clone,
      //  so set start angle in original to match
      if (clone.gender == Gender.PHANTOM && original.path.movelist.isEmpty)
        original.setStartAngle(clone.starttx.angle);
      original.path.add(clone.path);
      original.animateToEnd();
    });
    if (_source.level < level)
      _source.level = level;
  }


  bool _appendTo(CallContext ctx) {
    var retval = false;
    ctx.dancers.forEach((d) {
      var d2 = dancers.firstOrNull;
      if (d2 != null) {
        retval = retval || d2.path.movelist.isNotEmpty;
        d.path.add(d2.path);
        d.animateToEnd();
      }
    });
    return retval;
  }

  //  Create a new CallContext from a list of dancers
  //  (usually a subset of this CallContext dancers).
  //  Apply a function as a method of the new CallContext.
  //  Then transfer any new calls from the created CallContext to this CallContext.
  //  Return true if anything new was added.
  bool subContext(List<Dancer> dancers, Function(CallContext) block) {
    if (dancers == null)
      dancers = this.dancers;
    var ctx = CallContext.fromDancers(dancers.inOrder());
    block(ctx);
    return ctx._appendTo(this);
  }

  //  For now this just checks for collisions in a tidal formation
  //  If a collision is detected, then the animation is
  //  squeezed along the axis of the formation
  void checkForCollisions() {

  }


  /// This is the main loop for interpreting a call
  /// @param calltxt  One complete call, lower case, words separated by single spaces
  /// @param noAction set to true if it's ok for this call not to do anything
  Future<void> interpretCall(String calltext, {bool noAction = false}) {


    return Future<void>.value();
  }


  Future<void> performCall() {
    return Future<void>.value();
  }



  void extendPaths() { }



  //  Return max number of beats among all the dancers
  double maxBeats() => dancers.fold(0.0, (v, d) => max(v,d.path.beats));

  //  Return all dancers, ordered by distance from another dancer,
  //  that satisfies a conditional
  List<Dancer> dancersInOrder(Dancer d, bool f(Dancer d)) =>
      (dancers - d).where(f).toList().sortedBy((d1,d2) => 0);

  //  Return closest dancer that satisfies a given conditional
  Dancer dancerClosest(Dancer d, bool f(Dancer d2)) =>
      dancersInOrder(d,f).firstOrNull;

  //  Return dancer directly in front of given dancer
  Dancer dancerInFront(Dancer d) =>
      dancerClosest(d, (d2) => d2.isInFrontOf(d));
  //  Return dancer directly in back of given dancer
  Dancer dancerInBack(Dancer d) =>
      dancerClosest(d, (d2) => d2.isInBackOf(d));
  //  Return dancer directly to the right of given dancer
  Dancer dancerToRight(Dancer d) =>
      dancerClosest(d, (d2) => d2.isRightOf(d));
  //  Return dancer directly to the left of given dancer
  Dancer dancerToLeft(Dancer d) =>
      dancerClosest(d, (d2) => d2.isLeftOf(d));

  //  Return dancer that is facing the front of this dancer
  Dancer dancerFacing(Dancer d) {
    var d2 = dancerInFront(d);
    return d2 != null && dancerInFront(d2) == d ? d2 : null;
  }

  //  Return dancers that are in between two other dancers
  List<Dancer> inBetween(Dancer d1, Dancer d2) =>
      dancers.where((d) =>
      d != d1 && d != d2 &&
          (d.distanceTo(d1)+d.distanceTo(d2)).isAbout(d1.distanceTo(d2)));

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
      dancers.sortedBy((d1, d2) => d1.location.length.compareTo(d2.location.length))
          .drop(dancers.length-num);

  //  Return center 2, 4 , 6 dancers
  List<Dancer> center(int num) =>
      dancers.sortedBy((d1, d2) => d1.location.length.compareTo(d2.location.length))
          .take(num);




  //  Is there a dancer at a specific spot?
  Dancer dancerAt(Vector spot) =>
      dancers.firstWhere((d) => d.location == spot, orElse: null);

  //  Are two dancers on the same spot?
  bool isCollision() => dancers.any((d) =>
      dancers.any((d2) =>
      d != d2 && d.location == d2.location
      )
  );



}