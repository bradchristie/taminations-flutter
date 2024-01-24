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

class Cloverleaf extends Action {

  @override final level = LevelData.MS;
  @override var helplink = 'ms/cloverleaf';
  Cloverleaf() : super('Cloverleaf');

  //  We get here only if standard Cloverleaf with all 8 dancers active fails.
  //  So do a 4-dancer cloverleaf
  @override
  void performCall(CallContext ctx) {
    final adjust = ctx.is2x4() && ctx.center(4).every((d) => d.isFacingOut)
        ? 'Adjust to a Box' : 'Nothing';
    ctx.applyCalls('Clover and $adjust');
  }

}

class CloverAnd extends Action {

  @override
  LevelData get level => (name == 'Clover and Nothing' ||
      name == 'Clover and Adjust to a Box')
      ? LevelData.MS : LevelData.A1;
  CloverAnd(String name) : super(name);

  @override
  void performCall(CallContext ctx) {
    //  Find the 4 dancers to Cloverleaf
    //  First check the outer 4
    final outer4 = ctx.dancers.sortedBy((d) => d.location.length).drop(4).toList();
    //  If that fails will try for 4 dancers facing out
    final facingOut = ctx.dancers.where((d) =>
             d.isFacingOut && ctx.dancerInFront(d)==null).toList();
    List<DancerModel> clovers;
    //  Don't use outer4 directly, instead filter facingOut
    //  This preserves the original order, required for mapping
    var othersStep = false;
    if (outer4.every((d) => facingOut.contains(d)))
      clovers = facingOut.where((d) => outer4.contains(d)).toList();
    else if (facingOut.length == 4) {
      clovers = facingOut;
    }
    else
      throw CallError('Unable to find dancers to Cloverleaf');
    //  Other dancers might need to step ahead to make sure their call works
    //  and doesn't collide with the clovers.
    if (ctx.dancers.every((d) {
      if (clovers.contains(d))
        return true;
      if (d.location.length > 3.0) {
        var d2 = ctx.dancerInFront(d);
        if (d2 == null || clovers.contains(d2))
          return true;
      }
      return false;
    }))
      othersStep = true;

    final ss = CallContext.fromFormation(Formation('Squared Set'));
    final m = ctx.matchFormations(ss,rotate: 180);
    if (m != null) {
      othersStep = true;
    }

    //  Make those 4 dancers Cloverleaf
    final call2 = name.split('and');
    final cloverCall = call2.first;
    final andCall = call2.drop(1).join('and');
    ctx.subContext(clovers, (ctx2) {
      ctx2.applyCalls('$cloverCall and');
      //  "Clover and <nothing>" is stored in A-1 but is really Mainstream
      ctx2.level = LevelData.MS;
    });
    //  And the other 4 do the next call at the same time
    ctx.subContext(ctx.dancers.where((d) => !clovers.contains(d)).toList(), (ctx2) {
      for (final d in ctx2.dancers)
        d.data.active = true;
      if (othersStep)
        ctx2.applyCalls('Step');
      ctx2.applyCalls(andCall);
    });
  }

}
