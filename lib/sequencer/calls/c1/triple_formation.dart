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


abstract class TripleFormation extends Action {

  @override final level = LevelData.C1;
  TripleFormation(String name) :
        subCall = name.replaceFirst('Triple (Box|Lines?|Waves?|Columns?) '.r,''),
        super(name);

  static const tripleBoxFormations = {
    'Triple Boxes' : 1.0,
    'Triple Boxes 2' : 1.0,
    'Triple Lines' : 1.0,
    'Triple Columns' : 1.0
  };

  var isXaxis = false;
  bool findAxis(CallContext ctx);
  double major(Vector v) => isXaxis ? v.x : v.y;
  double minor(Vector v) => isXaxis ? v.y : v.x;

  List<double> majorValues(CallContext ctx);
  List<double> minorValues(CallContext ctx);
  List<CallContext> tripleFormations(CallContext ctx);

  String subCall;

  @override
  Future<void> perform(CallContext ctx) async {
    isXaxis = findAxis(ctx);
    //  Add phantoms in spots not occupied by dancers
    final phantoms = <Dancer>[];
    for (final c1 in majorValues(ctx)) {
      for (final c2 in minorValues(ctx)) {
        final v = isXaxis ? [c1,c2].v : [c2,c1].v;
        if (ctx.dancerAt(v) == null) {
          final phantomDancer = Dancer.clone(ctx.dancers.first,
              gender: Gender.PHANTOM,
              number: 'P${phantoms.length+1}');
          phantomDancer.setStartPosition(v);
          phantoms.add(phantomDancer);
        }
      }
    }
    //  Make the three boxes
    final tripleBoxCtx = CallContext.fromContext(ctx, dancers:ctx.dancers + phantoms);
    final tripleContexts = tripleFormations(tripleBoxCtx);
    //  Apply call to each box
    for (final box in tripleContexts) {
      if (box.dancers.length != 4)
        throw CallError('Error splitting into groups - group has ${box.dancers.length} dancers.');
      box.analyze();
      final rotatedBox = await box.rotatePhantoms(subCall,rotate: 180, asym: true);
      if (rotatedBox == null)
        throw CallError('Unable to do $subCall with these Triple Boxes');
      await rotatedBox.applyCalls(subCall);
      //  If it ends in a bax, make it a compact box in major direction
      //  so it will fit with others to make a triple box
      if (rotatedBox.isBox() &&
          rotatedBox.dancers.any((d) => major(d.location).abs().isGreaterThan(1.0)))
        rotatedBox.adjustToFormation('Facing Couples Close',rotate: 90);
      //  Now apply the result to the 12-dancer triple box context
      rotatedBox.appendToSource();
      box.appendToSource();
    }
    //  Apply 12-dancer result to original 8 dancers
    tripleBoxCtx.animateToEnd();
    tripleBoxCtx.matchFormationList(tripleBoxFormations,maxOffset: 9.1);
    for (final boxd in tripleBoxCtx.dancers.where((d) => d.gender != Gender.PHANTOM)) {
      ctx.dancers.firstWhere((d) => d == boxd).path = boxd.path;
    }
    ctx.noSnap();
  }

}


//  This class is for Triple Box only,
//  which is 12 spots arranged in a 2 x 6
class TripleBox extends TripleFormation {

  TripleBox(String name) : super(name);

  @override
  List<double> majorValues(CallContext ctx) => [-5.0, -3.0, -1.0, 1.0, 3.0, 5.0];
  @override
  List<double> minorValues(CallContext ctx) =>
      [-minor(ctx.dancers[0].location),minor(ctx.dancers[0].location)];

  @override
  List<CallContext> tripleFormations(CallContext ctx) =>
      [
        CallContext.fromContext(ctx,dancers:ctx.dancers
            .where((d) => major(d.location).isGreaterThan(1.0)).toList()),
        CallContext.fromContext(ctx,dancers:ctx.dancers
            .where((d) => major(d.location).abs().isLessThan(3.0)).toList()),
        CallContext.fromContext(ctx,dancers:ctx.dancers
            .where((d) => major(d.location).isLessThan(-1.0)).toList())
      ];


  @override
  bool findAxis(CallContext ctx) {
    final maxX = ctx.dancers.maxOf((d) => d.location.x);
    final maxY = ctx.dancers.maxOf((d) => d.location.y);
    return maxX > maxY;
  }

}


class TripleLine extends TripleFormation {

  TripleLine(String name) : super(name);

  @override
  List<double> majorValues(CallContext ctx) =>
      [
        ctx.dancers.minOf((d) => major(d.location)),
        0.0,
        ctx.dancers.maxOf((d) => major(d.location)),
      ];

  @override
  List<double> minorValues(CallContext ctx) =>
      [-3.0,-1.0,1.0,3.0];

  @override
  List<CallContext> tripleFormations(CallContext ctx) {
    final xVal = ctx.dancers.maxOf((d) => major(d.location));
    return [
      CallContext.fromContext(ctx, dancers:ctx.dancers
          .where((d) => major(d.location).isAbout(-xVal)).toList()),
      CallContext.fromContext(ctx, dancers:ctx.dancers
          .where((d) => major(d.location).isAbout(0)).toList()),
      CallContext.fromContext(ctx, dancers:ctx.dancers
          .where((d) => major(d.location).isAbout(xVal)).toList()),
    ];
  }

  @override
  bool findAxis(CallContext ctx) {
    //  Triple line/wave/column - will have 4 different
    //  dancer coordinates only in axis parallel to lines
    //  Be careful about coords at 2.5, which are used often
    //  and could round up or down.
    final xGroups = ctx.dancers.groupBy((d) => (d.location.x+0.1).round());
    final yGroups = ctx.dancers.groupBy((d) => (d.location.y+0.1).round());
    //  isXaxis is true if there are 3 lines at x == 0 and x +/- 2 or 3
    if (xGroups.length == 4 && yGroups.length < 4)
      return false;
    else if (xGroups.length < 4 && yGroups.length == 4)
      return true;
    else
      throw CallError('Unable to find Triple Lines/Waves/Columns');
  }

}