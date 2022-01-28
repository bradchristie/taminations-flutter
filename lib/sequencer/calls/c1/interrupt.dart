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

import '../common.dart';

class Interrupt extends Action {

  @override final level = LevelData.C1;
  Interrupt(String name) : super(name);

  @override
  Future<void> perform(CallContext ctx) async {

    //  Parse out the call with parts we are interrupting
    final callName = name.replaceFirst('interrupt .+'.ri,'').trim();
    //  Parse out what to interrupt it with
    final interruptName = name.replaceFirst('.+interrupt .+? with a?n?\\b'.ri,'').trim();

    await ctx.subContext(ctx.dancers, (ctx2) async {
      //  Get the call with parts
      if (!ctx2.matchCodedCall(callName))
        throw CallError('Unable to find $callName as a Call with Parts');
      if (ctx2.callstack.last is CallWithParts) {
        final call = ctx2.callstack.last as CallWithParts;
        //  Find out where we are interrupting
        //  Special cases - after/between each part
        if (name.contains('(after|between) (each|every) part'.ri)) {
          for (var i=call.numberOfParts; i>1; i--) {
            //  Insert space between each call
            call.replacePart[i*2-1] = call.replacePart[i] ?? call.performPart(i);
            //  And patch in the interrupting call at each space
            call.replacePart[i*2-2] = (ctx) async {
              await ctx.applyCalls(interruptName);
            };
          }
          call.numberOfParts = call.numberOfParts * 2 - 1;
          //  Add one more if 'after'
          if (name.contains('\\bafter\\b'.ri)) {
            call.replacePart[call.numberOfParts+1] = (ctx) async {
              await ctx.applyCalls(interruptName);
            };
            call.numberOfParts += 1;
          }
        } else {
          //  Otherwise we are interrupting at one specific location
          var partNumber = CallWithParts.partNumberFromCall(call, name);
          if (partNumber == 0)
            throw CallError('Unable to figure out what to Interrupt');
          if (name.contains('\\bafter\\b'.ri))
            partNumber += 1;
          //  Shift all calls after the insertion point
          for (var i = call.replacePart.length - 1; i > partNumber; i--)
            call.replacePart[i] = call.replacePart[i - 1] ?? call.performPart(i - 1);
          //  And patch in the interrupting call
          call.replacePart[partNumber] = (ctx) async {
            await ctx.applyCalls(interruptName);
          };
          call.numberOfParts += 1;
        }
      }
      else
        throw CallError('Can only Interrupt in a call with Parts');

      //  Finally, do the (now modified) call with parts
      await ctx2.performCall();

    });
  }

}