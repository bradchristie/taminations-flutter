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

import '../common.dart';

class Concentric extends Action {

  @override final level = LevelData.C1;
  @override var help = 'Besides Concentric calls for all 8 dancers,'
      ' you can have 4 dancers perform a Concentric call outside the other 4.';
  @override var helplink = 'c1/concentric_concept';
  final String realCall;
  Concentric(String name) :
        realCall=name.replaceFirst('Concentric', '').trim(),
        super(name);

  void _performConcentric(CallContext ctx) {
    //  Move the dancers closer to the center
    var maxX = ctx.dancers.maxOf((d) => d.location.x.abs());
    var maxY = ctx.dancers.maxOf((d) => d.location.y.abs());
    var isMajorX = maxX > maxY;
    var dstarts = <DancerModel,Vector>{};
    var dangles = <DancerModel,double>{};
    ctx.subContext(ctx.dancers, (ctx2) {
      for (var d in ctx2.dancers) {
        late Vector dstart;
        if (isMajorX)
          dstart = Vector(d.location.x / 2.0, 0.0);
        else
          dstart = Vector(0.0, d.location.y / 2.0);
        dstarts[d] = dstart;
        dangles[d] = d.angleFacing;
        d.setStartPosition(d.location - dstart);
      }
      //  Note if we have a 2x2
      var startsWithBox = ctx2.isBox();
      //  Now do the call normally
      ctx2.applyCalls(realCall);
      ctx2.animateToEnd();
      var endsWithBox = ctx2.isBox();
      //  Figure out which axis to stretch out the end position
      late Vector dend;
      for (var d in ctx2.dancers) {
        //  If final position is on an axis, that is the stretch direction
        if (d.location.x.isAbout(0.0))
          dend = Vector(0.0, d.location.y.sign * 2.0);
        else if (d.location.y.isAbout(0.0))
          dend = Vector(d.location.x.sign * 2.0, 0.0);
        //  If start and final are boxes, then it depends on
        //  the dancer's facing positions - lines to lines, columns to columns
        else if (startsWithBox && endsWithBox) {
          var angleDiff = d.angleFacing.angleDiff(dangles[d]!);
          if ((angleDiff.isAround(0.0) || angleDiff.isAround(pi))^ isMajorX) {
            dend = Vector(0.0, d.location.y.sign * 2.0);
          }
          else {
            dend = Vector(d.location.x.sign * 2.0, 0.0);
          }
        }
        //  If none of the above, then the major axis is rotated
        else if (isMajorX)
          dend = Vector(0.0, d.location.y.sign * 2.0);
        else
          dend = Vector(d.location.x.sign * 2.0, 0.0);
        d.animate(0.0);
        dend = dend.rotate(-d.angleFacing);
        d.path = d.path.skewFirst(dend.x,dend.y);
        var dstart = dstarts[d]!.rotate(-d.angleFacing);
        d.path = d.path.skewFirst(-dstart.x,-dstart.y);
      }
      ctx2.animateToEnd();
    });
  }

  @override
  void perform(CallContext ctx) {
    if (realCall.isBlank)
      throw CallError('Concentric what?');
    if (ctx.actives.length == 8) {
      ctx.canDoYourPart = false;
      ctx.subContext(ctx.center(4),(centerCtx) {
        centerCtx.applyCalls(realCall);
      });
      ctx.checkCenters();
      ctx.contractPaths();
      ctx.applyCalls('Outer 4 $name');
    }
    else {
      ctx.subContext(ctx.actives, (ctx2) {
        _performConcentric(ctx2);
      });
      ctx.checkCenters(force:true);
    }
  }

}