/*
 *     Copyright 2021 Brad Christie
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

import '../common.dart';

class BlockFormation extends Action {

  @override final level = LevelData.C1;
  BlockFormation(String name) : super(name);

  //  Match context against block formation
  //  Map dancers of blocks to dancers of corresponding DPT formation
  //    Perform the call on the DPT formatino
  //    Error if call does not end in 2x4 formation
  //    Adjust ending 2x4 formation to size 3x7

  //    If the call has only 1 (or 2?) movements
  //      Scale all movements by x2
  //      Map back to original block
  //    Else
  //      Add initial movements to shift block to small 2x2 in corner of formation
  //      Add call movements
  //      Add ending movements to shift back to block

  @override
  Future<void> perform(CallContext ctx) async {
    final blockCall = name.replaceFirst('In Your Block'.ri, '').trim();
    final ctxBlock = CallContext.fromXML(TamUtils.getFormation('Facing Blocks Right'));
    final blockMatch = ctxBlock.matchFormations(ctx,sexy:false,fuzzy:false,rotate:90,handholds:false);
    final ctxDPT = CallContext.fromXML(
        TamUtils.getFormation('Double Pass Thru for Blocks'));
    if (blockMatch != null) {
      //  Formation dancers set to line up just the way we want
      for (var i=0; i<8; i++) {
        ctxDPT.dancers[i].setStartAngle(
            ctx.dancers[blockMatch[i]].angleFacing
                + ctxBlock.dancers[i].anglePosition
                - ctx.dancers[blockMatch[i]].anglePosition);
        ctxDPT.dancers[i].gender = ctx.dancers[blockMatch[i]].gender;
      }
      await ctxDPT.applyCalls(blockCall);
      ctxDPT.adjustToFormation('Double Pass Thru for Blocks',rotate: 90);
      for (var i=0; i<8; i++) {
        ctx.dancers[blockMatch[i]].path = ctxDPT.dancers[i].path;
        ctx.dancers[blockMatch[i]].path.scale(2.0, 2.0);
      }
    } else
      throw CallError('Dancers are not in blocks.');
  }

}