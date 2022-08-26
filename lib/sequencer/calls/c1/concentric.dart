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

class Concentric extends FourDancerConcept {

  @override final level = LevelData.C1;
  @override final conceptName = 'Concentric';
  @override var help = 'Besides Concentric calls for all 8 dancers,'
      ' you can have 4 dancers perform a Concentric call outside the other 4.';
  @override var helplink = 'c1/concentric_concept';
  final _dancerLocations = <String,List<Vector>>{};
  final _dancerShifts = <String,List<Vector>>{};
  var _minDistance = 10.0;
  Concentric(String name) : super(name);

  @override
  List<List<Dancer>> dancerGroups(CallContext ctx) =>
      ctx.actives.map((d) => [d]).toList();


  //  Compute location of "normal" dancer from position of
  //  outer concentric dancer.
  //  This just shifts it in 2 units along the long axis
  @override
  Vector startPosition(List<Dancer> group) {
    final loc = group.first.location;
    final shift = min(2.0,_minDistance-0.5);
    return (loc.x.abs() > loc.y.abs())
      ? Vector(loc.x - (shift*loc.x.sign), loc.y)
      : Vector(loc.x, loc.y - (shift*loc.y.sign));
  }

  @override
  void analyzeConceptResult(CallContext conceptctx, CallContext realctx) {
    //  Look at each movement to figure out
    //  the end point of the real dancer.
    for (var di=0; di<conceptctx.dancers.length; di++) {
      final cd = conceptctx.dancers[di];
      final d = realctx.dancers[di];
      var cdbeat = 0.0;
      final dloc = d.starttx;
      final dlocList = <Vector>[];
      final shiftList = <Vector>[];
      _dancerLocations[cd.number] = dlocList;
      _dancerShifts[cd.number] = shiftList;
      dlocList.add(d.location - cd.location);
      for (var i=0; i<cd.path.movelist.length; i++) {
        final m = cd.path.movelist[i];
        final isLast = i == cd.path.movelist.length - 1;

        //  Does the movement cross an axis?
        //  If so, remember so we can shift the dancer away from that axis
        var xshift = 0.0;
        var yshift = 0.0;
        cd.animate(cdbeat);
        final cdloc1 = cd.location;
        cd.animate(cdbeat+m.beats);
        final cdloc2 = cd.location;
        if (!cdloc1.x.isAbout(0.0) && !cdloc2.x.isAbout(0.0) &&
            cdloc1.x.sign != cdloc2.x.sign)
          //  Crosses Y axis
          yshift = 1.5;
        if (!cdloc1.y.isAbout(0.0) && !cdloc2.y.isAbout(0.0) &&
            cdloc1.y.sign != cdloc2.y.sign)
          //  Crosses X axis
          xshift = 1.5;
        if (xshift != 0.0 || yshift != 0.0) {
          cd.animate(cdbeat + m.beats / 2.0);
          //  If it's already some distance out on the axis don't need to shift
          if (cd.location.length.isLessThan(1.5)) {
            xshift *= cd.location.x.sign;
            yshift *= cd.location.y.sign;
          } else {
            xshift = 0.0;
            yshift = 0.0;
          }
          cd.animate(cdbeat + m.beats);
        }
        shiftList.add(Vector(xshift,yshift));

        //  If it ends on an axis, then real dancer is on same axis further out
        var dx = 0.0;
        var dy = 0.0;
        if (cd.isOnXAxis) {
          dx = 2.0;
        } else if (cd.isOnYAxis) {
          dy = 2.0;
        } else if (!isLast) {

          //  For 2x2 not at end of call, just shift out both directions
          dx = 2.0;
          dy = 2.0;
        } else {

          //  Not on an axis (ends in a 2x2) - should we move out X or Y?
          //  If started on an axis (i.e., not a 2x2),
          //  then shift out on the other axis
          if (dloc.location.x.isAbout(0.0))
            dx = 2.0;
          else if (dloc.location.y.isAbout(0.0))
            dy = 2.0;
          else {

            //  Starts and ends in a 2x2
            //  The rule is "Lines to Lines, Columns to Columns"
            //  Has the dancer's facing direction changed 90 degrees?
            final a1 = dloc.angle;
            final a2 = cd.angleFacing;
            final is90 = a1.angleDiff(a2).abs().isAround(pi/2.0);
            if ((dloc.location.x.abs() > dloc.location.y.abs()) ^ is90)
              dx = 2.0;
            else
              dy = 2.0;
          }
        }
        dx *= cd.location.x.sign;
        dy *= cd.location.y.sign;
        //  Remember the shift, will be used in computeLocation below
        dlocList.add(Vector(dx,dy));

        cdbeat += m.beats;

      }
    }
  }

  @override
  Vector computeLocation(Dancer d, Movement m, int mi, double beat, int groupIndex) {
    //  Get the offset vectors for the start and end of this movement
    final v1 = _dancerLocations[d.number]![mi];
    final v2 = _dancerLocations[d.number]![mi+1];
    //  Convert to dancer space
    final v1d = v1.rotate(-d.angleFacing);
    final v2d = v2.rotate(-d.angleFacing);
    //  Compute interpolation fraction
    final f = beat / m.beats;
    //  Interpolate each offset to get dancer's current offset
    //  Hack for 1st movement, parent has adjusted according to startPosition
    final vnow = (v2d - v1d) * f + ((mi==0) ? v1d : Vector());
    final pos = m.translate(beat).location;
    final shift = (f.isGreaterThan(0.0) && f.isLessThan(1.0))
        ? _dancerShifts[d.number]![mi].rotate(-d.angleFacing)
        : Vector();
    //  And add it to the concept dancer location
    return pos + vnow + shift;
  }

  @override
  Future<void> perform(CallContext ctx) async {
    if (realCall.isBlank)
      throw CallError('Concentric what?');
    if (ctx.actives.length == 8)
      await ctx.applyCalls('Center 4 $realCall While Outer 4 $name');
    else if (ctx.dancers.length == 8)
      await ctx.subContext(ctx.actives, (ctx2) async => await ctx2.applyCalls(name));
    else {
      _minDistance = ctx.dancers.fold(10.0, (x, d) => min(x,d.location.length));
      await super.perform(ctx);
    }
  }

}