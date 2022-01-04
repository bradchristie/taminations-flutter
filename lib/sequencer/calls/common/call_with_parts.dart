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

class CallWithParts {

  Future<void> finish(CallContext ctx) async { }
  Future<void> reverseOrder(CallContext ctx) async { }

}

abstract class TwoPartCall extends Action implements CallWithParts {

  TwoPartCall(String name) : super(name);

  Future<void> performPart1(CallContext ctx);
  Future<void> performPart2(CallContext ctx);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    await performPart1(ctx);
    ctx.extendPaths();
    await performPart2(ctx);
  }

  @override
  Future<void> finish(CallContext ctx) async {
    await performPart2(ctx);
  }

  @override
  Future<void> reverseOrder(CallContext ctx) async {
    await performPart2(ctx);
    ctx.extendPaths();
    await performPart1(ctx);
  }

}

abstract class ThreePartCall extends Action implements CallWithParts {

  ThreePartCall(String name) : super(name);

  Future<void> performPart1(CallContext ctx);
  Future<void> performPart2(CallContext ctx);
  Future<void> performPart3(CallContext ctx);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    await performPart1(ctx);
    ctx.extendPaths();
    await performPart2(ctx);
    ctx.extendPaths();
    await performPart3(ctx);
  }

  @override
  Future<void> finish(CallContext ctx) async {
    await performPart2(ctx);
    ctx.extendPaths();
    await performPart3(ctx);
  }

  @override
  Future<void> reverseOrder(CallContext ctx) async {
    await performPart3(ctx);
    ctx.extendPaths();
    await performPart2(ctx);
    ctx.extendPaths();
    await performPart1(ctx);
  }

}

abstract class FourPartCall extends Action implements CallWithParts {

  FourPartCall(String name) : super(name);

  Future<void> performPart1(CallContext ctx);
  Future<void> performPart2(CallContext ctx);
  Future<void> performPart3(CallContext ctx);
  Future<void> performPart4(CallContext ctx);

  @override
  Future<void> perform(CallContext ctx, [int stackIndex=0]) async {
    await performPart1(ctx);
    ctx.extendPaths();
    await performPart2(ctx);
    ctx.extendPaths();
    await performPart3(ctx);
    ctx.extendPaths();
    await performPart4(ctx);
  }

  @override
  Future<void> finish(CallContext ctx) async {
    await performPart2(ctx);
    ctx.extendPaths();
    await performPart3(ctx);
    ctx.extendPaths();
    await performPart4(ctx);
  }

  @override
  Future<void> reverseOrder(CallContext ctx) async {
    await performPart4(ctx);
    ctx.extendPaths();
    await performPart3(ctx);
    ctx.extendPaths();
    await performPart2(ctx);
    ctx.extendPaths();
    await performPart1(ctx);
  }

}