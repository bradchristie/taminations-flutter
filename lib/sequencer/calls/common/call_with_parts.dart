/*
 *     Copyright 2022 Brad Christie
 *
 *     This file is part of Taminations.
 *
 *     Taminations is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU Affero General Public License as published
 *     by the Free Software Foundation, either version 3 of the License, or
 *     (at your option) any later version.
 *
 *     Taminations is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU Affero General Public License for more details.
 *
 *     You should have received a copy of the GNU Affero General Public License
 *     along with Taminations.  If not, see <http://www.gnu.org/licenses/>.
 */

import '../../call_context.dart';
import '../../calls/action.dart';

mixin CallWithParts {

  Future<void> performPart1(CallContext ctx) async { }
  Future<void> performPart2(CallContext ctx) async { }
  Future<void> performPart3(CallContext ctx) async { }
  Future<void> performPart4(CallContext ctx) async { }
  Future<void> performPart5(CallContext ctx) async { }
  Future<void> performPart6(CallContext ctx) async { }

  Future<void> Function(CallContext ctx)? replacePart1;
  Future<void> Function(CallContext ctx)? replacePart2;
  Future<void> Function(CallContext ctx)? replacePart3;
  Future<void> Function(CallContext ctx)? replacePart4;
  Future<void> Function(CallContext ctx)? replacePart5;
  Future<void> Function(CallContext ctx)? replacePart6;
  Future<void> Function(CallContext ctx)? lastPart;

  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    await (replacePart1??performPart1)(ctx);
    ctx.extendPaths();
    await (replacePart2??performPart2)(ctx);
    ctx.extendPaths();
    await (replacePart3??performPart3)(ctx);
    ctx.extendPaths();
    await (replacePart4??performPart4)(ctx);
    ctx.extendPaths();
    await (replacePart5??performPart5)(ctx);
    ctx.extendPaths();
    await (replacePart6??performPart6)(ctx);
  }

  Future<void> finish(CallContext ctx) async {
    replacePart1 = (ctx) async { };
    return perform(ctx);
  }

  Future<void> reverseOrder(CallContext ctx) async {
    await (replacePart6??performPart6)(ctx);
    ctx.extendPaths();
    await (replacePart5??performPart5)(ctx);
    ctx.extendPaths();
    await (replacePart4??performPart4)(ctx);
    ctx.extendPaths();
    await (replacePart3??performPart3)(ctx);
    ctx.extendPaths();
    await (replacePart2??performPart2)(ctx);
    ctx.extendPaths();
    await (replacePart1??performPart1)(ctx);
  }

}

class TwoPartCall extends Action with CallWithParts {

  TwoPartCall(String name) : super(name);
  @override
  Future<void> Function(CallContext ctx)? get lastPart => replacePart2;
  @override
  set lastPart(value) { replacePart2 = value; }

}

abstract class ThreePartCall extends Action with CallWithParts {

  ThreePartCall(String name) : super(name);
  @override
  Future<void> Function(CallContext ctx)? get lastPart => replacePart3;
  @override
  set lastPart(value) { replacePart3 = value; }

}

abstract class FourPartCall extends Action with CallWithParts {

  FourPartCall(String name) : super(name);
  @override
  Future<void> Function(CallContext ctx)? get lastPart => replacePart4;
  @override
  set lastPart(value) { replacePart4 = value; }

}

abstract class FivePartCall extends Action with CallWithParts {

  FivePartCall(String name) : super(name);
  @override
  Future<void> Function(CallContext ctx)? get lastPart => replacePart5;
  @override
  set lastPart(value) { replacePart5 = value; }

}

abstract class SixPartCall extends Action with CallWithParts {

  SixPartCall(String name) : super(name);
  @override
  Future<void> Function(CallContext ctx)? get lastPart => replacePart6;
  @override
  set lastPart(value) { replacePart6 = value; }

}