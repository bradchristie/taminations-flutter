/*

  Taminations Square Dance Animations
  Copyright (C) 2026 Brad Christie

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

class NuclearReaction extends Action
    with UsesTaggingCall, CallWithParts {

  @override var level = LevelData.C3B;
  @override var numberOfParts = 3;
  NuclearReaction(super.name);


  @override
  void performCall(CallContext ctx) {
    if (taggingCall != null) {
      getTaggingCall().performTag(ctx);
      ctx.applyCalls('Scoot Back Centers to a Wave');  // to 1/4 tag
    }
    super.performCall(ctx);
  }

  @override
  void performPart1(CallContext ctx) {
    if (name.contains('Cross'))
      ctx.applyCalls('Center 6 Cross');
    else
      ctx.applyCalls('Facing Dancers Pass Thru');
  }

  @override
  void performPart2(CallContext ctx) {
    var centerWave = ctx.centerWaveOf4() ??
        thrower<List<Dancer>>('Cannot do Nuclear Reaction from here');
    ctx.subContext(centerWave, (ctx1) {
      ctx1.applyCalls('Cast Off 1/4 and Roll and Slide Out');
    });
    ctx.subContext(ctx.dancers - centerWave, (ctx2) {
      ctx2.applyCalls('Vertical 1/2 Tag');
    });
  }

  @override
  void performPart3(CallContext ctx) {
    ctx.applyCalls('Counter Rotate');
  }

}